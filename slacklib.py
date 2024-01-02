import os
from slack_sdk import WebClient

# Slackクライアントの初期化
def get_real_name(user_id):
    slack_token = os.getenv("SLACK_BOT_TOKEN")
    client = WebClient(token=slack_token)
    return client.users_info(user=user_id)['user']['real_name']
