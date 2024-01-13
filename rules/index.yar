rule StrategicPlanning {
    meta:
        category = "経営戦略"
        role = "CEO"
    strings:
        $a = "戦略計画"
        $b = "長期ビジョン"
        $c = "事業戦略"
    condition:
        any of them
}

rule MarketTrends {
    meta:
        category = "市場動向"
        role = "CEO"
    strings:
        $a = "市場動向"
        $b = "業界トレンド"
        $c = "競争分析"
    condition:
        any of them
}

rule FinancialPerformance {
    meta:
        category = "財務成績"
        role = "CEO"
    strings:
        $a = "財務成績"
        $b = "収益報告"
        $c = "利益率"
    condition:
        any of them
}

rule InvestorRelations {
    meta:
        category = "投資家関係"
        role = "CEO"
    strings:
        $a = "投資家関係"
        $b = "株主総会"
        $c = "資本市場"
    condition:
        any of them
}

rule RiskManagement {
    meta:
        category = "リスク管理"
        role = "CEO"
    strings:
        $a = "リスク管理"
        $b = "危機管理"
        $c = "リスク評価"
    condition:
        any of them
}

rule CorporateCulture {
    meta:
        category = "企業文化"
        role = "CEO"
    strings:
        $a = "企業文化"
        $b = "組織の価値観"
        $c = "社員エンゲージメント"
    condition:
        any of them
}

rule MergersAndAcquisitions {
    meta:
        category = "合併と買収"
        role = "CEO"
    strings:
        $a = "M&A"
        $b = "合併と買収"
        $c = "企業統合"
    condition:
        any of them
}

rule ComplianceRegulations {
    meta:
        category = "コンプライアンス"
        role = "CEO"
    strings:
        $a = "コンプライアンス"
        $b = "規制遵守"
        $c = "法規制"
    condition:
        any of them
}

rule LeadershipDevelopment {
    meta:
        category = "リーダーシップ開発"
        role = "CEO"
    strings:
        $a = "リーダーシップ開発"
        $b = "経営陣トレーニング"
        $c = "リーダー育成"
    condition:
        any of them
}

rule SustainabilityInitiatives {
    meta:
        category = "サステナビリティ"
        role = "CEO"
    strings:
        $a = "サステナビリティ"
        $b = "環境配慮"
        $c = "持続可能な経営"
    condition:
        any of them
}

rule TechnologyInnovation {
    meta:
        category = "技術革新"
        role = "CEO"
    strings:
        $a = "技術革新"
        $b = "イノベーション"
        $c = "研究開発"
    condition:
        any of them
}

rule GlobalExpansion {
    meta:
        category = "グローバル展開"
        role = "CEO"
    strings:
        $a = "グローバル展開"
        $b = "海外市場"
        $c = "国際事業"
    condition:
        any of them
}

rule CustomerEngagement {
    meta:
        category = "顧客エンゲージメント"
        role = "CEO"
    strings:
        $a = "顧客エンゲージメント"
        $b = "顧客関係"
        $c = "顧客満足"
    condition:
        any of them
}

rule OrganizationalEfficiency {
    meta:
        category = "組織効率"
        role = "CEO"
    strings:
        $a = "業務効率化"
        $b = "プロセス最適化"
        $c = "組織構造"
    condition:
        any of them
}

rule TalentAcquisition {
    meta:
        category = "人材獲得"
        role = "CEO"
    strings:
        $a = "人材獲得"
        $b = "採用戦略"
        $c = "人材開発"
    condition:
        any of them
}

rule DigitalTransformation {
    meta:
        category = "デジタル変革"
        role = "CEO"
    strings:
        $a = "デジタル変革"
        $b = "デジタライゼーション"
        $c = "デジタル戦略"
    condition:
        any of them
}

rule BusinessAgility {
    meta:
        category = "ビジネスアジリティ"
        role = "CEO"
    strings:
        $a = "ビジネスの敏捷性"
        $b = "迅速な意思決定"
        $c = "柔軟性"
    condition:
        any of them
}

rule CorporateResponsibility {
    meta:
        category = "企業責任"
        role = "CEO"
    strings:
        $a = "社会的責任"
        $b = "企業倫理"
        $c = "コーポレートガバナンス"
    condition:
        any of them
}

rule OperationalExcellence {
    meta:
        category = "運営卓越"
        role = "CEO"
    strings:
        $a = "運営の優れた実践"
        $b = "効率的なプロセス"
        $c = "品質管理"
    condition:
        any of them
}

rule TechInnovation {
    meta:
        category = "技術革新"
        role = "CTO"
    strings:
        $a = "新技術"
        $b = "革新的アイデア"
        $c = "テクノロジートレンド"
    condition:
        any of them
}

rule CyberSecurity {
    meta:
        category = "サイバーセキュリティ"
        role = "CTO"
    strings:
        $a = "セキュリティ脅威"
        $b = "情報保護"
        $c = "ネットワークセキュリティ"
    condition:
        any of them
}

rule CloudComputing {
    meta:
        category = "クラウドコンピューティング"
        role = "CTO"
    strings:
        $a = "クラウドサービス"
        $b = "クラウド移行"
        $c = "クラウドインフラ"
    condition:
        any of them
}

rule DataManagement {
    meta:
        category = "データ管理"
        role = "CTO"
    strings:
        $a = "データストレージ"
        $b = "データ分析"
        $c = "データプライバシー"
    condition:
        any of them
}

rule AIandML {
    meta:
        category = "人工知能と機械学習"
        role = "CTO"
    strings:
        $a = "AI戦略"
        $b = "機械学習アルゴリズム"
        $c = "AIアプリケーション"
    condition:
        any of them
}

rule SoftwareDevelopment {
    meta:
        category = "ソフトウェア開発"
        role = "CTO"
    strings:
        $a = "開発プロセス"
        $b = "ソフトウェアアーキテクチャ"
        $c = "コーディング標準"
    condition:
        any of them
}

rule ITInfrastructure {
    meta:
        category = "ITインフラ"
        role = "CTO"
    strings:
        $a = "システムアーキテクチャ"
        $b = "インフラ最適化"
        $c = "技術スタック"
    condition:
        any of them
}

rule DevOpsPractices {
    meta:
        category = "デブオプス実践"
        role = "CTO"
    strings:
        $a = "CI/CD"
        $b = "オートメーション"
        $c = "デブオプスカルチャー"
    condition:
        any of them
}

rule ProductInnovation {
    meta:
        category = "製品革新"
        role = "CTO"
    strings:
        $a = "製品開発"
        $b = "新製品イノベーション"
        $c = "テクノロジードリブン"
    condition:
        any of them
}

rule ITSecurityCompliance {
    meta:
        category = "ITセキュリティ準拠"
        role = "CTO"
    strings:
        $a = "セキュリティ基準"
        $b = "規制遵守"
        $c = "ITガバナンス"
    condition:
        any of them
}

rule NetworkOptimization {
    meta:
        category = "ネットワーク最適化"
        role = "CTO"
    strings:
        $a = "ネットワークパフォーマンス"
        $b = "通信効率"
        $c = "ネットワーク管理"
    condition:
        any of them
}

rule TechnologyResearch {
    meta:
        category = "技術研究"
        role = "CTO"
    strings:
        $a = "新技術調査"
        $b = "技術先行研究"
        $c = "イノベーション研究"
    condition:
        any of them
}

rule SystemIntegration {
    meta:
        category = "システム統合"
        role = "CTO"
    strings:
        $a = "統合ソリューション"
        $b = "システム連携"
        $c = "エンタープライズアプリケーション"
    condition:
        any of them
}

rule MobileTechnology {
    meta:
        category = "モバイル技術"
        role = "CTO"
    strings:
        $a = "モバイルアプリ"
        $b = "モバイルプラットフォーム"
        $c = "モバイルデバイス"
    condition:
        any of them
}

rule CloudSecurity {
    meta:
        category = "クラウドセキュリティ"
        role = "CTO"
    strings:
        $a = "クラウド保護"
        $b = "セキュアクラウド"
        $c = "クラウドベースのセキュリティ"
    condition:
        any of them
}

rule BigDataAnalytics {
    meta:
        category = "ビッグデータ分析"
        role = "CTO"
    strings:
        $a = "データ分析"
        $b = "ビッグデータ"
        $c = "データ駆動型意思決定"
    condition:
        any of them
}

rule ITProjectManagement {
    meta:
        category = "ITプロジェクト管理"
        role = "CTO"
    strings:
        $a = "プロジェクト計画"
        $b = "プロジェクト管理"
        $c = "技術プロジェクト"
    condition:
        any of them
}

rule ITStrategy {
    meta:
        category = "IT戦略"
        role = "CIO"
    strings:
        $a = "IT戦略"
        $b = "技術計画"
        $c = "情報技術の目標"
    condition:
        any of them
}

rule SystemManagement {
    meta:
        category = "システム管理"
        role = "CIO"
    strings:
        $a = "システム運用"
        $b = "インフラ管理"
        $c = "ITアーキテクチャ"
    condition:
        any of them
}

rule DataSecurity {
    meta:
        category = "データセキュリティ"
        role = "CIO"
    strings:
        $a = "データ保護"
        $b = "セキュリティポリシー"
        $c = "情報漏洩防止"
    condition:
        any of them
}

rule TechInnovation2 {
    meta:
        category = "技術革新"
        role = "CIO"
    strings:
        $a = "新技術導入"
        $b = "イノベーション推進"
        $c = "技術評価"
    condition:
        any of them
}

rule CloudStrategy {
    meta:
        category = "クラウド戦略"
        role = "CIO"
    strings:
        $a = "クラウド移行"
        $b = "クラウドサービス"
        $c = "クラウドソリューション"
    condition:
        any of them
}

rule DigitalTransformation2 {
    meta:
        category = "デジタル変革"
        role = "CIO"
    strings:
        $a = "デジタル化推進"
        $b = "ビジネスモデル変革"
        $c = "デジタルイノベーション"
    condition:
        any of them
}

rule ITGovernance {
    meta:
        category = "ITガバナンス"
        role = "CIO"
    strings:
        $a = "IT方針"
        $b = "ガバナンス構造"
        $c = "コンプライアンス管理"
    condition:
        any of them
}

rule VendorManagement {
    meta:
        category = "ベンダー管理"
        role = "CIO"
    strings:
        $a = "サプライヤー管理"
        $b = "外部ベンダー"
        $c = "サービスプロバイダー"
    condition:
        any of them
}

rule ITBudgeting {
    meta:
        category = "IT予算策定"
        role = "CIO"
    strings:
        $a = "予算計画"
        $b = "コスト管理"
        $c = "財務計画"
    condition:
        any of them
}

rule BusinessContinuity {
    meta:
        category = "事業継続計画"
        role = "CIO"
    strings:
        $a = "事業継続"
        $b = "災害復旧"
        $c = "リスク軽減"
    condition:
        any of them
}

rule NetworkInfrastructure {
    meta:
        category = "ネットワークインフラ"
        role = "CIO"
    strings:
        $a = "ネットワーク設計"
        $b = "通信インフラ"
        $c = "接続性の改善"
    condition:
        any of them
}

rule ITSecurityPolicies {
    meta:
        category = "ITセキュリティポリシー"
        role = "CIO"
    strings:
        $a = "セキュリティ規則"
        $b = "ポリシー実施"
        $c = "セキュリティ標準"
    condition:
        any of them
}

rule DataAnalytics {
    meta:
        category = "データ分析"
        role = "CIO"
    strings:
        $a = "ビッグデータ"
        $b = "データインサイト"
        $c = "分析ツール"
    condition:
        any of them
}

rule TechnologyPartnerships {
    meta:
        category = "技術パートナーシップ"
        role = "CIO"
    strings:
        $a = "業務提携"
        $b = "パートナーシップ戦略"
        $c = "協力関係"
    condition:
        any of them
}

