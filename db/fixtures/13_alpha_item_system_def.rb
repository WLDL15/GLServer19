# -*- coding: utf-8 -*-

#システム1/5 38
AlphaItemDef.seed_once(:id,
    { id: 38, dseq:'1', ddescription: 'システムを構成する主要コンポーネントの構造と関連(ソフトウェア/アーキテクチャ/)を設計する意義を理解している', alpha_state_def_id: 6, item_level:3, item_point:4 },
    { id: 39, dseq:'2', ddescription: '品質(効率性、使用性、信頼性など)、開発効率、学習容易さで、/アーキテクチャ/に求める要件を順位付けしている', alpha_state_def_id: 6, item_level:2, item_point:4 },
    { id: 40, dseq:'3', ddescription: '/アーキテクチャ/を決定し、そのアーキテクチャが要件を満たしていることを確認している', alpha_state_def_id: 6, item_level:2, item_point:4 },
    { id: 41, dseq:'4', ddescription: 'ソフトウェアフレームワーク(Rails)や、重要なライブラリ(jQuery)、開発用のプログラミング言語を決定している', alpha_state_def_id: 6, item_level:2, item_point:6 },
    { id: 42, dseq:'5', ddescription: 'アーキテクチャ図を作成している', alpha_state_def_id: 6, item_level:2, item_point:4 },
    { id: 43, dseq:'6', ddescription: 'オーナと開発チームは/アーキテクチャ/がシンプルで、要件を満たしていることに同意している', alpha_state_def_id: 6, item_level:2, item_point:5 }
)

# システム2/5 44
AlphaItemDef.seed_once(:id,
    { id: 44, dseq:'1', ddescription: '/コーディング規約/を作成し、チーム全員がそれに従うことに同意している', alpha_state_def_id: 7, item_level:2, item_point:3 },
    { id: 45, dseq:'2', ddescription: '/プロダクト/の主要機能の処理フローを/アクティビティ図/で記述している', alpha_state_def_id: 7, item_level:2, item_point:4 },
    { id: 46, dseq:'3', ddescription: '/プロダクト/の主要機能で使われるデータの/スキーマ図/を作成している', alpha_state_def_id: 7, item_level:2, item_point:8 },
    { id: 47, dseq:'4', ddescription: '/プロダクト/の主要機能の画面のレイアウトを作成している', alpha_state_def_id: 7, item_level:2, item_point:3 },
    { id: 48, dseq:'5', ddescription: '運用環境(ハードウェア、ネットワーク環境、基本ソフトウェア、ミドルウェア、ライブラリなど)を、バージョンを含め決定している', alpha_state_def_id: 7, item_level:2, item_point:5 },
    { id: 49, dseq:'6', ddescription: '運用環境をインストールでき、運用環境においてサンプルアプリをビルドし、実行できることを確認している', alpha_state_def_id: 7, item_level:2, item_point:5 },
    { id: 50, dseq:'7', ddescription: '/オーナ/と開発チームは、概略設計案が要件を満たしていることを確認している', alpha_state_def_id: 7, item_level:2, item_point:5 }
)

# システム3/5 51
AlphaItemDef.seed_once(:id,
    { id: 51, dseq:'1', ddescription: 'メンバは単体テストを実施し、定義条件を満足したタスクをDoneとしている', alpha_state_def_id: 8, item_level:4, item_point:5 },
    { id: 52, dseq:'2', ddescription: '開発チームは結合テストを実施し、定義条件を満足したタスクをDoneとしている', alpha_state_def_id: 8, item_level:4, item_point:6 },
    { id: 53, dseq:'3', ddescription: '/オーナ/は、/インクリメント/を実行して機能を利用できる', alpha_state_def_id: 8, item_level:5, item_point:5 }
)

# システム4/5 54
AlphaItemDef.seed_once(:id,
    { id: 54, dseq:'1', ddescription: '運用環境において、共有されたソースを用いて/インクリメント/がビルドできている', alpha_state_def_id: 9, item_level:5, item_point:3 },
    { id: 55, dseq:'2', ddescription: '運用環境において、機能テストが実施され、/スプリントバックログ/のうちで、Doneした項目と未完了の項目を識別している', alpha_state_def_id: 9, item_level:5, item_point:3 },
    { id: 56, dseq:'3', ddescription: '/ユーザストーリ/の実際の場面における様々な条件を考えて機能テストを実施している', alpha_state_def_id: 9, item_level:5, item_point:4 },
    { id: 57, dseq:'4', ddescription: 'チーム以外の利用者は、運用環境において/インクリメント/を実行して機能を利用できる', alpha_state_def_id: 9, item_level:5, item_point:3 }
)

# システム5/5 58
AlphaItemDef.seed_once(:id,
    { id: 58, dseq:'1', ddescription: 'システムの主要な機能がテストされている', alpha_state_def_id: 10, item_level:5, item_point:6 },
    { id: 59, dseq:'2', ddescription: 'システムの処理能力や応答時間が要求通りであるかテストされている', alpha_state_def_id: 10, item_level:5, item_point:3 },
    { id: 60, dseq:'3', ddescription: '/ユーザインタフェース/が使いやすいかテストされている', alpha_state_def_id: 10, item_level:5, item_point:8 },
    { id: 61, dseq:'4', ddescription: '高負荷状態（大量の入力データや同時多数ユーザなど）がテストされている', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 62, dseq:'5', ddescription: 'エラー処理や回復機能が正常に動作するかテストされている', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 63, dseq:'6', ddescription: '/ユーザドキュメント/が利用できる', alpha_state_def_id: 10, item_level:5, item_point:4 },
    { id: 64, dseq:'7', ddescription: 'リリース用のパッケージが作成され、その機能や品質レベルが文書化されている', alpha_state_def_id: 10, item_level:5, item_point:4 }
)