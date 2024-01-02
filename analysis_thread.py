import re
import os
import sys
from slack_sdk import WebClient
from analysis import get_message_summary, thread_to_markdown
from ai import generate_json

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

channel_id, thread_ts = parse_thread_url(sys.argv[1])

# SlackのトークンとチャンネルIDを設定
slack_token = os.getenv("SLACK_BOT_TOKEN")
# Slackクライアントの初期化
client = WebClient(token=slack_token)
messages = client.conversations_replies(channel=channel_id, ts=thread_ts)["messages"]

threads = {}
for message in messages:
    thread_ts = message.get('thread_ts', None)
    if thread_ts:
        if thread_ts not in threads:
            threads[thread_ts] = []
        threads[thread_ts].append(message)

summary = get_message_summary(messages)
markdown = thread_to_markdown(threads)

for key, value in summary.items():
    text = f"{key}: {value}"
    markdown += f"\n{text}"
    print(text)

system_prompt = """あなたは入力されたチャットの履歴について認知バイアスの分析と評価を行い、次のフォーマットのjsonレポートを出力します。

{
    "response_time": "各メンバーがメッセージに応答するまでの時間に関する分析結果を記入します。",
    "message_clarity": "メッセージがどれだけ明確かどうかを記入します。",
    "participation_balance": "すべてのメンバーが議論に均等に参加しているかどうかを記入します。",
    "opinion_diversity": "チームメンバーの意見の多様性を記入します。",
    "decision_making_transparency": "決定がどのようにして行われているかを記入します。",
    "quality_and_quantity_of_feedback": "チームメンバーが互いにどの程度助言やフィードバックを提供しているかを記入します。",
    "summary": "総評を記入します。"
}
"""
resp = generate_json(markdown, system_prompt)
for key, value in resp.items():
    print(f"{key}: {value}")