rule MobileTechnologyStrategy {
    meta:
        category = "モバイル技術戦略"
        role = "CIO"
    strings:
        $a = "モバイル戦略"
        $b = "モバイルアプリケーション"
        $c = "モバイルデバイス管理"
    condition:
        any of them
}

rule ITStaffDevelopment {
    meta:
        category = "ITスタッフ育成"
        role = "CIO"
    strings:
        $a = "技術トレーニング"
        $b = "スタッフ能力開発"
        $c = "教育プログラム"
    condition:
        any of them
}

rule InformationSystems {
    meta:
        category = "情報システム"
        role = "CIO"
    strings:
        $a = "システム導入"
        $b = "情報システムアップグレード"
        $c = "システム統合"
    condition:
        any of them
}

rule CyberAttackPrevention {
    meta:
        category = "サイバー攻撃防止"
        role = "CIO"
    strings:
        $a = "攻撃防御"
        $b = "セキュリティ対策"
        $c = "侵入検知システム"
    condition:
        any of them
}

rule ProjectPlanning {
    meta:
        category = "プロジェクト計画"
        role = "プロジェクトマネージャー"
    strings:
        $a = "プロジェクトスケジュール"
        $b = "計画段階"
        $c = "タイムライン設定"
    condition:
        any of them
}

rule ResourceAllocation {
    meta:
        category = "リソース割り当て"
        role = "プロジェクトマネージャー"
    strings:
        $a = "リソース管理"
        $b = "予算割り当て"
        $c = "人員配置"
    condition:
        any of them
}

rule RiskManagement2 {
    meta:
        category = "リスク管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "リスク評価"
        $b = "軽減戦略"
        $c = "リスク識別"
    condition:
        any of them
}

rule StakeholderCommunication {
    meta:
        category = "ステークホルダーコミュニケーション"
        role = "プロジェクトマネージャー"
    strings:
        $a = "ステークホルダー報告"
        $b = "コミュニケーションプラン"
        $c = "関係者との対話"
    condition:
        any of them
}

rule ProjectMilestones {
    meta:
        category = "プロジェクトマイルストーン"
        role = "プロジェクトマネージャー"
    strings:
        $a = "重要な節目"
        $b = "マイルストーン達成"
        $c = "進捗確認"
    condition:
        any of them
}

rule QualityControl {
    meta:
        category = "品質管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "品質基準"
        $b = "品質チェック"
        $c = "品質保証"
    condition:
        any of them
}

rule TeamManagement {
    meta:
        category = "チーム管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "チームリーダーシップ"
        $b = "チームダイナミクス"
        $c = "スタッフ管理"
    condition:
        any of them
}

rule BudgetManagement {
    meta:
        category = "予算管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "コスト管理"
        $b = "予算オーバーラン"
        $c = "財務計画"
    condition:
        any of them
}

rule ScopeManagement {
    meta:
        category = "スコープ管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "プロジェクト範囲"
        $b = "スコープ変更"
        $c = "要件定義"
    condition:
        any of them
}

rule ChangeManagement {
    meta:
        category = "変更管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "変更リクエスト"
        $b = "変更管理プロセス"
        $c = "変更承認"
    condition:
        any of them
}

rule ProjectDelivery {
    meta:
        category = "プロジェクト納品"
        role = "プロジェクトマネージャー"
    strings:
        $a = "プロジェクト完了"
        $b = "納品基準"
        $c = "最終成果物"
    condition:
        any of them
}

rule AgileMethodology {
    meta:
        category = "アジャイル手法"
        role = "プロジェクトマネージャー"
    strings:
        $a = "スクラム"
        $b = "アジャイル開発"
        $c = "スプリント計画"
    condition:
        any of them
}

rule ContractNegotiation {
    meta:
        category = "契約交渉"
        role = "プロジェクトマネージャー"
    strings:
        $a = "契約条件"
        $b = "ベンダー契約"
        $c = "契約管理"
    condition:
        any of them
}

rule PerformanceMetrics {
    meta:
        category = "パフォーマンス指標"
        role = "プロジェクトマネージャー"
    strings:
        $a = "KPI"
        $b = "成果測定"
        $c = "パフォーマンスレビュー"
    condition:
        any of them
}

rule StakeholderEngagement {
    meta:
        category = "ステークホルダー関与"
        role = "プロジェクトマネージャー"
    strings:
        $a = "ステークホルダー分析"
        $b = "関与戦略"
        $c = "ステークホルダーミーティング"
    condition:
        any of them
}

rule DocumentationControl {
    meta:
        category = "ドキュメンテーション管理"
        role = "プロジェクトマネージャー"
    strings:
        $a = "プロジェクト文書"
        $b = "文書管理システム"
        $c = "記録保持"
    condition:
        any of them
}

rule ProcessOptimization {
    meta:
        category = "プロセス最適化"
        role = "プロジェクトマネージャー"
    strings:
        $a = "業務改善"
        $b = "プロセス改革"
        $c = "効率化"
    condition:
        any of them
}

rule ProductDevelopment {
    meta:
        category = "製品開発"
        role = "プロダクトマネージャー"
    strings:
        $a = "製品開発"
        $b = "新製品設計"
        $c = "開発プロセス"
    condition:
        any of them
}

rule MarketResearch {
    meta:
        category = "市場調査"
        role = "プロダクトマネージャー"
    strings:
        $a = "市場分析"
        $b = "競合調査"
        $c = "顧客洞察"
    condition:
        any of them
}

rule CustomerFeedback {
    meta:
        category = "顧客フィードバック"
        role = "プロダクトマネージャー"
    strings:
        $a = "顧客評価"
        $b = "フィードバック収集"
        $c = "顧客満足度"
    condition:
        any of them
}

rule ProductStrategy {
    meta:
        category = "プロダクト戦略"
        role = "プロダクトマネージャー"
    strings:
        $a = "製品戦略"
        $b = "ロードマップ"
        $c = "戦略計画"
    condition:
        any of them
}

rule PricingAnalysis {
    meta:
        category = "価格分析"
        role = "プロダクトマネージャー"
    strings:
        $a = "価格設定"
        $b = "コスト分析"
        $c = "価格競争"
    condition:
        any of them
}

rule CompetitiveAnalysis {
    meta:
        category = "競合分析"
        role = "プロダクトマネージャー"
    strings:
        $a = "競合対策"
        $b = "市場ポジショニング"
        $c = "競合状況"
    condition:
        any of them
}

rule UserExperience {
    meta:
        category = "ユーザーエクスペリエンス"
        role = "プロダクトマネージャー"
    strings:
        $a = "UXデザイン"
        $b = "ユーザビリティテスト"
        $c = "ユーザーインターフェース"
    condition:
        any of them
}

rule ProductLaunch {
    meta:
        category = "製品発売"
        role = "プロダクトマネージャー"
    strings:
        $a = "製品発売計画"
        $b = "市場導入戦略"
        $c = "発売準備"
    condition:
        any of them
}

rule BrandManagement {
    meta:
        category = "ブランド管理"
        role = "プロダクトマネージャー"
    strings:
        $a = "ブランド戦略"
        $b = "ブランドイメージ"
        $c = "ブランドアイデンティティ"
    condition:
        any of them
}

rule AgileMethodology2 {
    meta:
        category = "アジャイル手法"
        role = "プロダクトマネージャー"
    strings:
        $a = "アジャイル開発"
        $b = "スクラム"
        $c = "反復プロセス"
    condition:
        any of them
}

rule ProductLifecycle {
    meta:
        category = "製品ライフサイクル"
        role = "プロダクトマネージャー"
    strings:
        $a = "製品寿命"
        $b = "ライフサイクル管理"
        $c = "製品更新"
    condition:
        any of them
}

rule GoToMarketStrategy {
    meta:
        category = "市場参入戦略"
        role = "プロダクトマネージャー"
    strings:
        $a = "市場参入計画"
        $b = "販売戦略"
        $c = "ターゲット市場"
    condition:
        any of them
}

rule ProductInnovation2 {
    meta:
        category = "製品革新"
        role = "プロダクトマネージャー"
    strings:
        $a = "革新的製品"
        $b = "新規機能"
        $c = "技術進歩"
    condition:
        any of them
}

rule FeaturePrioritization {
    meta:
        category = "機能の優先順位付け"
        role = "プロダクトマネージャー"
    strings:
        $a = "機能評価"
        $b = "優先度決定"
        $c = "製品機能計画"
    condition:
        any of them
}

rule ProductMetrics {
    meta:
        category = "製品メトリクス"
        role = "プロダクトマネージャー"
    strings:
        $a = "パフォーマンス指標"
        $b = "KPI"
        $c = "製品分析"
    condition:
        any of them
}

rule CustomerSegmentation {
    meta:
        category = "顧客セグメンテーション"
        role = "プロダクトマネージャー"
    strings:
        $a = "ターゲット顧客"
        $b = "市場セグメント"
        $c = "顧客層別分析"
    condition:
        any of them
}

rule SalesEnablement {
    meta:
        category = "営業支援"
        role = "プロダクトマネージャー"
    strings:
        $a = "営業ツール"
        $b = "販売促進"
        $c = "セールスパートナーシップ"
    condition:
        any of them
}

rule TechnologyAdoption {
    meta:
        category = "技術導入"
        role = "プロダクトマネージャー"
    strings:
        $a = "技術採用"
        $b = "新技術の統合"
        $c = "製品技術革新"
    condition:
        any of them
}

rule SystemArchitectureDesign {
    meta:
        category = "システムアーキテクチャ設計"
        role = "システムアーキテクト"
    strings:
        $a = "システム設計"
        $b = "アーキテクチャフレームワーク"
        $c = "システム構造"
    condition:
        any of them
}

rule PerformanceOptimization {
    meta:
        category = "パフォーマンス最適化"
        role = "システムアーキテクト"
    strings:
        $a = "性能向上"
        $b = "効率改善"
        $c = "システム最適化"
    condition:
        any of them
}

rule TechnologyStandards {
    meta:
        category = "技術標準"
        role = "システムアーキテクト"
    strings:
        $a = "技術仕様"
        $b = "標準化"
        $c = "技術ガイドライン"
    condition:
        any of them
}

rule SystemIntegration2 {
    meta:
        category = "システム統合"
        role = "システムアーキテクト"
    strings:
        $a = "統合ソリューション"
        $b = "システム連携"
        $c = "統合アーキテクチャ"
    condition:
        any of them
}

rule ScalabilityPlanning {
    meta:
        category = "スケーラビリティ計画"
        role = "システムアーキテクト"
    strings:
        $a = "拡張性"
        $b = "スケールアップ"
        $c = "負荷分散"
    condition:
        any of them
}

rule SecurityArchitecture {
    meta:
        category = "セキュリティアーキテクチャ"
        role = "システムアーキテクト"
    strings:
        $a = "セキュリティ設計"
        $b = "保護メカニズム"
        $c = "セキュリティ層"
    condition:
        any of them
}

rule CloudArchitecture {
    meta:
        category = "クラウドアーキテクチャ"
        role = "システムアーキテクト"
    strings:
        $a = "クラウド設計"
        $b = "クラウドサービス"
        $c = "クラウド移行"
    condition:
        any of them
}

rule DataArchitecture {
    meta:
        category = "データアーキテクチャ"
        role = "システムアーキテクト"
    strings:
        $a = "データモデリング"
        $b = "データベース設計"
        $c = "データ管理"
    condition:
        any of them
}

rule APIDesign {
    meta:
        category = "API設計"
        role = "システムアーキテクト"
    strings:
        $a = "API開発"
        $b = "インターフェース設計"
        $c = "API統合"
    condition:
        any of them
}

rule DevOpsPractices2 {
    meta:
        category = "デブオプス実践"
        role = "システムアーキテクト"
    strings:
        $a = "デブオプス文化"
        $b = "CI/CD"
        $c = "自動化戦略"
    condition:
        any of them
}

rule NetworkDesign {
    meta:
        category = "ネットワーク設計"
        role = "システムアーキテクト"
    strings:
        $a = "ネットワークアーキテクチャ"
        $b = "通信インフラ"
        $c = "ネットワーク最適化"
    condition:
        any of them
}

