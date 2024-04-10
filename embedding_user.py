import os
import json
import time
import click
import pandas as pd
from tqdm import tqdm
from tinydb import TinyDB, Query
from slacklib import get_user_info
from analysis import get_messages, calculate_token_size
from embedding import (
    prepare_index,
    get_embedding,
    plot_embeddings,
    EMBEDDING_MODEL_PRICE_PER_TOKEN,
)


@click.command()
@click.option("-f", "--db_file", help="The DB file path.", default="user_messages.db")
@click.option("-u", "--user", help="The user ID.", default=None)
@click.option(
    "-m", "--model", help="embedding model name.", default="text-embedding-3-small"
)
@click.option("-d", "--dry-run", is_flag=True, help="Dry run.")
@click.option("-i", "--pinecone_index", is_flag=True, help="use pinecone index.")
@click.option("-v", "--view", is_flag=True, help="view the message vector.")
@click.option("-b", "--skip_bot", is_flag=True, help="ignore bot messages.")
def main(db_file, user, model, dry_run, pinecone_index, view, skip_bot):
    total_cost = 0
    total_token_size = 0
    embeddings = []
    real_name_cache = {}
    messages = get_messages(db_file, user_id=user, channel_id=None)
    db = TinyDB(db_file)
    Message = Query()
    index = prepare_index("slack-messages")
    for message in tqdm(messages):
        if skip_bot and "bot_id" in message:
            continue
        ts = message["ts"]
        embedding = message.get("embedding")
        if embedding is None:
            text = message["text"].strip()
            # embed the message
            if not dry_run and text:
                embedding = get_embedding(text, model)
                db.update({"embedding": embedding}, Message.ts == ts)

            # calculate the token size
            token_size = calculate_token_size(text)
            total_token_size += token_size
            total_cost += (token_size / 1000) * EMBEDDING_MODEL_PRICE_PER_TOKEN[model]

        # view embeddings
        if embedding is not None and view:
            user_id = message["user"]
            if real_name_cache.get(user_id) is None:
                user_info = get_user_info(user_id)
                if user_info["user"]["deleted"]:
                    real_name_cache[user_id] = "deleted user"
                else:
                    real_name_cache[user_id] = user_info["user"]["profile"]["real_name"]
            real_name = real_name_cache[user_id]
            embeddings.append({"user": real_name, "values": embedding})

        # upsert the message to pinecone
        if embedding is not None and pinecone_index:
            res = index.upsert(
                vectors=[
                    {
                        "id": ts,
                        "values": embedding,
                        "metadata": {"created_at": ts},
                    }
                ],
            )
    if view:
        plot_embeddings(embeddings)

    print(f"Total token size: {total_token_size}")
    print(f"Total cost: {round(total_cost, 4)} USD")


if __name__ == "__main__":
    main()
