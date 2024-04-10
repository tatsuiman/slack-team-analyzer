import os
from slack_sdk import WebClient

slack_token = os.getenv("SLACK_BOT_TOKEN")
# Slackクライアントの初期化
client = WebClient(token=slack_token)


def get_user_info(user_id):
    user_info = client.users_info(user=user_id)
    return user_info


def get_real_name(user_id):
    user_info = get_user_info(user_id)
    return user_info["user"]["real_name"]


def list_users():
    return client.users_list()
