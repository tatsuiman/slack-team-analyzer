import os
import sys
import json
from slack_sdk import WebClient
from slack_sdk.errors import SlackApiError
from datetime import datetime, timedelta

# SlackのトークンとチャンネルIDを設定
slack_token = os.getenv("SLACK_BOT_TOKEN")
channel_id = sys.argv[1]

# Slackクライアントの初期化
client = WebClient(token=slack_token)

def fetch_all_messages(channel_id):
    messages = []
    try:
        # 初回のAPI呼び出し
        response = client.conversations_history(channel=channel_id, oldest=(datetime.now() - timedelta(days=90)).timestamp())
        messages.extend(response['messages'])

        # ページネーションを使用して残りのメッセージを取得
        while response["has_more"]:
            cursor = response['response_metadata']['next_cursor']
            response = client.conversations_history(channel=channel_id, cursor=cursor, oldest=(datetime.now() - timedelta(days=90)).timestamp())
            messages.extend(response['messages'])

        return messages
    except SlackApiError as e:
        print(f"Error fetching conversations: {e}")

# すべてのメッセージを取得
all_messages = fetch_all_messages(channel_id)

dump_file = "channel_messages.jsonl"

with open(dump_file, "w") as f:
    for message in all_messages:
        if message["type"] != "message":
            continue
        f.write(f"{json.dumps(message, ensure_ascii=False)}\n")

        # リプライメッセージも取得
        if message.get('reply_count', 0) > 0:
            reply_messages = client.conversations_replies(channel=channel_id, ts=message['ts'], oldest=(datetime.now() - timedelta(days=90)).timestamp())["messages"]
            for reply_message in reply_messages:
                f.write(f"{json.dumps(reply_message, ensure_ascii=False)}\n")