rule DisasterRecoveryPlan {
    meta:
        category = "災害復旧計画"
        role = "システムアーキテクト"
    strings:
        $a = "バックアップ戦略"
        $b = "災害復旧"
        $c = "事業継続"
    condition:
        any of them
}

rule MobileArchitecture {
    meta:
        category = "モバイルアーキテクチャ"
        role = "システムアーキテクト"
    strings:
        $a = "モバイルアプリ設計"
        $b = "モバイルプラットフォーム"
        $c = "クロスプラットフォーム開発"
    condition:
        any of them
}

rule SoftwareQualityAssurance {
    meta:
        category = "ソフトウェア品質保証"
        role = "システムアーキテクト"
    strings:
        $a = "品質基準"
        $b = "テスト戦略"
        $c = "品質管理"
    condition:
        any of them
}

rule VirtualizationStrategies {
    meta:
        category = "仮想化戦略"
        role = "システムアーキテクト"
    strings:
        $a = "サーバー仮想化"
        $b = "仮想環境"
        $c = "クラウド仮想化"
    condition:
        any of them
}

rule AIIntegration {
    meta:
        category = "AI統合"
        role = "システムアーキテクト"
    strings:
        $a = "AIソリューション"
        $b = "機械学習システム"
        $c = "AI駆動開発"
    condition:
        any of them
}

rule IoTArchitecture {
    meta:
        category = "IoTアーキテクチャ"
        role = "システムアーキテクト"
    strings:
        $a = "IoTデバイス"
        $b = "IoTプラットフォーム"
        $c = "接続性"
    condition:
        any of them
}

rule CodeQuality {
    meta:
        category = "コード品質"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "コードレビュー"
        $b = "コーディング標準"
        $c = "リファクタリング"
    condition:
        any of them
}

rule AgileDevelopment {
    meta:
        category = "アジャイル開発"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "スクラム"
        $b = "アジャイル手法"
        $c = "反復開発"
    condition:
        any of them
}

rule NewTechnologies {
    meta:
        category = "新技術"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "最新技術"
        $b = "技術トレンド"
        $c = "イノベーション"
    condition:
        any of them
}

rule PerformanceOptimization2 {
    meta:
        category = "パフォーマンス最適化"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "性能改善"
        $b = "最適化"
        $c = "効率的なコード"
    condition:
        any of them
}

rule SecurityBestPractices {
    meta:
        category = "セキュリティベストプラクティス"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "セキュリティ対策"
        $b = "脆弱性の対応"
        $c = "安全なコーディング"
    condition:
        any of them
}

rule CodeDocumentation {
    meta:
        category = "コードドキュメンテーション"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "ドキュメント作成"
        $b = "コードコメント"
        $c = "技術文書"
    condition:
        any of them
}

rule ContinuousIntegration {
    meta:
        category = "継続的インテグレーション"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "CI/CD"
        $b = "ビルド自動化"
        $c = "継続的デプロイ"
    condition:
        any of them
}

rule TestingStrategies {
    meta:
        category = "テスト戦略"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "ユニットテスト"
        $b = "統合テスト"
        $c = "自動テスト"
    condition:
        any of them
}

rule DebuggingProcesses {
    meta:
        category = "デバッグプロセス"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "バグ修正"
        $b = "デバッグツール"
        $c = "エラー解析"
    condition:
        any of them
}

rule CloudDevelopment {
    meta:
        category = "クラウド開発"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "クラウドアプリ"
        $b = "クラウドプラットフォーム"
        $c = "クラウドサービス"
    condition:
        any of them
}

rule MobileAppDevelopment {
    meta:
        category = "モバイルアプリ開発"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "モバイルアプリ"
        $b = "iOS/Android開発"
        $c = "モバイルUI/UX"
    condition:
        any of them
}

rule APIDevelopment {
    meta:
        category = "API開発"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "API設計"
        $b = "RESTful API"
        $c = "API統合"
    condition:
        any of them
}

rule DataEngineering {
    meta:
        category = "データエンジニアリング"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "データパイプライン"
        $b = "データ処理"
        $c = "ビッグデータ技術"
    condition:
        any of them
}

rule SoftwareArchitecture {
    meta:
        category = "ソフトウェアアーキテクチャ"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "アーキテクチャパターン"
        $b = "システム設計"
        $c = "ソフトウェア構造"
    condition:
        any of them
}

rule UserInterfaceDesign {
    meta:
        category = "ユーザーインターフェース設計"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "UI開発"
        $b = "フロントエンド"
        $c = "インタラクションデザイン"
    condition:
        any of them
}

rule MachineLearningIntegration {
    meta:
        category = "機械学習統合"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "MLモデル"
        $b = "機械学習アプリケーション"
        $c = "AI統合"
    condition:
        any of them
}

rule VersionControl {
    meta:
        category = "バージョン管理"
        role = "ソフトウェアエンジニア/開発者"
    strings:
        $a = "Git"
        $b = "ソースコード管理"
        $c = "コードリポジトリ"
    condition:
        any of them
}

rule NetworkInfrastructure2 {
    meta:
        category = "ネットワークインフラストラクチャ"
        role = "ネットワークエンジニア"
    strings:
        $a = "ネットワーク設計"
        $b = "インフラ構築"
        $c = "ネットワーク機器"
    condition:
        any of them
}

rule SecurityProtocols {
    meta:
        category = "セキュリティプロトコル"
        role = "ネットワークエンジニア"
    strings:
        $a = "ファイアウォール"
        $b = "VPN"
        $c = "セキュリティ構成"
    condition:
        any of them
}

rule PerformanceMonitoring {
    meta:
        category = "パフォーマンスモニタリング"
        role = "ネットワークエンジニア"
    strings:
        $a = "トラフィック監視"
        $b = "ネットワーク分析"
        $c = "性能評価"
    condition:
        any of them
}

rule WirelessTechnologies {
    meta:
        category = "ワイヤレス技術"
        role = "ネットワークエンジニア"
    strings:
        $a = "Wi-Fi設定"
        $b = "無線ネットワーク"
        $c = "モバイル通信"
    condition:
        any of them
}

rule NetworkOptimization2 {
    meta:
        category = "ネットワーク最適化"
        role = "ネットワークエンジニア"
    strings:
        $a = "帯域幅管理"
        $b = "負荷分散"
        $c = "ネットワーク効率化"
    condition:
        any of them
}

rule Troubleshooting {
    meta:
        category = "トラブルシューティング"
        role = "ネットワークエンジニア"
    strings:
        $a = "障害解析"
        $b = "問題診断"
        $c = "修復措置"
    condition:
        any of them
}

rule CloudNetworking {
    meta:
        category = "クラウドネットワーキング"
        role = "ネットワークエンジニア"
    strings:
        $a = "クラウド接続"
        $b = "クラウドサービス"
        $c = "ハイブリッドクラウド"
    condition:
        any of them
}

rule IPv6Implementation {
    meta:
        category = "IPv6実装"
        role = "ネットワークエンジニア"
    strings:
        $a = "IPv6移行"
        $b = "IPアドレス管理"
        $c = "IPv6設定"
    condition:
        any of them
}

rule VPNConfiguration {
    meta:
        category = "VPN設定"
        role = "ネットワークエンジニア"
    strings:
        $a = "VPNセットアップ"
        $b = "リモートアクセス"
        $c = "VPNセキュリティ"
    condition:
        any of them
}

rule NetworkAutomation {
    meta:
        category = "ネットワーク自動化"
        role = "ネットワークエンジニア"
    strings:
        $a = "自動化スクリプト"
        $b = "ネットワークオーケストレーション"
        $c = "自動化ツール"
    condition:
        any of them
}

rule SDNImplementation {
    meta:
        category = "SDN実装"
        role = "ネットワークエンジニア"
    strings:
        $a = "ソフトウェア定義ネットワーク"
        $b = "SDNテクノロジー"
        $c = "SDN戦略"
    condition:
        any of them
}

rule NetworkRedundancy {
    meta:
        category = "ネットワーク冗長性"
        role = "ネットワークエンジニア"
    strings:
        $a = "冗長化計画"
        $b = "障害回避"
        $c = "バックアップリンク"
    condition:
        any of them
}

rule NetworkSecurityPolicies {
    meta:
        category = "ネットワークセキュリティポリシー"
        role = "ネットワークエンジニア"
    strings:
        $a = "セキュリティポリシー"
        $b = "アクセス制御"
        $c = "セキュリティガイドライン"
    condition:
        any of them
}

rule VoIPSystems {
    meta:
        category = "VoIPシステム"
        role = "ネットワークエンジニア"
    strings:
        $a = "VoIP設定"
        $b = "音声通信"
        $c = "IP電話"
    condition:
        any of them
}

rule NetworkMonitoringTools {
    meta:
        category = "ネットワーク監視ツール"
        role = "ネットワークエンジニア"
    strings:
        $a = "監視ソフトウェア"
        $b = "ネットワークアナライザー"
        $c = "パフォーマンストラッキング"
    condition:
        any of them
}

rule WANOptimization {
    meta:
        category = "WAN最適化"
        role = "ネットワークエンジニア"
    strings:
        $a = "WAN加速"
        $b = "長距離ネットワーキング"
        $c = "帯域幅最適化"
    condition:
        any of them
}

rule NetworkCabling {
    meta:
        category = "ネットワークケーブリング"
        role = "ネットワークエンジニア"
    strings:
        $a = "配線インフラ"
        $b = "ケーブル管理"
        $c = "物理接続"
    condition:
        any of them
}

rule CyberThreatAnalysis {
    meta:
        category = "サイバー脅威分析"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "脅威インテリジェンス"
        $b = "侵入試行"
        $c = "攻撃パターン"
    condition:
        any of them
}

rule IncidentResponse {
    meta:
        category = "インシデント対応"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "インシデント管理"
        $b = "侵害対応"
        $c = "エスカレーションプロセス"
    condition:
        any of them
}

rule VulnerabilityAssessment {
    meta:
        category = "脆弱性評価"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "脆弱性スキャン"
        $b = "セキュリティ評価"
        $c = "リスク評価"
    condition:
        any of them
}

rule SecurityPolicies {
    meta:
        category = "セキュリティポリシー"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "セキュリティ規則"
        $b = "ポリシー遵守"
        $c = "セキュリティガイドライン"
    condition:
        any of them
}

rule FirewallManagement {
    meta:
        category = "ファイアウォール管理"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "ファイアウォール設定"
        $b = "アクセス制御"
        $c = "トラフィックフィルタリング"
    condition:
        any of them
}

rule SecurityAuditing {
    meta:
        category = "セキュリティ監査"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "監査ログ"
        $b = "コンプライアンスチェック"
        $c = "セキュリティレポート"
    condition:
        any of them
}

rule EncryptionTechniques {
    meta:
        category = "暗号化技術"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "データ暗号化"
        $b = "暗号化キー管理"
        $c = "SSL/TLS"
    condition:
        any of them
}

rule PenetrationTesting {
    meta:
        category = "ペネトレーションテスティング"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "侵入テスト"
        $b = "脆弱性検証"
        $c = "セキュリティ評価"
    condition:
        any of them
}

rule NetworkSecurity2 {
    meta:
        category = "ネットワークセキュリティ"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "ネットワーク保護"
        $b = "侵入防御システム"
        $c = "ネットワーク監視"
    condition:
        any of them
}

rule SecurityTraining {
    meta:
        category = "セキュリティトレーニング"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "セキュリティ教育"
        $b = "従業員トレーニング"
        $c = "セキュリティ意識向上"
    condition:
        any of them
}

rule MalwareAnalysis {
    meta:
        category = "マルウェア分析"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "マルウェア検出"
        $b = "ウイルス分析"
        $c = "ランサムウェア対策"
    condition:
        any of them
}

rule ComplianceAuditing {
    meta:
        category = "コンプライアンス監査"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "法規制遵守"
        $b = "監査準備"
        $c = "規制レポート"
    condition:
        any of them
}

