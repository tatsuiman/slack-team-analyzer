import json
import html
import pandas as pd
from datetime import datetime

# Function to parse timestamp
def parse_timestamp(ts):
    return datetime.fromtimestamp(float(ts))

def analyze_thread(thread_messages):
    if not thread_messages:
        return None

    # Convert messages to DataFrame
    df = pd.DataFrame(thread_messages)
    df['ts'] = df['ts'].apply(lambda x: datetime.fromtimestamp(float(x)))

    # Initialize dictionaries for message counts and response times
    df['user'] = df['user'].apply(lambda x: f"<@{x}>")
    user_message_counts = df['user'].value_counts().to_dict()
    response_times = {}

    # Iterate over messages
    for i, msg in df.iterrows():
        user = msg['user']
        msg_time = msg['ts']

        # Find the next message by a different user
        for j in range(i+1, len(df)):
            next_msg = df.iloc[j]
            next_user = next_msg['user']
            next_msg_time = next_msg['ts']

            if user != next_user:
                # Calculate response time
                time_diff = (next_msg_time - msg_time).total_seconds() / 60

                # Update response times in both directions
                response_times.setdefault(f'{user} -> {next_user}', []).append(time_diff)
                break

    # Calculate average response times for each user pair
    avg_response_times = {k: sum(v) / len(v) for k, v in response_times.items() if v}

    # Calculate total conversation duration and message count
    conversation_duration = (df['ts'].max() - df['ts'].min()).total_seconds() / 3600
    total_messages = len(df)

    return {
        'user_message_counts': user_message_counts,
        'avg_response_times': avg_response_times,
        'conversation_duration': conversation_duration,
        'total_messages': total_messages
    }

def get_thread_summary(threads):
    # Analyzing each thread and calculating averages
    total_user_message_counts = {}
    total_avg_response_times = {}
    total_conversation_duration = 0
    total_message_count = 0
    thread_count = len(threads)

    for thread_ts, messages in threads.items():
        analysis = analyze_thread(messages)

        if analysis:
            for user, count in analysis['user_message_counts'].items():
                total_user_message_counts[user] = total_user_message_counts.get(user, 0) + count
            
            for user, avg_time in analysis['avg_response_times'].items():
                if user not in total_avg_response_times:
                    total_avg_response_times[user] = []
                total_avg_response_times[user].append(avg_time)

            total_conversation_duration += analysis['conversation_duration']
            total_message_count += analysis['total_messages']

    # Averaging the response times
    for user in total_avg_response_times.keys():
        total_avg_response_times[user] = sum(total_avg_response_times[user]) / len(total_avg_response_times[user])

    # Averaging the conversation duration
    average_conversation_duration = total_conversation_duration / thread_count if thread_count else 0

    # Summary of the analysis
    summary = {
        "ユーザー別総メッセージ数": total_user_message_counts,
        "ユーザー別の平均応答時間（分）": total_avg_response_times,
        "会話の総期間（時間）": average_conversation_duration,
        "総メッセージ数": total_message_count,
        "総スレッド数": thread_count
    }
    return summary

def get_message_summary(messages):
    # Analyzing each thread and calculating averages
    total_user_message_counts = {}
    total_avg_response_times = {}
    total_conversation_duration = 0
    total_message_count = 0

    analysis = analyze_thread(messages)

    if analysis:
        for user, count in analysis['user_message_counts'].items():
            total_user_message_counts[user] = total_user_message_counts.get(user, 0) + count
        
        for user, avg_time in analysis['avg_response_times'].items():
            if user not in total_avg_response_times:
                total_avg_response_times[user] = []
            total_avg_response_times[user].append(avg_time)

        total_conversation_duration += analysis['conversation_duration']
        total_message_count += analysis['total_messages']

    # Averaging the response times
    for user in total_avg_response_times.keys():
        total_avg_response_times[user] = sum(total_avg_response_times[user]) / len(total_avg_response_times[user])

    # Summary of the analysis
    summary = {
        "ユーザー別総メッセージ数": total_user_message_counts,
        "ユーザー別の平均応答時間（分）": total_avg_response_times,
        "会話の総期間（時間）": total_conversation_duration,
        "総メッセージ数": total_message_count,
    }
    return summary


def thread_to_markdown(threads):
    threads_formatted = ""
    # Format the messages in Markdown style
    for thread_ts, messages in threads.items():
        threads_formatted += f"## thread_ts: {thread_ts}\n"
        for msg in messages:
            user = msg.get('user', '')
            text = html.unescape(msg.get('text', ''))
            ts = msg.get('ts', '')
            time = datetime.fromtimestamp(float(ts)).strftime('%m/%d %H:%M:%S')
            threads_formatted += f"- [{time}] <@{user}>\n{text}\n"

    return threads_formatted


def get_threads(file_path):
    threads = {}
    with open(file_path, 'r') as file:
        for line in file:
            message = json.loads(line)
            thread_ts = message.get('thread_ts', None)

            if thread_ts:
                if thread_ts not in threads:
                    threads[thread_ts] = []
                threads[thread_ts].append(message)
    return threads
