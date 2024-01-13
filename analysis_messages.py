import sys
from analysis import get_thread_summary, get_threads, thread_to_markdown, truncate_strings, analyze_yara
from ai import generate_json


threads = get_threads(sys.argv[1])

summary = get_thread_summary(threads)
markdown = thread_to_markdown(threads)
markdown = truncate_strings(markdown, max_tokens=64000)

for key, value in summary.items():
    markdown += f"{key}: {value}\n"

for user_id in summary["ユーザー別総メッセージ数"].keys():
    yara_match = analyze_yara(threads, user_id)
    markdown += f"## {user_id}について\n"
    for key, value in yara_match.items():
        markdown += f"* {key}: {value}\n"

system_prompt = """あなたは入力されたチャットの履歴について認知バイアスの分析と評価を行い、次のフォーマットのjsonレポートを出力します。

{
    "response_time": "各メンバーがメッセージに応答するまでの時間に関する分析結果を記入します。",
    "message_clarity": "メッセージがどれだけ明確かどうかを記入します。",
    "participation_balance": "すべてのメンバーが議論に均等に参加しているかどうかを記入します。",
    "opinion_diversity": "チームメンバーの意見の多様性を記入します。",
    "decision_making_transparency": "決定がどのようにして行われているかを記入します。",
    "quality_and_quantity_of_feedback": "チームメンバーが互いにどの程度助言やフィードバックを提供しているかを記入します。",
    "summary": "総評を記入します。"
}
"""
resp = generate_json(markdown, system_prompt)
for key, value in resp.items():
    print(f"{key}: {value}")
