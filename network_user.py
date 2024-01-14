import sys
import click
from graphviz import Digraph
from slacklib import get_real_name
from analysis import get_messages


@click.command()
@click.option('-f', '--db_file', help='The DB file path.', default="user_messages.db")
@click.option('-u', '--user', help='The user ID.', default=None)
@click.option('-c', '--channel', help='The channel ID.', default=None)
def main(db_file, user, channel):
    # Initialize a dictionary to store user interactions
    user_interactions = {}
    messages = get_messages(db_file, channel_id=channel, user_id=user)
    for message in messages:
        # Get the user who sent the message
        user = message['user']

        # Update the user interactions
        for thread_user in message['thread_users']:
            # Ignore self-replies
            if user == thread_user:
                continue

            # Initialize the interaction count if not already present
            if user not in user_interactions:
                user_interactions[user] = {}

            # Increment the interaction count with each reply user
            user_interactions[user][thread_user] = user_interactions[user].get(thread_user, 0) + 1

    # Create a directed graph using Graphviz
    G = Digraph(comment='Human Relationship Graph in Slack Channel', format='png')

    # Add nodes and edges to the graph
    real_name_cache = {}
    for user, interactions in user_interactions.items():
        if user not in real_name_cache:
            real_name_cache[user] = get_real_name(user)
        real_user = real_name_cache[user]
        G.node(real_user)
        for target_user, count in interactions.items():
            if target_user not in real_name_cache:
                real_name_cache[target_user] = get_real_name(target_user)
            real_target_user = real_name_cache[target_user]
            G.edge(real_user, real_target_user, label=str(count))

    # Render the graph to a file (e.g., PDF, PNG)
    G.render('/tmp/user_interactions_graph', view=True)

if __name__ == "__main__":
    main()