rule CyberSecurityPolicyDevelopment {
    meta:
        category = "サイバーセキュリティポリシー開発"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "セキュリティポリシー策定"
        $b = "セキュリティ規則作成"
        $c = "ポリシー管理"
    condition:
        any of them
}

rule CloudSecurityManagement {
    meta:
        category = "クラウドセキュリティ管理"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "クラウドセキュリティ"
        $b = "クラウドデータ保護"
        $c = "クラウドアクセスセキュリティ"
    condition:
        any of them
}

rule DigitalForensics {
    meta:
        category = "デジタルフォレンジック"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "デジタル証拠収集"
        $b = "フォレンジック分析"
        $c = "インシデント調査"
    condition:
        any of them
}

rule EndpointSecurity {
    meta:
        category = "エンドポイントセキュリティ"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "エンドポイント保護"
        $b = "マルウェア防御"
        $c = "デバイスセキュリティ"
    condition:
        any of them
}

rule SecurityAwarenessCampaigns {
    meta:
        category = "セキュリティ啓発キャンペーン"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "セキュリティトレーニング"
        $b = "意識向上プログラム"
        $c = "セキュリティガイドライン普及"
    condition:
        any of them
}

rule ThreatHunting {
    meta:
        category = "脅威ハンティング"
        role = "セキュリティアナリスト/エンジニア"
    strings:
        $a = "アクティブな脅威検索"
        $b = "ネットワーク監視"
        $c = "不審な活動調査"
    condition:
        any of them
}

rule DatabasePerformance {
    meta:
        category = "データベース性能"
        role = "データベース管理者"
    strings:
        $a = "パフォーマンスチューニング"
        $b = "クエリ最適化"
        $c = "レスポンス時間"
    condition:
        any of them
}

rule DataSecurity2 {
    meta:
        category = "データセキュリティ"
        role = "データベース管理者"
    strings:
        $a = "データ暗号化"
        $b = "アクセス制御"
        $c = "セキュリティ監査"
    condition:
        any of them
}

rule BackupRecovery {
    meta:
        category = "バックアップとリカバリ"
        role = "データベース管理者"
    strings:
        $a = "データバックアップ"
        $b = "災害復旧"
        $c = "リカバリ計画"
    condition:
        any of them
}

rule DatabaseUpgrades {
    meta:
        category = "データベースアップグレード"
        role = "データベース管理者"
    strings:
        $a = "バージョンアップ"
        $b = "システム移行"
        $c = "データベース更新"
    condition:
        any of them
}

rule DataIntegration {
    meta:
        category = "データ統合"
        role = "データベース管理者"
    strings:
        $a = "データ連携"
        $b = "ETLプロセス"
        $c = "データウェアハウジング"
    condition:
        any of them
}

rule DatabaseDesign {
    meta:
        category = "データベース設計"
        role = "データベース管理者"
    strings:
        $a = "データモデル"
        $b = "スキーマ設計"
        $c = "データベースアーキテクチャ"
    condition:
        any of them
}

rule DataQualityManagement {
    meta:
        category = "データ品質管理"
        role = "データベース管理者"
    strings:
        $a = "データクレンジング"
        $b = "データ整合性"
        $c = "品質監視"
    condition:
        any of them
}

rule QueryOptimization {
    meta:
        category = "クエリ最適化"
        role = "データベース管理者"
    strings:
        $a = "クエリ性能"
        $b = "実行計画"
        $c = "インデックス戦略"
    condition:
        any of them
}

rule DataReplication {
    meta:
        category = "データレプリケーション"
        role = "データベース管理者"
    strings:
        $a = "データ複製"
        $b = "レプリケーション戦略"
        $c = "同期・非同期レプリケーション"
    condition:
        any of them
}

rule DatabaseScaling {
    meta:
        category = "データベーススケーリング"
        role = "データベース管理者"
    strings:
        $a = "スケールアップ"
        $b = "スケールアウト"
        $c = "シャーディング"
    condition:
        any of them
}

rule DatabaseMonitoring {
    meta:
        category = "データベースモニタリング"
        role = "データベース管理者"
    strings:
        $a = "性能監視"
        $b = "リソース利用"
        $c = "アラート設定"
    condition:
        any of them
}

rule TransactionManagement {
    meta:
        category = "トランザクション管理"
        role = "データベース管理者"
    strings:
        $a = "トランザクション制御"
        $b = "ロック管理"
        $c = "コンカレンシー制御"
    condition:
        any of them
}

rule CloudDatabaseManagement {
    meta:
        category = "クラウドデータベース管理"
        role = "データベース管理者"
    strings:
        $a = "クラウドベースのDB"
        $b = "マネージドサービス"
        $c = "クラウド移行"
    condition:
        any of them
}

rule NoSQLDatabases {
    meta:
        category = "NoSQLデータベース"
        role = "データベース管理者"
    strings:
        $a = "ドキュメントベースDB"
        $b = "キーバリューストア"
        $c = "NoSQL最適化"
    condition:
        any of them
}

rule DatabaseSecurityAuditing {
    meta:
        category = "データベースセキュリティ監査"
        role = "データベース管理者"
    strings:
        $a = "セキュリティ監査"
        $b = "アクセスログ"
        $c = "監査トレイル"
    condition:
        any of them
}

rule DataGovernance {
    meta:
        category = "データガバナンス"
        role = "データベース管理者"
    strings:
        $a = "データポリシー"
        $b = "データ管理基準"
        $c = "データライフサイクル"
    condition:
        any of them
}

rule DatabaseAutomation {
    meta:
        category = "データベース自動化"
        role = "データベース管理者"
    strings:
       $a = "自動化スクリプト"
       $b = "データベース運用自動化"
       $c = "メンテナンス自動化"
    condition:
       any of them
}

rule SQLQueryPerformance {
    meta:
        category = "SQLクエリパフォーマンス"
        role = "データベース管理者"
    strings:
        $a = "SQL最適化"
        $b = "クエリ実行計画"
        $c = "インデックス戦略"
    condition:
        any of them
}

rule HighAvailabilitySolutions {
    meta:
        category = "高可用性ソリューション"
        role = "データベース管理者"
    strings:
        $a = "フェイルオーバークラスター"
        $b = "レプリケーション"
        $c = "負荷分散"
    condition:
        any of them
}

rule DataWarehouseOptimization {
    meta:
        category = "データウェアハウス最適化"
        role = "データベース管理者"
    strings:
        $a = "データウェアハウジング"
        $b = "ビッグデータ処理"
        $c = "分析基盤"
    condition:
        any of them
}

rule BusinessProcessAnalysis {
    meta:
        category = "ビジネスプロセス分析"
        role = "ビジネスアナリスト"
    strings:
        $a = "プロセス最適化"
        $b = "業務フロー分析"
        $c = "効率改善"
    condition:
        any of them
}

rule RequirementsGathering {
    meta:
        category = "要件収集"
        role = "ビジネスアナリスト"
    strings:
        $a = "要件定義"
        $b = "利害関係者のインタビュー"
        $c = "要件ドキュメンテーション"
    condition:
        any of them
}

rule MarketResearch2 {
    meta:
        category = "市場調査"
        role = "ビジネスアナリスト"
    strings:
        $a = "市場トレンド分析"
        $b = "競合分析"
        $c = "顧客セグメンテーション"
    condition:
        any of them
}

rule StakeholderCommunication2 {
    meta:
        category = "利害関係者とのコミュニケーション"
        role = "ビジネスアナリスト"
    strings:
        $a = "コミュニケーション計画"
        $b = "関係者マネジメント"
        $c = "フィードバック収集"
    condition:
        any of them
}

rule BusinessCaseDevelopment {
    meta:
        category = "ビジネスケース開発"
        role = "ビジネスアナリスト"
    strings:
        $a = "事業計画"
        $b = "ROI分析"
        $c = "提案書作成"
    condition:
        any of them
}

rule ProjectManagementSupport {
    meta:
        category = "プロジェクト管理支援"
        role = "ビジネスアナリスト"
    strings:
        $a = "プロジェクト計画"
        $b = "リソース管理"
        $c = "プロジェクトドキュメンテーション"
    condition:
        any of them
}

rule ChangeManagement2 {
    meta:
        category = "変更管理"
        role = "ビジネスアナリスト"
    strings:
        $a = "変更リクエスト分析"
        $b = "変更管理プロセス"
        $c = "影響評価"
    condition:
        any of them
}

rule StrategicPlanningSupport {
    meta:
        category = "戦略計画支援"
        role = "ビジネスアナリスト"
    strings:
        $a = "戦略的目標設定"
        $b = "事業戦略分析"
        $c = "経営層への提案"
    condition:
        any of them
}


rule RiskAssessment {
    meta:
        category = "リスク評価"
        role = "ビジネスアナリスト"
    strings:
        $a = "リスク分析"
        $b = "リスクマトリックス"
        $c = "リスク緩和策"
    condition:
        any of them
}

rule ProcessImprovement {
    meta:
        category = "プロセス改善"
        role = "ビジネスアナリスト"
    strings:
        $a = "業務効率化"
        $b = "プロセス再設計"
        $c = "改善策の実装"
    condition:
        any of them
}

rule BusinessIntelligence {
    meta:
        category = "ビジネスインテリジェンス"
        role = "ビジネスアナリスト"
    strings:
        $a = "BIツール"
        $b = "データダッシュボード"
        $c = "ビジネスレポート"
    condition:
        any of them
}

rule CustomerExperienceAnalysis {
    meta:
        category = "顧客体験分析"
        role = "ビジネスアナリスト"
    strings:
        $a = "顧客満足度調査"
        $b = "顧客旅行マップ"
        $c = "フィードバック分析"
    condition:
        any of them
}

rule FinancialModeling {
    meta:
        category = "財務モデリング"
        role = "ビジネスアナリスト"
    strings:
        $a = "予算計画"
        $b = "コストベネフィット分析"
        $c = "財務予測"
    condition:
        any of them
}

rule SoftwareRequirementsSpecification {
    meta:
        category = "ソフトウェア要件仕様"
        role = "ビジネスアナリスト"
    strings:
        $a = "SRSドキュメント"
        $b = "機能要件"
        $c = "非機能要件"
    condition:
        any of them
}

rule OperationalEfficiencyAnalysis {
    meta:
        category = "運用効率化分析"
        role = "ビジネスアナリスト"
    strings:
        $a = "業務プロセス分析"
        $b = "コスト削減"
        $c = "生産性向上"
    condition:
        any of them
}

rule ProductDevelopmentSupport {
    meta:
        category = "製品開発支援"
        role = "ビジネスアナリスト"
    strings:
        $a = "新製品企画"
        $b = "製品ロードマップ"
        $c = "市場適合性分析"
    condition:
        any of them
}

rule TechnologyTrendAnalysis {
    meta:
        category = "技術トレンド分析"
        role = "ビジネスアナリスト"
    strings:
        $a = "新技術評価"
        $b = "技術動向調査"
        $c = "イノベーション機会"
    condition:
        any of them
}

rule ComplianceMonitoring {
    meta:
        category = "コンプライアンス監視"
        role = "ビジネスアナリスト"
    strings:
        $a = "法規制遵守"
        $b = "コンプライアンスチェック"
        $c = "リスク評価"
    condition:
        any of them
}

rule WorkflowOptimization {
    meta:
        category = "ワークフロー最適化"
        role = "ビジネスアナリスト"
    strings:
        $a = "プロセス改善"
        $b = "効率化ツール"
        $c = "業務自動化"
    condition:
        any of them
}

rule CustomerInquiries {
    meta:
        category = "顧客問い合わせ"
        role = "カスタマーサポート"
    strings:
        $a = "問い合わせ応対"
        $b = "カスタマーケア"
        $c = "顧客対話"
    condition:
        any of them
}

rule ServiceQuality {
    meta:
        category = "サービス品質"
        role = "カスタマーサポート"
    strings:
        $a = "サービス基準"
        $b = "品質向上"
        $c = "顧客満足度"
    condition:
        any of them
}

