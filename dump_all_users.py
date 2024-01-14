import os
from slack_sdk import WebClient
from dump_user import dump, list_users

days = 30
dump_file = f"user_messages.db"
for user in list_users()['members']:
    # botと削除されたユーザはスキップ
    if user["deleted"] or user["is_bot"] or user["id"] == "USLACKBOT":
        continue
    user_id = f"<@{user['id']}>"
    real_name = user["real_name"]
    try:
        dump(user_id, real_name, days, dump_file)
    except Exception as e:
        print(f"Error: {user_id} {real_name}")
        print(e)
