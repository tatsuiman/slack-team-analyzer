import os
import re
import sys
import json
import retry
from tqdm import tqdm
from tinydb import TinyDB, Query
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

def check_messages(matches, oldest):
    messages = []
    for message in matches:
        if (
            message["type"] == "message"
            and message["channel"]["is_private"] == False
            and message["channel"]["is_mpim"] == False
            and message["channel"]["is_group"] == False
            and message["channel"]["is_im"] == False
            and float(message['ts']) > oldest
        ):
            messages.append(message)
    return messages


@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def _fetch_user_messages(user_id, page=1):
    return client.search_messages(query=f"from:{user_id}", count=100, page=page, sort="timestamp", sort_dir="desc", highlight=False)

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_user_messages(user_id, oldest):
    messages = []
    # 初回のAPI呼び出し
    response = _fetch_user_messages(user_id)
    matches = response["messages"]["matches"]
    matches = check_messages(matches, oldest)
    if len(matches) == 0:
        return messages
    messages.extend(matches)
    total_pages = response["messages"]["paging"]["pages"]
    # ページネーションを使用して残りのメッセージを取得
    with tqdm(total=total_pages-1) as pbar:
        for current_page in range(2, total_pages + 1):
            response = _fetch_user_messages(user_id, page=current_page)
            matches = response["messages"]["matches"]
            matches = check_messages(matches, oldest)
            if len(matches) == 0:
                pbar.update(total_pages - current_page + 1)
                break
            messages.extend(matches)
            pbar.update()

    return messages

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_replies(channel_id, thread_ts):
    return client.conversations_replies(channel=channel_id, ts=thread_ts)["messages"]


def get_last_dump_ts(days):
    dump_log = 'last_dump_ts'
    try:
        with open(dump_log, 'r') as f:
            last_dump = float(f.read())
    except FileNotFoundError:
        last_dump = (datetime.now() - timedelta(days=days)).timestamp()

    with open(dump_log, 'w') as f:
        f.write(str(datetime.now().timestamp()))
    return last_dump


def dump(user_id, real_name, last_dump, dump_file):
    db = TinyDB(dump_file)
    Thread = Query()
    # すべてのメッセージを取得
    last_date = datetime.fromtimestamp(last_dump).isoformat()
    print(f"ユーザ({real_name})に関連した {last_date} 以降のスレッド一覧を取得しています。")
    all_messages = fetch_user_messages(user_id, last_dump)
    message_len = len(all_messages)

    print("スレッドのメッセージを取得しています。")
    for message in tqdm(all_messages, total=message_len):
        url = message['permalink']
        channel_id, thread_ts = parse_thread_url(url)
        message["thread_ts"] = thread_ts
        message["channel_id"] = channel_id
        message["thread_users"] = [message["user"]]
        ts = message["ts"]
        try:
            reply_messages = fetch_replies(channel_id, thread_ts)
        except SlackApiError as e:
            if e.response["error"] == 'thread_not_found':
                db.upsert(message, Thread.ts == ts)
                continue
            elif e.response["error"] == 'ratelimited':
                print("Rate limit exceeded. Exiting.")
                sys.exit(1)
            else:
                raise e

        thread_users = []
        for reply_message in reply_messages:
            thread_users.append(reply_message["user"])
            thread_users = list(set(thread_users))

        for reply_message in reply_messages:
            reply_message["thread_ts"] = thread_ts
            reply_message["channel_id"] = channel_id
            reply_message["thread_users"] = thread_users
            db.upsert(reply_message, Thread.ts == reply_message["ts"])

if __name__ == "__main__":
    days = 30
    user = sys.argv[1]
    user_id = f"<@{user}>"
    real_name = get_real_name(user)
    dump_file = f"user_messages.db"
    last_dump = (datetime.now() - timedelta(days=days)).timestamp()
    dump(user_id, real_name, last_dump, dump_file)