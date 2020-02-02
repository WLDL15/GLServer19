# -*- coding: utf-8 -*-

# 要求1/5 1
AlphaItemDef.seed_once(:id,
  { id: 1, dseq:'1', ddescription: 'プロダクトに名前を付けている', alpha_state_def_id: 1, item_level:1, item_point:1 }, 
  { id: 2, dseq:'2', ddescription: 'プロジェクトのミッション(目的)を明確にしている', alpha_state_def_id: 1, item_level:1, item_point:7 },
  { id: 3, dseq:'3', ddescription: '現状を分析し、/プロダクト/のユーザグループとグループ固有のニーズ・問題点を収集している', alpha_state_def_id: 1, item_level:1, item_point:3 },
  { id: 4, dseq:'4', ddescription: '/プロダクト/の特徴と主要な機能(スコープ)を明確にしている', alpha_state_def_id: 1, item_level:2, item_point:7 },
  { id: 5, dseq:'5', ddescription: '開発日、終了日、/マイルストーン/などの日程をオーナーと合意している', alpha_state_def_id: 1, item_level:2, item_point:3 },
  { id: 6, dseq:'6', ddescription: 'プロジェクトのミッションやスコープなどをまとめて/インセプションデッキ/に作成している', alpha_state_def_id: 1, item_level:2, item_point:4 },
  { id: 7, dseq:'7', ddescription: 'チーム全員で/インセプションデッキ/を議論し、プロジェクトの方向性を合意している', alpha_state_def_id: 1, item_level:2, item_point:3 }
)

# 要求2/5 8
AlphaItemDef.seed_once(:id,
  { id: 8, dseq:'1', ddescription: '/ブレインストーミング/などによってミッションとニーズを実現するためのアイデアや機能を生み出している', alpha_state_def_id: 2, item_level:2, item_point:7 },
  { id: 9, dseq:'2', ddescription: 'アイデアや機能を/ユーザストーリ/として記述し、/プロダクトバックログ/を作成している', alpha_state_def_id: 2, item_level:2, item_point:7 },
  { id: 10, dseq:'3', ddescription: '/ユーザストーリ/が/INVEST/の条件を満たしているか検査し、内容と大きさが適切になるように修正している', alpha_state_def_id: 2, item_level:2, item_point:4 },
  { id: 11, dseq:'4', ddescription: '/プロダクトバックログ/には機能要件だけでなく、非機能要件(データ量、応答時間、信頼性、使い勝手など)が含まれている', alpha_state_def_id: 2, item_level:2, item_point:4 },
  { id: 12, dseq:'5', ddescription: '/オーナ/は/プロダクトバックログ/の主要な項目に優先順位を付けている', alpha_state_def_id: 2, item_level:2, item_point:7 },
  { id: 13, dseq:'6', ddescription: 'チームは/プロダクトバックログ/の主要な項目をストリートポイントで見積もりしている', alpha_state_def_id: 2, item_level:2, item_point:3 },
  { id: 14, dseq:'7', ddescription: '/オーナ/と開発チームは/プロダクトバックログ/の主要な項目の優先順位と見積もりに合意している', alpha_state_def_id: 2, item_level:2, item_point:3 },
  { id: 15, dseq:'8', ddescription: 'プロダクトバックログ/がミッションを達成するものになっているかを検証し、/インセプションデッキ/を修整している', alpha_state_def_id: 2, item_level:4, item_point:7 }
  )

# 要求3/5 16
AlphaItemDef.seed_once(:id,
  { id: 16, dseq:'1', ddescription: 'メンバ全員で議論し、/スプリントゴール/を決めている', alpha_state_def_id: 3, item_level:2, item_point:7 },
  { id: 17, dseq:'2', ddescription: '/プロダクトバックログ/から/スプリントゴール/を達成するための項目を選択し、/スプリントバックログ/を作成している', alpha_state_def_id: 3, item_level:2, item_point:3 },
  { id: 18, dseq:'3', ddescription: '/スプリントバックログ/の項目を動作させるために必要なタスクへ展開している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 19, dseq:'4', ddescription: 'タスクを理想時間によって見積もりしている', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 20, dseq:'5', ddescription: 'タスクが8理想時間以上の場合はタスクを再分割している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 21, dseq:'6', ddescription: 'チームの/ベロシティ/を理想時間に換算し、換算率の妥当性を検証している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 22, dseq:'7', ddescription: '/ベロシティ/と比較し、/スプリントバックログ/をスプリント内に実装できるかを検証している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 23, dseq:'8', ddescription: 'スプリントの途中で、スケジュールやリスクを考えて/スプリントバックログ/の項目や優先順位を調整している', alpha_state_def_id: 3, item_level:2, item_point:3 }
  )

# 要求4/5 24
AlphaItemDef.seed_once(:id,
  { id: 24, dseq:'1', ddescription: 'チームは、メンバがタスクのDoneの定義条件に従って/スプリントバックログ/を更新していることを検査している', alpha_state_def_id: 4, item_level:4, item_point:3 },
  { id: 25, dseq:'2', ddescription: '/オーナ/は/スプリントバックログ/のうちで、Doneした項目と未完了の項目を識別できている', alpha_state_def_id: 4, item_level:4, item_point:5 },
  { id: 26, dseq:'3', ddescription: '/スプリントゴール/を達成したことを示すために、Doneしたユーザストーリのデモを実施している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 27, dseq:'4', ddescription: 'デモの結果を議論し、システムがミッションを満たしているかを検証している', alpha_state_def_id: 4, item_level:4, item_point:3 },
  { id: 28, dseq:'5', ddescription: '次の/スプリントゴール/の達成を妨げるリスクを議論している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 29, dseq:'6', ddescription: 'スプリントの実績に合わせて、/ベロシティ/を修正している', alpha_state_def_id: 4, item_level:4, item_point:6 },
  { id: 30, dseq:'7', ddescription: 'デモ中に発生した重要な障害を記録し、その対策法を決定している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 31, dseq:'8', ddescription: '/プロダクトバックログ/中の非機能要件をシステムが満たしているかを確認している', alpha_state_def_id: 4, item_level:4, item_point:5 }
  )

# 要求5/5 32
AlphaItemDef.seed_once(:id,
  { id: 32, dseq:'1', ddescription: '/インクリメント/が非機能要件を満たしているかを検証している', alpha_state_def_id:5, item_level:5, item_point:3 },
  { id: 33, dseq:'2', ddescription: 'チームは/プロダクト/のリリースに必要十分な/プロダクトバックログ/の項目が実装されていることを検証している', alpha_state_def_id:5, item_level:5, item_point:6 },
  { id: 34, dseq:'3', ddescription: 'チームは未実装の/プロダクトバックログ/の項目が/プロダクト/のリリースの障害とならないことを検証している', alpha_state_def_id:5, item_level:5, item_point:4 },
  { id: 35, dseq:'4', ddescription: 'プロダクト/はミッションを満足している、ミッションの満足を妨げる問題が存在しない', alpha_state_def_id:5, item_level:5, item_point:4 },
  { id: 36, dseq:'5', ddescription: '/オーナ/はプロダクトのリリースに必要十分な機能が実装されていることに同意している', alpha_state_def_id:5, item_level:5, item_point:5 },
  { id: 37, dseq:'6', ddescription: '/オーナ/はプロダクトのリリースに必要十分な品質に達していることに同意している', alpha_state_def_id:5, item_level:5, item_point:5 }
  )
