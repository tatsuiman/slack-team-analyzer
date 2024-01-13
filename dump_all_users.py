import os
from slack_sdk import WebClient
from dump_user import dump, list_users

days = 30
for user in list_users()['members']:
    # botと削除されたユーザはスキップ
    if user["deleted"] or user["is_bot"] or user["id"] == "USLACKBOT":
        continue
    user_id = f"<@{user['id']}>"
    real_name = user["real_name"]
    thread_ts_cache = set()
    dump_file = f"user_{user['id']}_messages.jsonl"
    dump(user_id, real_name, days, dump_file)