rule ComplaintResolution {
    meta:
        category = "苦情解決"
        role = "カスタマーサポート"
    strings:
        $a = "苦情対応"
        $b = "問題解決"
        $c = "フィードバック処理"
    condition:
        any of them
}

rule ProductKnowledge {
    meta:
        category = "製品知識"
        role = "カスタマーサポート"
    strings:
        $a = "製品情報"
        $b = "トラブルシューティング"
        $c = "利用ガイド"
    condition:
        any of them
}

rule CustomerEngagement2 {
    meta:
        category = "顧客エンゲージメント"
        role = "カスタマーサポート"
    strings:
        $a = "顧客関係構築"
        $b = "エンゲージメント戦略"
        $c = "顧客コミュニティ"
    condition:
        any of them
}

rule FeedbackManagement {
    meta:
        category = "フィードバック管理"
        role = "カスタマーサポート"
    strings:
        $a = "顧客フィードバック"
        $b = "改善提案"
        $c = "顧客意見"
    condition:
        any of them
}

rule CommunicationSkills {
    meta:
        category = "コミュニケーションスキル"
        role = "カスタマーサポート"
    strings:
        $a = "効果的な対話"
        $b = "顧客対応"
        $c = "問題解決能力"
    condition:
        any of them
}

rule ResponseTime {
    meta:
        category = "レスポンス時間"
        role = "カスタマーサポート"
    strings:
        $a = "迅速な対応"
        $b = "応答時間"
        $c = "待ち時間の最小化"
    condition:
        any of them
}

rule CustomerRetention {
    meta:
        category = "顧客維持"
        role = "カスタマーサポート"
    strings:
        $a = "リピーター獲得"
        $b = "顧客ロイヤリティ"
        $c = "長期的な関係"
    condition:
        any of them
}


rule SupportChannelManagement {
    meta:
        category = "サポートチャネル管理"
        role = "カスタマーサポート"
    strings:
        $a = "複数チャネル対応"
        $b = "オムニチャネル戦略"
        $c = "効果的なチャネル選択"
    condition:
        any of them
}

rule CrisisManagement {
    meta:
        category = "危機管理"
        role = "カスタマーサポート"
    strings:
        $a = "緊急対応"
        $b = "クライシスコミュニケーション"
        $c = "危機対応計画"
    condition:
        any of them
}

rule CustomerEducation {
    meta:
        category = "顧客教育"
        role = "カスタマーサポート"
    strings:
        $a = "ユーザー教育"
        $b = "製品チュートリアル"
        $c = "利用ガイドライン"
    condition:
        any of them
}

rule CustomerJourneyMapping {
    meta:
        category = "顧客旅行マッピング"
        role = "カスタマーサポート"
    strings:
        $a = "顧客体験の追跡"
        $b = "顧客旅行分析"
        $c = "エクスペリエンス改善"
    condition:
        any of them
}

rule AutomatedSupportSystems {
    meta:
        category = "自動化サポートシステム"
        role = "カスタマーサポート"
    strings:
        $a = "チャットボット"
        $b = "自動応答システム"
        $c = "FAQデータベース"
    condition:
        any of them
}

rule InterdepartmentalCollaboration {
    meta:
        category = "部門間協力"
        role = "カスタマーサポート"
    strings:
        $a = "クロスファンクショナルチーム"
        $b = "部門間コミュニケーション"
        $c = "統合されたサポート"
    condition:
        any of them
}

rule ServiceLevelAgreements {
    meta:
        category = "サービスレベル契約"
        role = "カスタマーサポート"
    strings:
        $a = "SLA管理"
        $b = "契約遵守"
        $c = "パフォーマンス指標"
    condition:
        any of them
}

rule CrossSellingOpportunities {
    meta:
        category = "クロスセリングの機会"
        role = "カスタマーサポート"
    strings:
        $a = "追加販売提案"
        $b = "関連製品の提案"
        $c = "顧客ニーズ分析"
    condition:
        any of them
}

rule KnowledgeBaseMaintenance {
    meta:
        category = "ナレッジベースの維持"
        role = "カスタマーサポート"
    strings:
        $a = "情報データベース更新"
        $b = "FAQ更新"
        $c = "情報資源の整理"
    condition:
        any of them
}

rule SocialMediaEngagement {
    meta:
        category = "ソーシャルメディアエンゲージメント"
        role = "カスタマーサポート"
    strings:
        $a = "ソーシャルメディア対応"
        $b = "オンラインレピュテーション管理"
        $c = "顧客とのインタラクション"
    condition:
        any of them
}

rule TechnicalInquiryHandling {
    meta:
        category = "技術的問い合わせ対応"
        role = "テクニカルサポート"
    strings:
        $a = "技術的問題"
        $b = "顧客サポート"
        $c = "解決策提供"
    condition:
        any of them
}

rule TroubleshootingProcedures {
    meta:
        category = "トラブルシューティング手順"
        role = "テクニカルサポート"
    strings:
        $a = "問題診断"
        $b = "エラー解析"
        $c = "修復手順"
    condition:
        any of them
}

rule ProductKnowledge2 {
    meta:
        category = "製品知識"
        role = "テクニカルサポート"
    strings:
        $a = "製品仕様"
        $b = "使用方法"
        $c = "技術文書"
    condition:
        any of them
}

rule SoftwareSupport {
    meta:
        category = "ソフトウェアサポート"
        role = "テクニカルサポート"
    strings:
        $a = "ソフトウェアトラブルシュート"
        $b = "アプリケーションエラー"
        $c = "ソフトウェア更新"
    condition:
        any of them
}

rule HardwareSupport {
    meta:
        category = "ハードウェアサポート"
        role = "テクニカルサポート"
    strings:
        $a = "ハードウェア障害"
        $b = "修理・交換"
        $c = "デバイス設定"
    condition:
        any of them
}

rule CustomerServiceExcellence {
    meta:
        category = "顧客サービスの卓越性"
        role = "テクニカルサポート"
    strings:
        $a = "顧客満足度"
        $b = "サービス品質"
        $c = "顧客体験"
    condition:
        any of them
}

rule CommunicationSkills2 {
    meta:
        category = "コミュニケーションスキル"
        role = "テクニカルサポート"
    strings:
        $a = "効果的なコミュニケーション"
        $b = "クリアな説明"
        $c = "顧客との対話"
    condition:
        any of them
}

rule NetworkTroubleshooting {
    meta:
        category = "ネットワークトラブルシューティング"
        role = "テクニカルサポート"
    strings:
        $a = "ネットワーク接続問題"
        $b = "接続設定"
        $c = "ネットワークパフォーマンス"
    condition:
        any of them
}

rule IncidentManagement {
    meta:
        category = "インシデント管理"
        role = "テクニカルサポート"
    strings:
        $a = "障害対応"
        $b = "問題追跡"
        $c = "インシデントレポート"
    condition:
        any of them
}


rule RemoteSupport {
    meta:
        category = "リモートサポート"
        role = "テクニカルサポート"
    strings:
        $a = "遠隔支援"
        $b = "リモートデスクトップ"
        $c = "オンライントラブルシューティング"
    condition:
        any of them
}

rule TrainingAndDocumentation {
    meta:
        category = "トレーニングとドキュメンテーション"
        role = "テクニカルサポート"
    strings:
        $a = "ユーザートレーニング"
        $b = "操作マニュアル"
        $c = "製品ドキュメント"
    condition:
        any of them
}

rule SLAManagement {
    meta:
        category = "SLA管理"
        role = "テクニカルサポート"
    strings:
        $a = "サービスレベル契約"
        $b = "応答時間"
        $c = "サービス品質基準"
    condition:
        any of them
}

rule CustomerFeedbackHandling {
    meta:
        category = "顧客フィードバック対応"
        role = "テクニカルサポート"
    strings:
        $a = "顧客意見"
        $b = "改善提案"
        $c = "フィードバック分析"
    condition:
        any of them
}

rule KnowledgeBaseMaintenance2 {
    meta:
        category = "ナレッジベースの維持"
        role = "テクニカルサポート"
    strings:
        $a = "情報リソース"
        $b = "FAQの更新"
        $c = "知識データベース管理"
    condition:
        any of them
}

rule SystemDiagnostics {
    meta:
        category = "システム診断"
        role = "テクニカルサポート"
    strings:
        $a = "システム分析"
        $b = "診断ツール"
        $c = "エラー診断"
    condition:
        any of them
}

rule CrossFunctionalCollaboration {
    meta:
        category = "クロスファンクショナル協力"
        role = "テクニカルサポート"
    strings:
        $a = "部門間連携"
        $b = "チームワーク"
        $c = "共同問題解決"
    condition:
        any of them
}

rule EscalationProcedures {
    meta:
        category = "エスカレーション手順"
        role = "テクニカルサポート"
    strings:
        $a = "問題エスカレーション"
        $b = "高度なサポート"
        $c = "複雑な問題の解決"
    condition:
        any of them
}

rule UserInterfaceSupport {
    meta:
        category = "ユーザーインターフェースサポート"
        role = "テクニカルサポート"
    strings:
        $a = "UIの問題"
        $b = "操作性のサポート"
        $c = "インターフェースのナビゲーション"
    condition:
        any of them
}


rule SoftwareInstallation {
    meta:
        category = "ソフトウェアインストール"
        role = "テクニカルサポート"
    strings:
        $a = "インストール手順"
        $b = "セットアップガイド"
        $c = "ソフトウェア設定"
    condition:
        any of them
}

rule MobileDeviceSupport {
    meta:
        category = "モバイルデバイスサポート"
        role = "テクニカルサポート"
    strings:
        $a = "スマートフォンサポート"
        $b = "タブレットトラブルシューティング"
        $c = "モバイルアプリ対応"
    condition:
        any of them
}


rule ProductDemonstrations {
    meta:
        category = "製品デモンストレーション"
        role = "セールスエンジニア"
    strings:
        $a = "デモ実施"
        $b = "製品説明"
        $c = "実用例の提示"
    condition:
        any of them
}

rule CustomerNeedsAnalysis {
    meta:
        category = "顧客ニーズ分析"
        role = "セールスエンジニア"
    strings:
        $a = "ニーズの特定"
        $b = "顧客要望の理解"
        $c = "ソリューションマッチング"
    condition:
        any of them
}

rule TechnicalProposals {
    meta:
        category = "技術的な提案"
        role = "セールスエンジニア"
    strings:
        $a = "提案書作成"
        $b = "カスタマイズソリューション"
        $c = "価値提案"
    condition:
        any of them
}

rule ClientRelationshipBuilding {
    meta:
        category = "顧客との関係構築"
        role = "セールスエンジニア"
    strings:
        $a = "関係性構築"
        $b = "信頼獲得"
        $c = "長期的パートナーシップ"
    condition:
        any of them
}

rule MarketResearch3 {
    meta:
        category = "市場調査"
        role = "セールスエンジニア"
    strings:
        $a = "競合分析"
        $b = "市場動向"
        $c = "技術トレンド"
    condition:
        any of them
}

rule TechnicalTraining {
    meta:
        category = "技術トレーニング"
        role = "セールスエンジニア"
    strings:
        $a = "顧客教育"
        $b = "製品トレーニング"
        $c = "操作方法説明"
    condition:
        any of them
}

rule SalesSupport {
    meta:
        category = "セールスサポート"
        role = "セールスエンジニア"
    strings:
        $a = "営業チーム支援"
        $b = "技術質問応答"
        $c = "営業戦略の策定"
    condition:
        any of them
}

rule ProductFeedbackCollection {
    meta:
        category = "製品フィードバック収集"
        role = "セールスエンジニア"
    strings:
        $a = "顧客の声"
        $b = "市場の反応"
        $c = "製品改善提案"
    condition:
        any of them
}

rule SolutionDesign {
    meta:
        category = "ソリューション設計"
        role = "セールスエンジニア"
    strings:
        $a = "カスタムソリューション"
        $b = "システム統合"
        $c = "設計提案"
    condition:
        any of them
}


