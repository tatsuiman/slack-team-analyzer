import os
import re
import sys
import json
from slack_sdk import WebClient
from slack_sdk.errors import SlackApiError

# SlackのトークンとユーザIDを設定
slack_token = os.getenv("SLACK_USER_TOKEN")
user_id = f"<@{sys.argv[1]}>"

# Slackクライアントの初期化
client = WebClient(token=slack_token)

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

def fetch_all_messages(user_id):
    messages = []
    try:
        # 初回のAPI呼び出し
        response = client.search_messages(query=f"from:{user_id}", count=100)
        messages.extend(response['messages']['matches'])

        # ページネーションを使用して残りのメッセージを取得
        while response["messages"]["paging"]["pages"] > response["messages"]["paging"]["page"]:
            response = client.search_messages(query=f"from:{user_id}", page=response["messages"]["paging"]["page"] + 1, count=100)
            messages.extend(response['messages']['matches'])

        return messages
    except SlackApiError as e:
        print(f"Error fetching conversations: {e}")

# すべてのメッセージを取得
all_messages = fetch_all_messages(user_id)

dump_file = "user_messages.jsonl"

with open(dump_file, "w") as f:
    for message in all_messages:
        if message["type"] != "message" or message['channel']['name'] in ['group', 'im', 'mpim']:
            continue
        url = message['permalink']
        channel_id, thread_ts = parse_thread_url(url)
        try:
            reply_messages = client.conversations_replies(channel=message['channel']['id'], ts=thread_ts)["messages"]
        except SlackApiError as e:
            if e.response["error"] == 'thread_not_found':
                f.write(f"{json.dumps(message, ensure_ascii=False)}\n")
                continue
            else:
                raise e
        for reply_message in reply_messages:
            f.write(f"{json.dumps(reply_message, ensure_ascii=False)}\n")