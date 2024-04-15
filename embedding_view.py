import os
import json
import time
import click
from tqdm import tqdm
from slacklib import get_user_info
from analysis import get_messages
from embedding import plot_embeddings


@click.command()
@click.option("-f", "--db_file", help="The DB file path.", default="user_messages.db")
@click.option("-u", "--user", help="The user ID.", default=None)
@click.option("-b", "--skip_bot", is_flag=True, help="ignore bot messages.")
def main(db_file, user, skip_bot):
    total_cost = 0
    total_token_size = 0
    embeddings = []
    real_name_cache = {}
    messages = get_messages(db_file, user_id=user, channel_id=None)
    for message in tqdm(messages):
        if skip_bot and "bot_id" in message:
            continue
        embedding = message.get("embedding")
        # view embeddings
        if embedding is not None:
            user_id = message["user"]
            if real_name_cache.get(user_id) is None:
                user_info = get_user_info(user_id)
                if user_info["user"]["deleted"]:
                    real_name_cache[user_id] = "deleted user"
                else:
                    real_name_cache[user_id] = user_info["user"]["profile"]["real_name"]
            real_name = real_name_cache[user_id]
            embeddings.append({"user": real_name, "values": embedding})

    plot_embeddings(embeddings)

    print(f"Total token size: {total_token_size}")
    print(f"Total cost: {round(total_cost, 4)} USD")


if __name__ == "__main__":
    main()
