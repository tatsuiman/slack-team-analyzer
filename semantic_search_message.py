import os
import os
import click
from embedding import prepare_index, get_embedding
from analysis import get_messages
from slacklib import get_real_name


@click.command()
@click.option("-f", "--db_file", help="The DB file path.", default="user_messages.db")
@click.option(
    "-m", "--model", help="embedding model name.", default="text-embedding-3-small"
)
@click.option("-q", "--query", help="The query.", default=None)
def main(db_file, model, query):
    index = prepare_index("slack-messages")
    # 質問内容
    xq = get_embedding(query, model)
    # 質問内容に関連した上位３件の類似した内容のスレッドを検索します
    res = index.query(vector=[xq], top_k=3, include_metadata=True)
    for match in res["matches"]:
        for message in get_messages(db_file, ts=match["id"]):
            user = message["user"]
            real_name = get_real_name(user)
            print(
                f"score: {match['score']:.2f}, user: {real_name}, text: {message['text']}"
            )


if __name__ == "__main__":
    main()