rule CustomerConsultation {
    meta:
        category = "顧客相談"
        role = "セールスエンジニア"
    strings:
        $a = "コンサルテーション"
        $b = "問題解決"
        $c = "戦略的アドバイス"
    condition:
        any of them
}

rule TechnicalDocumentation {
    meta:
        category = "技術ドキュメンテーション"
        role = "セールスエンジニア"
    strings:
        $a = "技術マニュアル"
        $b = "文書作成"
        $c = "製品仕様書"
    condition:
        any of them
}

rule ProductPresentation {
    meta:
        category = "製品プレゼンテーション"
        role = "セールスエンジニア"
    strings:
        $a = "製品説明会"
        $b = "プレゼンスキル"
        $c = "デモンストレーション"
    condition:
        any of them
}

rule CompetitiveAnalysis2 {
    meta:
        category = "競合分析"
        role = "セールスエンジニア"
    strings:
        $a = "市場ポジショニング"
        $b = "競合製品比較"
        $c = "強み弱み分析"
    condition:
        any of them
}

rule LeadQualification {
    meta:
        category = "リード資格評価"
        role = "セールスエンジニア"
    strings:
        $a = "見込み客分析"
        $b = "販売機会の識別"
        $c = "購買可能性評価"
    condition:
        any of them
}

rule PostSaleSupport {
    meta:
        category = "アフターセールスサポート"
        role = "セールスエンジニア"
    strings:
        $a = "顧客フォローアップ"
        $b = "アフターサービス"
        $c = "長期サポート"
    condition:
        any of them
}

rule TechnicalInnovation {
    meta:
        category = "技術革新"
        role = "セールスエンジニア"
    strings:
        $a = "最新技術の紹介"
        $b = "イノベーションの推進"
        $c = "新技術の適用"
    condition:
        any of them
}

rule CustomerOnboarding {
    meta:
        category = "顧客オンボーディング"
        role = "セールスエンジニア"
    strings:
        $a = "初期セットアップ支援"
        $b = "顧客トレーニング"
        $c = "製品導入支援"
    condition:
        any of them
}

rule SalesStrategyDevelopment {
    meta:
        category = "セールス戦略開発"
        role = "セールスエンジニア"
    strings:
        $a = "戦略立案"
        $b = "市場攻略計画"
        $c = "セールス目標設定"
    condition:
        any of them
}

rule CustomerExperienceOptimization {
    meta:
        category = "顧客体験最適化"
        role = "セールスエンジニア"
    strings:
        $a = "顧客満足度向上"
        $b = "顧客関係強化"
        $c = "カスタマイズサービス"
    condition:
        any of them
}

rule TechnicalIssueResolution {
    meta:
        category = "技術的問題解決"
        role = "セールスエンジニア"
    strings:
        $a = "問題解決策"
        $b = "クライアントサポート"
        $c = "技術的支援"
    condition:
        any of them
}


rule MarketStrategyDevelopment {
    meta:
        category = "市場戦略の策定"
        role = "マーケティングマネージャー"
    strings:
        $a = "マーケットセグメンテーション"
        $b = "ターゲティング戦略"
        $c = "ポジショニング"
    condition:
        any of them
}

rule CampaignManagement {
    meta:
        category = "キャンペーン管理"
        role = "マーケティングマネージャー"
    strings:
        $a = "マーケティングキャンペーン"
        $b = "広告戦略"
        $c = "プロモーション計画"
    condition:
        any of them
}

rule BrandDevelopment {
    meta:
        category = "ブランド開発"
        role = "マーケティングマネージャー"
    strings:
        $a = "ブランドアイデンティティ"
        $b = "ブランド価値"
        $c = "ブランド戦略"
    condition:
        any of them
}

rule CustomerEngagement3 {
    meta:
        category = "顧客エンゲージメント"
        role = "マーケティングマネージャー"
    strings:
        $a = "顧客関係構築"
        $b = "エンゲージメント戦略"
        $c = "顧客満足"
    condition:
        any of them
}

rule DigitalMarketing {
    meta:
        category = "デジタルマーケティング"
        role = "マーケティングマネージャー"
    strings:
        $a = "オンライン広告"
        $b = "ソーシャルメディアマーケティング"
        $c = "SEO戦略"
    condition:
        any of them
}

rule MarketingAnalytics {
    meta:
        category = "マーケティング分析"
        role = "マーケティングマネージャー"
    strings:
        $a = "データ分析"
        $b = "市場動向"
        $c = "ROI測定"
    condition:
        any of them
}

rule ContentMarketing {
    meta:
        category = "コンテンツマーケティング"
        role = "マーケティングマネージャー"
    strings:
        $a = "コンテンツ制作"
        $b = "ブログ管理"
        $c = "ストーリーテリング"
    condition:
        any of them
}

rule SocialMediaStrategy {
    meta:
        category = "ソーシャルメディア戦略"
        role = "マーケティングマネージャー"
    strings:
        $a = "ソーシャルメディア計画"
        $b = "コミュニティエンゲージメント"
        $c = "ブランドプレゼンス"
    condition:
        any of them
}

rule ProductLaunches {
    meta:
        category = "製品発売"
        role = "マーケティングマネージャー"
    strings:
        $a = "新製品発表"
        $b = "市場導入戦略"
        $c = "発売イベント"
    condition:
        any of them
}

rule MarketResearch4 {
    meta:
        category = "市場調査"
        role = "マーケティングマネージャー"
    strings:
        $a = "顧客調査"
        $b = "業界分析"
        $c = "競合分析"
    condition:
        any of them
}

rule InfluencerCollaboration {
    meta:
        category = "インフルエンサー協力"
        role = "マーケティングマネージャー"
    strings:
        $a = "インフルエンサーマーケティング"
        $b = "ブランドアンバサダー"
        $c = "協力プログラム"
    condition:
        any of them
}

rule EmailMarketing {
    meta:
        category = "Eメールマーケティング"
        role = "マーケティングマネージャー"
    strings:
        $a = "メールキャンペーン"
        $b = "顧客リテンション"
        $c = "メールリスト管理"
    condition:
        any of them
}

rule BrandingInitiatives {
    meta:
        category = "ブランディングイニシアティブ"
        role = "マーケティングマネージャー"
    strings:
        $a = "ブランドイメージ構築"
        $b = "ブランディングキャンペーン"
        $c = "コーポレートアイデンティティ"
    condition:
        any of them
}

rule AdvertisingCampaigns {
    meta:
        category = "広告キャンペーン"
        role = "マーケティングマネージャー"
    strings:
        $a = "メディア広告"
        $b = "広告戦略"
        $c = "クリエイティブ開発"
    condition:
        any of them
}

rule PricingStrategies {
    meta:
        category = "価格戦略"
        role = "マーケティングマネージャー"
    strings:
        $a = "価格設定"
        $b = "コスト分析"
        $c = "市場価値評価"
    condition:
        any of them
}

rule EventMarketing {
    meta:
        category = "イベントマーケティング"
        role = "マーケティングマネージャー"
    strings:
        $a = "イベント企画"
        $b = "展示会"
        $c = "プロモーションイベント"
    condition:
        any of them
}

rule AnalyticsAndReporting {
    meta:
        category = "分析とレポーティング"
        role = "マーケティングマネージャー"
    strings:
        $a = "市場分析"
        $b = "パフォーマンスレポート"
        $c = "データ駆動意思決定"
    condition:
        any of them
}

rule SEOAndSEMStrategies {
    meta:
        category = "SEOとSEM戦略"
        role = "マーケティングマネージャー"
    strings:
        $a = "検索エンジン最適化"
        $b = "検索エンジンマーケティング"
        $c = "オンラインビジビリティ"
    condition:
        any of them
}

rule CustomerSegmentation2 {
    meta:
        category = "顧客セグメンテーション"
        role = "マーケティングマネージャー"
    strings:
        $a = "ターゲット市場"
        $b = "顧客層分析"
        $c = "パーソナライズ戦略"
    condition:
        any of them
}

rule TestPlanning {
    meta:
        category = "テスト計画"
        role = "QAエンジニア"
    strings:
        $a = "テスト戦略"
        $b = "テストケース設計"
        $c = "リスク評価"
    condition:
        any of them
}

rule BugTracking {
    meta:
        category = "バグ追跡"
        role = "QAエンジニア"
    strings:
        $a = "バグレポート"
        $b = "問題追跡システム"
        $c = "修正優先度"
    condition:
        any of them
}

rule QualityStandards {
    meta:
        category = "ソフトウェア品質基準"
        role = "QAエンジニア"
    strings:
        $a = "品質基準"
        $b = "コードレビュー"
        $c = "コンプライアンスチェック"
    condition:
        any of them
}

rule AutomationTesting {
    meta:
        category = "自動化テスト"
        role = "QAエンジニア"
    strings:
        $a = "テスト自動化スクリプト"
        $b = "自動化ツール"
        $c = "継続的インテグレーション"
    condition:
        any of them
}

rule PerformanceTesting {
    meta:
        category = "パフォーマンステスト"
        role = "QAエンジニア"
    strings:
        $a = "負荷テスト"
        $b = "レスポンス時間"
        $c = "効率性評価"
    condition:
        any of them
}

rule SecurityTesting {
    meta:
        category = "セキュリティテスト"
        role = "QAエンジニア"
    strings:
        $a = "脆弱性分析"
        $b = "セキュリティ監査"
        $c = "侵入テスト"
    condition:
        any of them
}

rule UsabilityTesting {
    meta:
        category = "ユーザビリティテスト"
        role = "QAエンジニア"
    strings:
        $a = "ユーザーインターフェーステスト"
        $b = "ユーザーエクスペリエンス評価"
        $c = "操作性検証"
    condition:
        any of them
}

rule TestEnvironmentManagement {
    meta:
        category = "テスト環境管理"
        role = "QAエンジニア"
    strings:
        $a = "テスト環境セットアップ"
        $b = "テストデータ管理"
        $c = "環境整合性確保"
    condition:
        any of them
}

rule RegressionTesting {
    meta:
        category = "リグレッションテスト"
        role = "QAエンジニア"
    strings:
        $a = "既存機能テスト"
        $b = "変更点影響評価"
        $c = "継続的テスト"
    condition:
        any of them
}

rule TestDocumentation {
    meta:
        category = "テストドキュメンテーション"
        role = "QAエンジニア"
    strings:
        $a = "テスト計画書"
        $b = "テスト報告書"
        $c = "ドキュメンテーション管理"
    condition:
        any of them
}

rule FunctionalTesting {
    meta:
        category = "機能テスト"
        role = "QAエンジニア"
    strings:
        $a = "機能要件検証"
        $b = "機能検証テスト"
        $c = "シナリオベーステスト"
    condition:
        any of them
}

rule ContinuousIntegration2 {
    meta:
        category = "継続的インテグレーション"
        role = "QAエンジニア"
    strings:
        $a = "ビルド自動化"
        $b = "CIツール"
        $c = "デプロイメントプロセス"
    condition:
        any of them
}

rule RiskBasedTesting {
    meta:
        category = "リスクベーステスト"
        role = "QAエンジニア"
    strings:
        $a = "リスク評価"
        $b = "優先度付け"
        $c = "リスク軽減戦略"
    condition:
        any of them
}

rule TestAutomationFramework {
    meta:
        category = "テスト自動化フレームワーク"
        role = "QAエンジニア"
    strings:
        $a = "自動化フレームワーク開発"
        $b = "テストスクリプト"
        $c = "自動化戦略"
    condition:
        any of them
}

rule ExploratoryTesting {
    meta:
        category = "探索的テスト"
        role = "QAエンジニア"
    strings:
        $a = "アドホックテスト"
        $b = "テストセッション"
        $c = "探索的検証"
    condition:
        any of them
}

