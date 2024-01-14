import os
import click
import pandas as pd
import time
from slacklib import list_users
from analysis import get_threads, analyze_yara

@click.command()
@click.option('-f', '--db_file', help='The DB file path.', default="user_messages.db")
def main(db_file):
    threads = get_threads(db_file)
    for user in list_users()['members']:
        # botと削除されたユーザはスキップ
        if user["deleted"] or user["is_bot"] or user["id"] == "USLACKBOT":
            continue
        user_id = user['id']
        real_name = user["real_name"]
        resp = analyze_yara(threads, user_id)
        roles = resp["roles"]
        print(real_name, user_id, roles)
        time.sleep(3)

if __name__ == "__main__":
    main()