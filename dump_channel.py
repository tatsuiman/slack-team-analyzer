import os
import sys
import json
import retry
import tqdm
from slack_sdk import WebClient
from slack_sdk.errors import SlackApiError
from datetime import datetime, timedelta

# SlackのトークンとチャンネルIDを設定
slack_token = os.getenv("SLACK_BOT_TOKEN")
channel_id = sys.argv[1]
dump_file = f"channel_{channel_id}_messages.jsonl"
days = 30

# Slackクライアントの初期化
client = WebClient(token=slack_token)

def check_messages(matches, days):
    messages = []
    for message in matches:
        if (
            message["type"] == "message"
            and float(message['ts']) > (datetime.now() - timedelta(days=days)).timestamp()
        ):
            messages.append(message)
    return messages

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_channel_messages(channel_id, days):
    messages = []
    # 初回のAPI呼び出し
    response = client.conversations_history(channel=channel_id, oldest=(datetime.now() - timedelta(days=days)).timestamp())
    messages.extend(check_messages(response['messages'], days))

    # ページネーションを使用して残りのメッセージを取得
    while response["has_more"]:
        cursor = response['response_metadata']['next_cursor']
        response = client.conversations_history(channel=channel_id, cursor=cursor, oldest=(datetime.now() - timedelta(days=days)).timestamp())
        messages.extend(check_messages(response['messages'], days))

    return messages

@retry.retry(SlackApiError, tries=3, delay=60, backoff=2)
def fetch_replies(channel_id, thread_ts):
    return client.conversations_replies(channel=channel_id, ts=thread_ts)["messages"]

print(f"過去{days}日のチャンネル内スレッド一覧を取得しています。")
all_messages = fetch_channel_messages(channel_id, days)
message_len = len(all_messages)

print("スレッドのメッセージを取得しています。")
with open(dump_file, "w") as f:
    for message in tqdm.tqdm(all_messages, total=message_len):
        # リプライメッセージも取得
        if message.get('reply_count', 0) > 0:
            try:
                reply_messages = fetch_replies(channel_id, message['ts'])
                for reply_message in reply_messages:
                    f.write(f"{json.dumps(reply_message, ensure_ascii=False)}\n")
            except SlackApiError as e:
                if e.response["error"] == 'thread_not_found':
                    f.write(f"{json.dumps(message, ensure_ascii=False)}\n")
                    continue
                elif e.response["error"] == 'ratelimited':
                    print("Rate limit exceeded. Exiting.")
                    sys.exit(1)
                else:
                    raise e
        else:
            f.write(f"{json.dumps(message, ensure_ascii=False)}\n")