import os
import re
import sys
import json
import retry
from tqdm import tqdm
from datetime import datetime, timedelta
from slack_sdk import WebClient
from slack_sdk.errors import SlackApiError
from slacklib import get_real_name

# SlackのトークンとユーザIDを設定
slack_token = os.getenv("SLACK_USER_TOKEN")
# Slackクライアントの初期化
client = WebClient(token=slack_token)

def list_users():
    return client.users_list()

def parse_thread_url(url):
    url_pattern = r"slack\.com/archives/([A-Z0-9]+)/p(\d{10})(\d{6})\?thread_ts=(\d+\.\d+)"
    matches = re.search(url_pattern, url)
    channel_id = None
    thread_ts = None
    if matches:
        channel_id = matches[1]
        thread_ts = matches[4]
    else:
        url_pattern = r"slack\.com/archives/([A-Z0-9]+)/p(\d{10})(\d{6})"
        matches = re.search(url_pattern, url)
        if matches:
            thread_ts = matches[2] + "." + matches[3]
            channel_id = matches[1]
    return channel_id, thread_ts

def check_messages(matches, days):
    messages = []
    for message in matches:
        if (
            message["type"] == "message"
            and message["channel"]["is_private"] == False
            and message["channel"]["is_mpim"] == False
            and message["channel"]["is_group"] == False
            and message["channel"]["is_im"] == False
            and float(message['ts']) > (datetime.now() - timedelta(days=days)).timestamp()
        ):
            messages.append(message)
    return messages

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_user_messages(user_id, days):
    messages = []
    # 初回のAPI呼び出し
    response = client.search_messages(query=f"from:{user_id}", count=100, oldest=(datetime.now() - timedelta(days=days)).timestamp())
    matches = response["messages"]["matches"]
    if len(matches) == 0:
        return messages
    messages.extend(check_messages(matches, days))
    # ページネーションを使用して残りのメッセージを取得
    while response["messages"]["paging"]["pages"] > response["messages"]["paging"]["page"]:
        response = client.search_messages(query=f"from:{user_id}", page=response["messages"]["paging"]["page"] + 1, count=100, oldest=(datetime.now() - timedelta(days=days)).timestamp())
        matches = response["messages"]["matches"]
        if len(matches) == 0:
            break
        messages.extend(check_messages(matches, days))

    return messages

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_replies(channel_id, thread_ts):
    return client.conversations_replies(channel=channel_id, ts=thread_ts)["messages"]

def dump(user_id, real_name, days, dump_file):
    thread_ts_cache = set()
    # すべてのメッセージを取得
    print(f"ユーザ({real_name})に関連した過去{days}日以内のスレッド一覧を取得しています。")
    all_messages = fetch_user_messages(user_id, days)
    message_len = len(all_messages)

    print("スレッドのメッセージを取得しています。")
    with open(dump_file, "w") as f:
        for message in tqdm(all_messages, total=message_len):
            url = message['permalink']
            channel_id, thread_ts = parse_thread_url(url)
            if thread_ts in thread_ts_cache:
                continue
            else:
                thread_ts_cache.add(thread_ts)
            try:
                reply_messages = fetch_replies(message['channel']['id'], thread_ts)
            except SlackApiError as e:
                if e.response["error"] == 'thread_not_found':
                    f.write(f"{json.dumps(message, ensure_ascii=False)}\n")
                    continue
                elif e.response["error"] == 'ratelimited':
                    print("Rate limit exceeded. Exiting.")
                    sys.exit(1)
                else:
                    raise e
            for reply_message in reply_messages:
                f.write(f"{json.dumps(reply_message, ensure_ascii=False)}\n")

if __name__ == "__main__":
    days = 30
    user = sys.argv[1]
    user_id = f"<@{user}>"
    real_name = get_real_name(user)
    dump_file = f"user_{user}_messages.jsonl"
    dump(user_id, real_name, days, dump_file)