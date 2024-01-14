import os
import click
import pandas as pd
from ai import generate_json
from slacklib import get_real_name
from analysis import get_threads, thread_to_markdown, truncate_strings, analyze_yara, get_thread_summary

@click.command()
@click.option('-f', '--db_file', help='The DB file path.', default="user_messages.db")
@click.option('-u', '--user', help='The user ID.', default=None)
@click.option('-c', '--channel', help='The channel ID.', default=None)
@click.option('-l', '--llm', help='Use LLM.', default=False, type=bool)
@click.option('-s', '--size', help='The size of the thread.', default=0, type=int)
@click.option('-o', '--output_csv', help='The output CSV file path.', default="output.csv")
def main(db_file, output_csv, user, channel, llm, size):
    threads = get_threads(db_file, channel_id=channel, user_id=user)
    real_name = get_real_name(user)
    summary = get_thread_summary(threads)

    markdown = thread_to_markdown(threads, thread_size=size)
    markdown = truncate_strings(markdown, max_tokens=64000)
    markdown = f"{markdown}\n"

    for user_id in summary["ユーザー別総メッセージ数"].keys():
        user_id = user_id.replace("<@", "").replace(">", "")
        yara_match = analyze_yara(threads, user_id)
        markdown += f"## {user_id}について\n* roles: {yara_match['roles']}\n* categories: {yara_match['categories']}\n"

    json_format = """
    {
        "communication_style": "言葉遣い、専門用語の使用頻度、疑問形式の使用など、コミュニケーションスタイルの特徴を分析します。",
        "involved_topics_and_areas": "個人がどのようなトピックや専門領域に関与しているか、またその専門性がどのように表れているかを評価します。",
        "diversity_of_opinions_and_conflict": "特定の個人が多様な意見を持ち、それらをどのように表現しているか、また対立する意見にどう反応しているかを分析します。",
        "impact_on_decisions": "その個人がグループの決定や方向性にどのように影響を与えているかを評価します。",
        "feedback_and_interaction": "他のメンバーからのフィードバックや相互作用のパターンを分析します。",
        "signs_of_cognitive_bias": "確証バイアス（自分の信念を支持する情報だけを選択的に受け入れる）や集団思考（グループ内での意見の一致を優先する）などのバイアスの兆候を探します。"
    }
    """
    system_prompt = f"""あなたは入力されたユーザ<@{user_id}>についてチャットの履歴から認知バイアスの分析と評価を行い、次のフォーマットのjsonレポートを出力します。
    valueは必ず日本語で出力してください。
    {json_format}
    """
    if not llm:
        resp = analyze_yara(threads, user)
        roles = resp["roles"]
        print(real_name, user, roles)
    else:
        resp = generate_json(markdown, system_prompt)
        for key, value in resp.items():
            print(f"{key}: {value}")
        data = {'user_id': [user_id], 'real_name': [real_name], **{k: [v] for k, v in resp.items()}}
        print(data)
        df_new = pd.DataFrame(data)

        if os.path.isfile(output_csv):
            df_old = pd.read_csv(output_csv)
            df_combined = pd.concat([df_old, df_new]).drop_duplicates(subset='user_id', keep='last')
        else:
            df_combined = df_new

        df_combined.to_csv(output_csv, index=False)

if __name__ == "__main__":
    main()
