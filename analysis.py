import json
import html
import yara
import tiktoken
import pandas as pd
from tinydb import TinyDB, Query
from datetime import datetime

# Function to parse timestamp
def parse_timestamp(ts):
    return datetime.fromtimestamp(float(ts))

def analyze_yara(threads, user_id=None, rules_file='rules/index.yar'):
    # yara ルールを事前にコンパイル
    rules = yara.compile(filepath=rules_file)
    rule_counts = {}
    role_counts = {}
    category_counts = {}
    for thread_ts, thread_messages in threads.items():
        if not thread_messages:
            continue
        df = pd.DataFrame(thread_messages)
        df['ts'] = df['ts'].apply(lambda x: datetime.fromtimestamp(float(x)))
        if 'user' in df.columns:
            if user_id is not None:
                df = df[df['user'] == user_id]
            df['text'] = df['text'].apply(lambda x: html.unescape(x))
            # yaraの結果を格納する新しい列を作成
            df['yara_matches'] = df['text'].apply(lambda x: rules.match(data=x))
            # マッチしたルールの種類と頻度をカウント
            for matches in df['yara_matches']:
                for match in matches:
                    rule_name = match.rule
                    if rule_name in rule_counts:
                        rule_counts[rule_name] += 1
                    else:
                        rule_counts[rule_name] = 1
                    # マッチしたルールのメタデータから役割とカテゴリをカウント
                    role = match.meta['role']
                    category = match.meta['category']
                    if role in role_counts:
                        role_counts[role] += 1
                    else:
                        role_counts[role] = 1
                    if category in category_counts:
                        category_counts[category] += 1
                    else:
                        category_counts[category] = 1
    # TOP5の役割とカテゴリを返す
    top_roles = sorted(role_counts, key=role_counts.get, reverse=True)[:5]
    top_categories = sorted(category_counts, key=category_counts.get, reverse=True)[:5]
    return {"role": top_roles, "categories": top_categories}

def analyze_thread(thread_messages):
    if not thread_messages:
        return None

    # Convert messages to DataFrame
    df = pd.DataFrame(thread_messages)
    df['ts'] = df['ts'].apply(lambda x: datetime.fromtimestamp(float(x)))

    # Initialize dictionaries for message counts and response times
    if 'user' in df.columns:
        df['user'] = df['user'].apply(lambda x: f"<@{x}>")
        user_message_counts = df['user'].value_counts().to_dict()
    else:
        return {
            'user_message_counts': {},
            'avg_response_times': {},
            'conversation_duration': 0,
            'total_messages': 0
        }
    response_times = {}

    # Iterate over messages
    for i, msg in df.iterrows():
        user = msg['user'] if 'user' in msg else None
        msg_time = msg['ts']

        # Find the next message by a different user
        for j in range(i+1, len(df)):
            next_msg = df.iloc[j]
            next_user = next_msg['user'] if 'user' in next_msg else None
            next_msg_time = next_msg['ts']

            if user != next_user:
                # Calculate response time
                time_diff = (next_msg_time - msg_time).total_seconds() / 60

                # Update response times in both directions
                if user and next_user:
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


def thread_to_markdown(threads, thread_size=20):
    threads_formatted = ""
    # Format the messages in Markdown style
    for thread_ts, messages in threads.items():
        # 短いスレッドはバイアスが特定できないのでスキップ
        if len(messages) < thread_size:
            continue
        threads_formatted += f"## thread_ts: {thread_ts}\n"
        for msg in messages:
            user = msg.get('user', '')
            text = html.unescape(msg.get('text', ''))
            ts = msg.get('ts', '')
            time = datetime.fromtimestamp(float(ts)).strftime('%m/%d %H:%M:%S')
            threads_formatted += f"- [{time}] <@{user}>\n{text}\n"

    return threads_formatted


def get_threads(file_path, user_id=None, channel_id=None):
    threads = {}
    messages = get_messages(file_path, user_id, channel_id)

    for message in messages:
        thread_ts = message['thread_ts']
        if thread_ts not in threads:
            threads[thread_ts] = []
        threads[thread_ts].append(message)

    return threads

def get_messages(file_path, user_id=None, channel_id=None):
    db = TinyDB(file_path)
    Message = Query()

    if user_id and channel_id:
        messages = db.search((Message.thread_users.any(user_id)) & (Message.channel_id == channel_id))
    elif user_id:
        messages = db.search(Message.thread_users.any(user_id))
    elif channel_id:
        messages = db.search(Message.channel_id == channel_id)
    else:
        messages = db.all()

    return messages

def truncate_strings(text, max_tokens=64000):
    enc = tiktoken.encoding_for_model("gpt-4")
    encode_strings = enc.encode(text, allowed_special="all")
    encode_strings = encode_strings[:max_tokens]
    return enc.decode(encode_strings)