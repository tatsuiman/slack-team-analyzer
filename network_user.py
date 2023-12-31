import os

import json
import sys
from slack_sdk import WebClient
from graphviz import Digraph

# Load the data from the JSONL file
file_path = sys.argv[1]
# Initialize a dictionary to store user interactions
user_interactions = {}

# Slackクライアントの初期化
def get_real_name(user_id):
    slack_token = os.getenv("SLACK_BOT_TOKEN")
    client = WebClient(token=slack_token)
    return client.users_info(user=user_id)['user']['real_name']

# Process each line in the JSONL file
with open(file_path, 'r') as file:
    for line in file:
        # Parse the JSON line
        message = json.loads(line)

        # Check if 'reply_users' field is not empty
        if 'reply_users' in message and message['reply_users']:
            # Get the user who sent the message
            user = message['user']

            # Update the user interactions
            for reply_user in message['reply_users']:
                # Ignore self-replies
                if user == reply_user:
                    continue

                # Initialize the interaction count if not already present
                if user not in user_interactions:
                    user_interactions[user] = {}

                # Increment the interaction count with each reply user
                user_interactions[user][reply_user] = user_interactions[user].get(reply_user, 0) + 1

# Create a directed graph using Graphviz
G = Digraph(comment='Human Relationship Graph in Slack Channel', format='png')

# Add nodes and edges to the graph
for user, interactions in user_interactions.items():
    G.node(user)
    for target_user, count in interactions.items():
        real_user = get_real_name(user)
        real_target_user = get_real_name(target_user)
        G.edge(real_user, real_target_user, label=str(count))

# Render the graph to a file (e.g., PDF, PNG)
G.render('/tmp/user_interactions_graph', view=True)