rule QualityMetricsAnalysis {
    meta:
        category = "品質指標分析"
        role = "QAエンジニア"
    strings:
        $a = "品質KPI"
        $b = "パフォーマンス指標分析"
        $c = "品質改善計測"
    condition:
        any of them
}

rule MobileTesting {
    meta:
        category = "モバイルテスト"
        role = "QAエンジニア"
    strings:
        $a = "モバイルアプリテスト"
        $b = "クロスプラットフォーム検証"
        $c = "モバイルデバイス対応"
    condition:
        any of them
}

rule TestCoverageAnalysis {
    meta:
        category = "テストカバレッジ分析"
        role = "QAエンジニア"
    strings:
        $a = "カバレッジレポート"
        $b = "コードカバレッジ"
        $c = "テスト範囲最適化"
    condition:
        any of them
}

rule AccessibilityTesting {
    meta:
        category = "アクセシビリティテスト"
        role = "QAエンジニア"
    strings:
        $a = "アクセス可能性評価"
        $b = "WCAG準拠テスト"
        $c = "ユーザビリティ改善"
    condition:
        any of them
}

rule InterfaceDesign {
    meta:
        category = "インターフェースデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "UIデザイン"
        $b = "ビジュアルデザイン"
        $c = "インタラクティブ要素"
    condition:
        any of them
}

rule UserExperienceAnalysis {
    meta:
        category = "ユーザーエクスペリエンス分析"
        role = "UI/UXデザイナー"
    strings:
        $a = "UXリサーチ"
        $b = "ユーザーニーズ分析"
        $c = "エクスペリエンスマッピング"
    condition:
        any of them
}

rule Prototyping {
    meta:
        category = "プロトタイピング"
        role = "UI/UXデザイナー"
    strings:
        $a = "プロトタイプ作成"
        $b = "インタラクションデザイン"
        $c = "デザインコンセプト検証"
    condition:
        any of them
}

rule UsabilityTesting2 {
    meta:
        category = "ユーザビリティテスト"
        role = "UI/UXデザイナー"
    strings:
        $a = "利用者テスト"
        $b = "フィードバック収集"
        $c = "ユーザビリティ評価"
    condition:
        any of them
}

rule AccessibilityDesign {
    meta:
        category = "アクセシビリティデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "アクセス可能性"
        $b = "インクルーシブデザイン"
        $c = "WCAGガイドライン"
    condition:
        any of them
}

rule ResponsiveDesign {
    meta:
        category = "レスポンシブデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "フレキシブルレイアウト"
        $b = "デバイス互換性"
        $c = "画面サイズ適応"
    condition:
        any of them
}

rule GraphicDesign {
    meta:
        category = "グラフィックデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "ビジュアルアセット"
        $b = "グラフィックスタイル"
        $c = "ビジュアルコンセプト"
    condition:
        any of them
}

rule InteractionDesign {
    meta:
        category = "インタラクションデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "ユーザーインタラクション"
        $b = "動的要素"
        $c = "インタラクティブ体験"
    condition:
        any of them
}

rule UserFlowMapping {
    meta:
        category = "ユーザーフローマッピング"
        role = "UI/UXデザイナー"
    strings:
        $a = "フローダイアグラム"
        $b = "ナビゲーション設計"
        $c = "ユーザージャーニー"
    condition:
        any of them
}


rule VisualHierarchy {
    meta:
        category = "ビジュアル階層"
        role = "UI/UXデザイナー"
    strings:
        $a = "視覚的優先順位"
        $b = "レイアウト設計"
        $c = "情報アーキテクチャ"
    condition:
        any of them
}

rule ColorTheoryApplication {
    meta:
        category = "カラー理論の適用"
        role = "UI/UXデザイナー"
    strings:
        $a = "カラースキーム"
        $b = "色彩心理"
        $c = "ブランドカラー"
    condition:
        any of them
}

rule TypographyDesign {
    meta:
        category = "タイポグラフィーデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "フォント選択"
        $b = "テキストスタイリング"
        $c = "可読性"
    condition:
        any of them
}

rule DesignSystemCreation {
    meta:
        category = "デザインシステム作成"
        role = "UI/UXデザイナー"
    strings:
        $a = "UIコンポーネント"
        $b = "スタイルガイド"
        $c = "再利用可能な要素"
    condition:
        any of them
}

rule MobileAppDesign {
    meta:
        category = "モバイルアプリデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "モバイルUI"
        $b = "タッチインタラクション"
        $c = "アプリユーザビリティ"
    condition:
        any of them
}

rule WebDesignTrends {
    meta:
        category = "ウェブデザイントレンド"
        role = "UI/UXデザイナー"
    strings:
        $a = "最新ウェブデザイン"
        $b = "イノベーティブなレイアウト"
        $c = "トレンド分析"
    condition:
        any of them
}

rule UIUXStrategy {
   meta:
       category = "UI/UX戦略"
       role = "UI/UXデザイナー"
   strings:
       $a = "戦略的デザイン計画"
       $b = "ユーザーセンタードアプローチ"
       $c = "デザイン思考"
   condition:
       any of them
}

rule DesignFeedbackLoop {
    meta:
        category = "デザインフィードバックループ"
        role = "UI/UXデザイナー"
    strings:
        $a = "反復デザインプロセス"
        $b = "改善のためのフィードバック"
        $c = "継続的な改良"
    condition:
        any of them
}

rule CreativeCollaboration {
    meta:
        category = "クリエイティブな協力"
        role = "UI/UXデザイナー"
    strings:
        $a = "チームワーク"
        $b = "デザイン協議"
        $c = "アイデア共有"
    condition:
        any of them
}

rule UserTesting {
    meta:
        category = "ユーザーテスト"
        role = "UI/UXデザイナー"
    strings:
        $a = "利用者フィードバック"
        $b = "テストシナリオ"
        $c = "UX評価"
    condition:
        any of them
}

rule CrossPlatformDesign {
    meta:
        category = "クロスプラットフォームデザイン"
        role = "UI/UXデザイナー"
    strings:
        $a = "マルチプラットフォーム互換性"
        $b = "一貫性のあるユーザー体験"
        $c = "異なるデバイス対応"
    condition:
        any of them
}

rule RecruitmentStrategies {
    meta:
        category = "採用戦略"
        role = "HRマネージャー"
    strings:
        $a = "人材獲得"
        $b = "採用プロセス"
        $c = "候補者スクリーニング"
    condition:
        any of them
}

rule EmployeeEngagement {
    meta:
        category = "従業員エンゲージメント"
        role = "HRマネージャー"
    strings:
        $a = "従業員満足度"
        $b = "エンゲージメント活動"
        $c = "モチベーション向上"
    condition:
        any of them
}

rule PerformanceManagement {
    meta:
        category = "パフォーマンス管理"
        role = "HRマネージャー"
    strings:
        $a = "評価システム"
        $b = "目標設定"
        $c = "パフォーマンスレビュー"
    condition:
        any of them
}

rule TrainingAndDevelopment {
    meta:
        category = "トレーニングと開発"
        role = "HRマネージャー"
    strings:
        $a = "従業員トレーニング"
        $b = "キャリア開発計画"
        $c = "スキル向上"
    condition:
        any of them
}

rule EmployeeRelations {
    meta:
        category = "従業員関係"
        role = "HRマネージャー"
    strings:
        $a = "従業員コミュニケーション"
        $b = "紛争解決"
        $c = "職場環境改善"
    condition:
        any of them
}

rule HRPolicyDevelopment {
    meta:
        category = "HRポリシー開発"
        role = "HRマネージャー"
    strings:
        $a = "人事方針"
        $b = "ポリシー実施"
        $c = "コンプライアンス"
    condition:
        any of them
}

rule CompensationAndBenefits {
    meta:
        category = "給与と福利厚生"
        role = "HRマネージャー"
    strings:
        $a = "給与体系"
        $b = "福利厚生プログラム"
        $c = "報酬管理"
    condition:
        any of them
}

rule TalentRetention {
    meta:
        category = "タレントリテンション"
        role = "HRマネージャー"
    strings:
        $a = "従業員維持戦略"
        $b = "離職率低減"
        $c = "キャリアパスの提供"
    condition:
        any of them
}

rule DiversityAndInclusion {
    meta:
        category = "多様性と包摂性"
        role = "HRマネージャー"
    strings:
        $a = "多様性イニシアティブ"
        $b = "インクルージョンプログラム"
        $c = "文化的意識向上"
    condition:
        any of them
}



rule WorkforcePlanning {
    meta:
        category = "労働力計画"
        role = "HRマネージャー"
    strings:
        $a = "人員計画"
        $b = "リソース配分"
        $c = "将来の人員ニーズ"
    condition:
        any of them
}

rule EmployeeWellbeing {
    meta:
        category = "従業員のウェルビーイング"
        role = "HRマネージャー"
    strings:
        $a = "メンタルヘルスサポート"
        $b = "ワークライフバランス"
        $c = "健康促進プログラム"
    condition:
        any of them
}

rule LegalCompliance {
    meta:
        category = "法的コンプライアンス"
        role = "HRマネージャー"
    strings:
        $a = "労働法遵守"
        $b = "法的リスク管理"
        $c = "コンプライアンストレーニング"
    condition:
        any of them
}

rule EmployeeOnboarding {
    meta:
        category = "新入社員オンボーディング"
        role = "HRマネージャー"
    strings:
        $a = "オリエンテーションプログラム"
        $b = "入社初日体験"
        $c = "統合プロセス"
    condition:
        any of them
}

rule OrganizationalDevelopment {
    meta:
        category = "組織開発"
        role = "HRマネージャー"
    strings:
        $a = "組織変革"
        $b = "リーダーシップ開発"
        $c = "組織文化構築"
    condition:
        any of them
}

rule ConflictResolution {
    meta:
        category = "紛争解決"
        role = "HRマネージャー"
    strings:
        $a = "職場の紛争調停"
        $b = "コミュニケーションの促進"
        $c = "解決策の提案"
    condition:
        any of them
}

rule SuccessionPlanning {
    meta:
        category = "後継者計画"
        role = "HRマネージャー"
    strings:
        $a = "リーダーシップの継承"
        $b = "キャリアパス管理"
        $c = "組織の将来計画"
    condition:
        any of them
}

rule EmployeeFeedback {
    meta:
        category = "従業員フィードバック"
        role = "HRマネージャー"
    strings:
        $a = "従業員意見調査"
        $b = "フィードバックセッション"
        $c = "改善点の特定"
    condition:
        any of them
}

rule HRAnalytics {
    meta:
        category = "HRアナリティクス"
        role = "HRマネージャー"
    strings:
        $a = "人事データ分析"
        $b = "パフォーマンス指標"
        $c = "人材管理の洞察"
    condition:
        any of them
}

rule RetentionStrategies {
    meta:
        category = "リテンション戦略"
        role = "HRマネージャー"
    strings:
        $a = "従業員維持策"
        $b = "退職防止プログラム"
        $c = "職場の充実感向上"
    condition:
        any of them
}

rule CareerDevelopmentPrograms {
    meta:
        category = "キャリア開発プログラム"
        role = "HRマネージャー"
    strings:
        $a = "職業訓練"
        $b = "キャリアパスの提供"
        $c = "スキルアップの機会"
    condition:
        any of them
}

rule FinancialPlanning {
    meta:
        category = "財務計画"
        role = "財務マネージャー"
    strings:
        $a = "予算計画"
        $b = "長期財務戦略"
        $c = "財務目標設定"
    condition:
        any of them
}

rule BudgetManagement2 {
    meta:
        category = "予算管理"
        role = "財務マネージャー"
    strings:
        $a = "予算割り当て"
        $b = "支出追跡"
        $c = "コストコントロール"
    condition:
        any of them
}

rule RiskAssessment2 {
    meta:
        category = "リスク評価"
        role = "財務マネージャー"
    strings:
        $a = "財務リスク分析"
        $b = "リスクマネジメント"
        $c = "市場変動評価"
    condition:
        any of them
}

