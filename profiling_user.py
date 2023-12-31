import sys
from analysis import get_threads, thread_to_markdown
from ai import generate_json

threads = get_threads(sys.argv[1])
markdown = thread_to_markdown(threads)
system_prompt = """あなたは入力されたチャットの履歴について認知バイアスの分析と評価を行い、次のフォーマットのjsonレポートを出力します。
valueは必ず日本語で出力してください。

{
    "communication_style": "言葉遣い、専門用語の使用頻度、疑問形式の使用など、コミュニケーションスタイルの特徴を分析します。",
    "involved_topics_and_areas": "個人がどのようなトピックや専門領域に関与しているか、またその専門性がどのように表れているかを評価します。",
    "diversity_of_opinions_and_conflict": "特定の個人が多様な意見を持ち、それらをどのように表現しているか、また対立する意見にどう反応しているかを分析します。",
    "impact_on_decisions": "その個人がグループの決定や方向性にどのように影響を与えているかを評価します。",
    "feedback_and_interaction": "他のメンバーからのフィードバックや相互作用のパターンを分析します。",
    "signs_of_cognitive_bias": "確証バイアス（自分の信念を支持する情報だけを選択的に受け入れる）や集団思考（グループ内での意見の一致を優先する）などのバイアスの兆候を探します。"
}
"""
resp = generate_json(markdown, system_prompt)
for key, value in resp.items():
    print(f"{key}: {value}")
