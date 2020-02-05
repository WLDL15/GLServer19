# -*- coding: utf-8 -*-

#システム1/5 38
AlphaItemDef.seed_once(:id,
    { id: 45, dseq:'1', ddescription: '開発システムの基本的/アーキテクチャ/（モジュール構造）を理解している。例えば、Railsの場合はMVCの理解', alpha_state_def_id: 6, item_level:1, item_point:4 },
    { id: 46, dseq:'2', ddescription: 'システムを開発する手順を理解している', alpha_state_def_id: 6, item_level:1, item_point:3 },
    { id: 47, dseq:'3', ddescription: '開発用プログラミング言語を決定している', alpha_state_def_id: 6, item_level:1, item_point:3 },
    { id: 48, dseq:'4', ddescription: '基本的/アーキテクチャ/の特徴を理解している', alpha_state_def_id: 6, item_level:1, item_point:5 },
    { id: 49, dseq:'5', ddescription: '基本/アーキテクチャ/の利用法を理解している', alpha_state_def_id: 6, item_level:2, item_point:4 },
    { id: 50, dseq:'6', ddescription: '重要なライブラリ(jQuery)を決定している', alpha_state_def_id: 6, item_level:2, item_point:6 },
    { id: 51, dseq:'7', ddescription: 'システムを構成する主要コンポーネントの構造と関連(ソフトウェア/アーキテクチャ/)を設計する意義を理解している', alpha_state_def_id: 6, item_level:3, item_point:4 }
)

# システム2/5 44
AlphaItemDef.seed_once(:id,
    { id: 52, dseq:'1', ddescription: '/プロダクト/の主要機能の処理の流れを理解している', alpha_state_def_id: 7, item_level:1, item_point:3 },
    { id: 53, dseq:'2', ddescription: '/プロダクト/で使われるデータの/スキーマ図/を設計している', alpha_state_def_id: 7, item_level:1, item_point:4 },
    { id: 54, dseq:'3', ddescription: '/プロダクト/の主要な画面の種類を識別している', alpha_state_def_id: 7, item_level:1, item_point:8 },
    { id: 55, dseq:'4', ddescription: '主要なユーザタイプを考慮し、/プロダクト/の主要機能で使われるデータの/スキーマ図/を作成している', alpha_state_def_id: 7, item_level:2, item_point:4 },
    { id: 56, dseq:'5', ddescription: '主要なユーザタイプを考慮し、プロダクトの主要機能の画面のレイアウトを作成している', alpha_state_def_id: 7, item_level:2, item_point:8 },
    { id: 57, dseq:'6', ddescription: '/オーナ/は、設計案がスコープを満たしていることを確認している', alpha_state_def_id: 7, item_level:2, item_point:5 }
)

# システム3/5 51
AlphaItemDef.seed_once(:id,
    { id: 58, dseq:'1', ddescription: '/スプリントゴール/を満たすシステムをデモできる', alpha_state_def_id: 8, item_level:1, item_point:6 },
    { id: 59, dseq:'2', ddescription: 'バクなどがあってデモできない機能を識別できている', alpha_state_def_id: 8, item_level:1, item_point:6 },
    { id: 60, dseq:'3', ddescription: '主要なユーザタイプを区別して、システムをデモできる', alpha_state_def_id: 8, item_level:2, item_point:6 },
    { id: 61, dseq:'4', ddescription: '/オーナ/は、/インクリメント/を実行して機能を利用できる', alpha_state_def_id: 8, item_level:2, item_point:5 },
    { id: 62, dseq:'5', ddescription: 'メンバは単体テストを実施し、定義条件を満足したタスクをDoneとしている', alpha_state_def_id: 8, item_level:4, item_point:5 },
    { id: 63, dseq:'6', ddescription: '開発チームは結合テストを実施し、定義条件を満足したタスクをDoneとしている', alpha_state_def_id: 8, item_level:4, item_point:6 },
    { id: 64, dseq:'7', ddescription: '/オーナ/は、/インクリメント/を実行して機能を利用できる', alpha_state_def_id: 8, item_level:5, item_point:5 }
)

# システム4/5 54
AlphaItemDef.seed_once(:id,
    { id: 65, dseq:'1', ddescription: '/スプリントゴール/を満し、主要機能がバグなく動作する/インクリメント/をリリースしている', alpha_state_def_id: 9, item_level:1, item_point:3 },
    { id: 66, dseq:'2', ddescription: 'バクなどがあって実行できない機能を識別できている', alpha_state_def_id: 9, item_level:1, item_point:4 },
    { id: 67, dseq:'3', ddescription: '主要なユーザタイプを区別し、/スプリントゴール/を満し、主要機能がバグなく動作する/インクリメント/をリリースしている', alpha_state_def_id: 9, item_level:2, item_point:3 },
    { id: 68, dseq:'4', ddescription: '運用環境において、共有されたソースを用いて/インクリメント/がビルドできている', alpha_state_def_id: 9, item_level:5, item_point:3 },
    { id: 69, dseq:'5', ddescription: '運用環境において、機能テストが実施され、/スプリントバックログ/のうちで、Doneした項目と未完了の項目を識別している', alpha_state_def_id: 9, item_level:5, item_point:3 },
    { id: 70, dseq:'6', ddescription: '/ユーザストーリ/の実際の場面における様々な条件を考えて機能テストを実施している', alpha_state_def_id: 9, item_level:5, item_point:4 },
    { id: 71, dseq:'7', ddescription: 'チーム以外の利用者は、運用環境において/インクリメント/を実行して機能を利用できる', alpha_state_def_id: 9, item_level:5, item_point:3 }
)

# システム5/5 58
AlphaItemDef.seed_once(:id,
    { id: 72, dseq:'1', ddescription: '開発者が、/プロダクト/の主要な機能がバグなく利用できる', alpha_state_def_id: 10, item_level:1, item_point:4 },
    { id: 73, dseq:'2', ddescription: '開発者以外が、/プロダクト/の主要な機能がバグなく利用できる', alpha_state_def_id: 10, item_level:2, item_point:3 },
    { id: 74, dseq:'3', ddescription: 'システムの主要な機能がテストされている', alpha_state_def_id: 10, item_level:5, item_point:3 },
    { id: 75, dseq:'4', ddescription: 'システムの処理能力や応答時間が要求通りであるかテストされている', alpha_state_def_id: 10, item_level:5, item_point:3 },
    { id: 76, dseq:'5', ddescription: '/ユーザインタフェース/が使いやすいかテストされている', alpha_state_def_id: 10, item_level:5, item_point:8 },
    { id: 77, dseq:'6', ddescription: '高負荷状態（大量の入力データや同時多数ユーザなど）がテストされている', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 78, dseq:'7', ddescription: 'エラー処理や回復機能が正常に動作するかテストされている', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 79, dseq:'8', ddescription: '/ユーザドキュメント/が利用できる', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 80, dseq:'9', ddescription: 'リリース用のパッケージが作成され、その機能や品質レベルが文書化されている', alpha_state_def_id: 10, item_level:5, item_point:4 }
)