rule CashFlowManagement {
    meta:
        category = "キャッシュフロー管理"
        role = "財務マネージャー"
    strings:
        $a = "収入管理"
        $b = "支出計画"
        $c = "流動性分析"
    condition:
        any of them
}

rule InvestmentAnalysis {
    meta:
        category = "投資分析"
        role = "財務マネージャー"
    strings:
        $a = "投資機会評価"
        $b = "ROI分析"
        $c = "資産ポートフォリオ"
    condition:
        any of them
}

rule FinancialReporting {
    meta:
        category = "財務報告"
        role = "財務マネージャー"
    strings:
        $a = "財務諸表"
        $b = "収益報告"
        $c = "財務状況分析"
    condition:
        any of them
}

rule TaxCompliance {
    meta:
        category = "税務コンプライアンス"
        role = "財務マネージャー"
    strings:
        $a = "税金申告"
        $b = "税法遵守"
        $c = "税務監査対応"
    condition:
        any of them
}

rule InternalControls {
    meta:
        category = "内部統制"
        role = "財務マネージャー"
    strings:
        $a = "財務プロセスの管理"
        $b = "内部統制システム"
        $c = "不正防止"
    condition:
        any of them
}

rule CostReductionStrategies {
    meta:
        category = "コスト削減戦略"
        role = "財務マネージャー"
    strings:
        $a = "支出削減"
        $b = "効率化"
        $c = "コスト管理"
    condition:
        any of them
}


rule FinancialForecasting {
    meta:
        category = "財務予測"
        role = "財務マネージャー"
    strings:
        $a = "収益予測"
        $b = "市場動向の予測"
        $c = "将来的なキャッシュフロー"
    condition:
        any of them
}

rule DebtManagement {
    meta:
        category = "債務管理"
        role = "財務マネージャー"
    strings:
        $a = "借入金の管理"
        $b = "負債再構築"
        $c = "金利リスク管理"
    condition:
        any of them
}

rule FinancialPolicyDevelopment {
    meta:
        category = "財務方針開発"
        role = "財務マネージャー"
    strings:
        $a = "財務ポリシー立案"
        $b = "内部財務規定"
        $c = "財務管理ガイドライン"
    condition:
        any of them
}

rule LiquidityManagement {
    meta:
        category = "流動性管理"
        role = "財務マネージャー"
    strings:
        $a = "流動資産の最適化"
        $b = "現金管理"
        $c = "流動比率改善"
    condition:
        any of them
}

rule FinancialRiskManagement {
    meta:
        category = "財務リスク管理"
        role = "財務マネージャー"
    strings:
        $a = "財務リスクの識別"
        $b = "リスク軽減策"
        $c = "市場変動への対応"
    condition:
        any of them
}

rule CapitalInvestmentDecisions {
    meta:
        category = "資本投資決定"
        role = "財務マネージャー"
    strings:
        $a = "投資評価"
        $b = "資本費用の計算"
        $c = "投資の収益率"
    condition:
        any of them
}

rule MergersAndAcquisitions2 {
    meta:
        category = "合併と買収"
        role = "財務マネージャー"
    strings:
        $a = "M&A戦略"
        $b = "買収案件の評価"
        $c = "統合プロセス管理"
    condition:
        any of them
}

rule AssetManagement {
    meta:
        category = "資産管理"
        role = "財務マネージャー"
    strings:
        $a = "資産ポートフォリオ"
        $b = "資産評価"
        $c = "資産運用戦略"
    condition:
        any of them
}

rule CorporateFinanceStrategy {
    meta:
        category = "企業財務戦略"
        role = "財務マネージャー"
    strings:
        $a = "財務戦略立案"
        $b = "資本構造最適化"
        $c = "財務効率性"
    condition:
        any of them
}

rule FinancialTechnologyInnovation {
    meta:
        category = "財務技術革新"
        role = "財務マネージャー"
    strings:
        $a = "フィンテックソリューション"
        $b = "データ分析の最適化"
    condition:
        any of them
}

rule InventoryManagement {
    meta:
        category = "在庫管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "在庫最適化"
        $b = "在庫レベル監視"
        $c = "在庫回転率"
    condition:
        any of them
}

rule LogisticsOptimization {
    meta:
        category = "物流最適化"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "配送効率化"
        $b = "物流コスト削減"
        $c = "輸送ルート計画"
    condition:
        any of them
}

rule SupplyChainRiskManagement {
    meta:
        category = "サプライチェーンリスク管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "リスク評価"
        $b = "サプライチェーン中断"
        $c = "リスク軽減策"
    condition:
        any of them
}

rule SupplierRelationshipManagement {
    meta:
        category = "供給者関係管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "供給者評価"
        $b = "パートナーシップ構築"
        $c = "契約管理"
    condition:
        any of them
}

rule DemandForecasting {
    meta:
        category = "需要予測"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "販売予測"
        $b = "市場動向分析"
        $c = "需要計画"
    condition:
        any of them
}

rule ProcurementStrategies {
    meta:
        category = "調達戦略"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "調達計画"
        $b = "コスト削減"
        $c = "調達プロセス最適化"
    condition:
        any of them
}

rule SustainableSupplyChain {
    meta:
        category = "持続可能なサプライチェーン"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "エコフレンドリーな取り組み"
        $b = "持続可能性基準"
        $c = "グリーン供給チェーン"
    condition:
        any of them
}

rule SupplyChainIntegration {
    meta:
        category = "サプライチェーン統合"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "統合システム"
        $b = "プロセス同期"
        $c = "情報共有"
    condition:
        any of them
}


rule QualityControlInSupplyChain {
    meta:
        category = "サプライチェーンにおける品質管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "品質基準"
        $b = "品質監査"
        $c = "サプライヤー品質管理"
    condition:
        any of them
}

rule InventoryOptimization {
    meta:
        category = "在庫最適化"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "在庫削減"
        $b = "在庫回転改善"
        $c = "最適在庫レベル"
    condition:
        any of them
}

rule SupplyChainTechnology {
    meta:
        category = "サプライチェーン技術"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "最新技術導入"
        $b = "オートメーションツール"
        $c = "テクノロジーによる効率化"
    condition:
        any of them
}

rule SupplyChainCostReduction {
    meta:
        category = "サプライチェーンコスト削減"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "コスト削減戦略"
        $b = "効率的な運用"
        $c = "全体コストの最適化"
    condition:
        any of them
}

rule SupplierPerformanceManagement {
    meta:
        category = "サプライヤー性能管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "サプライヤー評価"
        $b = "パフォーマンス指標"
        $c = "サプライヤー改善"
    condition:
        any of them
}

rule SupplyChainVisibility {
    meta:
        category = "サプライチェーンの透明性"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "サプライチェーン追跡"
        $b = "情報の可視化"
        $c = "リアルタイムデータ"
    condition:
        any of them
}

rule EmergencyResponsePlanning {
    meta:
        category = "緊急対応計画"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "危機管理"
        $b = "緊急事態対応計画"
        $c = "リスクシナリオの準備"
    condition:
        any of them
}

rule StrategicSourcing {
    meta:
        category = "戦略的調達"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "サプライヤーセレクション"
        $b = "調達戦略"
        $c = "コスト効果的な調達"
    condition:
        any of them
}

rule TransportationManagement {
    meta:
        category = "輸送管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "輸送効率化"
        $b = "物流コスト削減"
        $c = "配送ルート最適化"
    condition:
        any of them
}

rule WarehouseManagement {
    meta:
        category = "倉庫管理"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "在庫保管"
        $b = "倉庫効率化"
        $c = "物流センター運営"
    condition:
        any of them
}

rule SupplyChainCompliance {
    meta:
        category = "サプライチェーンコンプライアンス"
        role = "サプライチェーンマネージャー"
    strings:
        $a = "規制遵守"
        $b = "コンプライアンス基準"
        $c = "法的要件の準拠"
    condition:
        any of them
}

rule ContractManagement {
    meta:
        category = "契約管理"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "契約書作成"
        $b = "契約交渉"
        $c = "契約監査"
    condition:
        any of them
}

rule LegalRiskAnalysis {
    meta:
        category = "法的リスク分析"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "リスク評価"
        $b = "法的問題の特定"
        $c = "リスク軽減戦略"
    condition:
        any of them
}

rule IntellectualPropertyProtection {
    meta:
        category = "知的財産権保護"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "著作権登録"
        $b = "特許申請"
        $c = "商標保護"
    condition:
        any of them
}

rule LegalCompliance2 {
    meta:
        category = "法的コンプライアンス"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "法規制遵守"
        $b = "コンプライアンス監査"
        $c = "法的アドバイザリー"
    condition:
        any of them
}

rule DisputeResolution {
    meta:
        category = "紛争解決"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "交渉による解決"
        $b = "訴訟手続き"
        $c = "仲裁"
    condition:
        any of them
}

rule EmploymentLawAdvisory {
    meta:
        category = "労働法アドバイザリー"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "雇用法規遵守"
        $b = "労働紛争対応"
        $c = "労働契約管理"
    condition:
        any of them
}

rule CorporateGovernance {
    meta:
        category = "コーポレートガバナンス"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "企業統治基準"
        $b = "取締役会の法的サポート"
        $c = "企業倫理"
    condition:
        any of them
}

rule RegulatoryAffairs {
    meta:
        category = "規制対応"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "法規制の監視"
        $b = "政策変更への対応"
        $c = "規制対応戦略"
    condition:
        any of them
}

rule MergersAndAcquisitions3 {
    meta:
        category = "合併と買収"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "M&A取引サポート"
        $b = "デューデリジェンス"
        $c = "取引構造化"
    condition:
        any of them
}


rule DataPrivacyAndSecurity {
    meta:
        category = "データプライバシーとセキュリティ"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "個人情報保護法規遵守"
        $b = "データセキュリティポリシー"
        $c = "情報漏洩対応"
    condition:
        any of them
}

rule ContractNegotiation2 {
    meta:
        category = "契約交渉"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "交渉戦略"
        $b = "条項の合意"
        $c = "リスク管理"
    condition:
        any of them
}

rule LitigationManagement {
    meta:
        category = "訴訟管理"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "訴訟手続き"
        $b = "法的代理人の管理"
        $c = "裁判対策"
    condition:
        any of them
}

rule ComplianceTraining {
    meta:
        category = "コンプライアンストレーニング"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "法規制トレーニング"
        $b = "従業員教育"
        $c = "コンプライアンスプログラム"
    condition:
        any of them
}

rule IntellectualPropertyManagement {
    meta:
        category = "知的財産管理"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "IP管理戦略"
        $b = "特許・著作権の保護"
        $c = "IPポートフォリオ"
    condition:
        any of them
}

rule CorporatePolicyDevelopment {
    meta:
        category = "企業ポリシー開発"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "ポリシー策定"
        $b = "法的ガイドライン"
        $c = "コーポレートガバナンス"
    condition:
        any of them
}

rule LegalDocumentReview {
    meta:
        category = "法的文書のレビュー"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "文書審査"
        $b = "契約書の検証"
        $c = "法的適合性の確認"
    condition:
        any of them
}

rule EthicalCompliance {
    meta:
        category = "倫理的コンプライアンス"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "倫理基準の遵守"
        $b = "企業倫理ポリシー"
        $c = "倫理的問題への対応"
    condition:
        any of them
}

rule InternationalLaw {
    meta:
        category = "国際法"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "国際取引法"
        $b = "多国籍企業の法的問題"
        $c = "国際商標"
    condition:
        any of them
}

rule LegalProjectManagement {
    meta:
        category = "法的プロジェクト管理"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "法的プロジェクトの計画"
        $b = "法的イニシアティブの実行"
        $c = "プロジェクトリソースの管理"
    condition:
        any of them
}

rule EmploymentCompliance {
    meta:
        category = "雇用コンプライアンス"
        role = "リーガルアドバイザー/法務担当者"
    strings:
        $a = "労働法の遵守"
        $b = "雇用関連の法的問題"
        $c = "雇用契約の法的審査"
    condition:
        any of them
}
