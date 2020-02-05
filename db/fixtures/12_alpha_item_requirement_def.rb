# -*- coding: utf-8 -*-

# 要求1/5 1
AlphaItemDef.seed_once(:id,
  { id: 1, dseq:'1', ddescription: '/プロダクト/に名前を付けている', alpha_state_def_id: 1, item_level:1, item_point:1 }, 
  { id: 2, dseq:'2', ddescription: 'プロジェクトのミッションと到達条件を理解している', alpha_state_def_id: 1, item_level:1, item_point:7 },
  { id: 3, dseq:'3', ddescription: '開発日、終了日、/マイルストーン/などの日程を/オーナ/と合意している', alpha_state_def_id: 1, item_level:1, item_point:3 },
  { id: 4, dseq:'4', ddescription: '/スプリント/長を決めている', alpha_state_def_id: 1, item_level:1, item_point:4 },
  { id: 5, dseq:'5', ddescription: 'ミッションと到達条件を満たすための、/プロダクト/の特徴、顧客、主要な機能（スコープ）を明確にしている', alpha_state_def_id: 1, item_level:2, item_point:7 },
  { id: 6, dseq:'6', ddescription: 'チーム全員で、プロジェクト計画を議論し、プロジェクトの方向性に合意している', alpha_state_def_id: 1, item_level:2, item_point:4 },
  { id: 7, dseq:'7', ddescription: 'プロジェクトのミッションやスコープなどをまとめてプロジェクト計画を作成している', alpha_state_def_id: 1, item_level:2, item_point:4 }
  )

# 要求2/5 8
AlphaItemDef.seed_once(:id,
  { id: 8, dseq:'1', ddescription: '/プロダクト/のスコープを明確にするため、主要な機能を/ユーザストーリ/として記述し、/プロダクトバックログ/を作成している', alpha_state_def_id: 2, item_level:1, item_point:7 },
  { id: 9, dseq:'2', ddescription: '/オーナ/は、/プロダクトバックログ/の主要な項目に優先順位を付けている', alpha_state_def_id: 2, item_level:1, item_point:7 },
  { id: 10, dseq:'3', ddescription: 'チームは、/プロダクトバックログ/の主要な項目の優先順位に合意している', alpha_state_def_id: 2, item_level:1, item_point:3 },
  { id: 11, dseq:'4', ddescription: '/プロダクト/に関わるユーザのタイプを明確にしている', alpha_state_def_id: 2, item_level:2, item_point:5 },
  { id: 12, dseq:'5', ddescription: '/プロダクト/が利用されるアクティビティの流れと関連するユーザを明確にしている', alpha_state_def_id: 2, item_level:2, item_point:5 },
  { id: 13, dseq:'6', ddescription: 'アクティビティの流れとユーザの分析に基づいて、/プロダクトバックログ/を作成している', alpha_state_def_id: 2, item_level:2, item_point:7 },
  { id: 14, dseq:'7', ddescription: '/プロダクトバックログ/か/ユーザストーリ/マッピングの何れを使うかを決定している', alpha_state_def_id: 2, item_level:2, item_point:7 },
  { id: 15, dseq:'8', ddescription: '/プロダクトバックログ/がミッションを達成するものになっているかを検証し、/インセプションデッキ/を修整している', alpha_state_def_id: 2, item_level:4, item_point:7 }
  )

# 要求3/5 16
AlphaItemDef.seed_once(:id,
  { id: 16, dseq:'1', ddescription: 'チーム全員で議論し、/スプリントゴール/を決めている', alpha_state_def_id: 3, item_level:1, item_point:7 },
  { id: 17, dseq:'2', ddescription: '/スプリントゴール/を達成するための項目を/プロダクトバックログ/から選択し、/スプリントバックログ/を作成している', alpha_state_def_id: 3, item_level:1, item_point:5 },
  { id: 18, dseq:'3', ddescription: '/スプリントゴール/を達成するために必要な機能を更検討し、/スプリントバックログ/の項目を修正・追加している', alpha_state_def_id: 3, item_level:1, item_point:5 },
  { id: 19, dseq:'4', ddescription: '/オーナ/は/スプリントゴール/と/スプリントバックログ/の項目に同意している', alpha_state_def_id: 3, item_level:1, item_point:5 },
  { id: 20, dseq:'5', ddescription: '/スプリントバックログ/の項目を実装するために必要なタスクへ分割している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 21, dseq:'6', ddescription: '/ユーザストーリ/がユーザの言葉で書かれていることを確認している', alpha_state_def_id: 3, item_level:2, item_point:4 },
  { id: 22, dseq:'7', ddescription: '/ユーザストーリ/が独立していることを確認している', alpha_state_def_id: 3, item_level:2, item_point:6 }
  )

# 要求4/5 24
AlphaItemDef.seed_once(:id,
  { id: 23, dseq:'1', ddescription: '/スプリントバックログ/の項目のうちで、開発した項目を終了済みと記録している', alpha_state_def_id: 4, item_level:1, item_point:5 },
  { id: 24, dseq:'2', ddescription: '/スプリントゴール/を達成したことを示すために、開発した/ユーザストーリ/のデモを実施している', alpha_state_def_id: 4, item_level:1, item_point:4 },
  { id: 25, dseq:'3', ddescription: '/オーナ/は/スプリントバックログ/のうちで、開発が完了した項目と未完了の項目を識別できている', alpha_state_def_id: 4, item_level:1, item_point:5 },
  { id: 26, dseq:'4', ddescription: 'タスクのDoneの条件を定義し、それを守ることに同意している', alpha_state_def_id: 4, item_level:2, item_point:3 },
  { id: 27, dseq:'5', ddescription: 'タスクのDoneの定義条件に従って/スプリントバックログ/のタスクの完了状態を更新している', alpha_state_def_id: 4, item_level:2, item_point:5 },
  { id: 28, dseq:'6', ddescription: 'チームは、メンバがタスクのDoneの定義条件に従って/スプリントバックログ/を更新していることを検査している', alpha_state_def_id: 4, item_level:4, item_point:3 },
  { id: 29, dseq:'7', ddescription: '/オーナ/は/スプリントバックログ/のうちで、Doneした項目と未完了の項目を識別できている', alpha_state_def_id: 4, item_level:4, item_point:5 },
  { id: 30, dseq:'8', ddescription: '/スプリントゴール/を達成したことを示すために、Doneしたユーザストーリのデモを実施している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 31, dseq:'9', ddescription: 'デモの結果を議論し、システムがミッションを満たしているかを検証している', alpha_state_def_id: 4, item_level:4, item_point:3 },
  { id: 32, dseq:'10', ddescription: '次の/スプリントゴール/の達成を妨げるリスクを議論している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 33, dseq:'11', ddescription: 'スプリントの実績に合わせて、/ベロシティ/を修正している', alpha_state_def_id: 4, item_level:4, item_point:6 },
  { id: 34, dseq:'12', ddescription: 'デモ中に発生した重要な障害を記録し、その対策法を決定している', alpha_state_def_id: 4, item_level:4, item_point:4 },
  { id: 35, dseq:'13', ddescription: '/プロダクトバックログ/中の非機能要件をシステムが満たしているかを確認している', alpha_state_def_id: 4, item_level:4, item_point:5 }
  )

# 要求5/5 32
AlphaItemDef.seed_once(:id,
  { id: 36, dseq:'1', ddescription: '/プロダクトバックログ/のうちで、開発が完了した項目と未完了の項目を識別している', alpha_state_def_id: 5, item_level:1, item_point:3 },
  { id: 37, dseq:'2', ddescription: '/オーナ/は、/プロダクト/がミッションと到達条件を満たしているかを評価している', alpha_state_def_id: 5, item_level:1, item_point:5 },
  { id: 38, dseq:'3', ddescription: 'ユーザのタイプに対応して、必要な機能が存在するかを確認している', alpha_state_def_id: 5, item_level:1, item_point:6 },
  { id: 39, dseq:'4', ddescription: '/インクリメント/が非機能要件を満たしているかを検証している', alpha_state_def_id:5, item_level:5, item_point:3 },
  { id: 40, dseq:'5', ddescription: 'チームは/プロダクト/のリリースに必要十分な/プロダクトバックログ/の項目が実装されていることを検証している', alpha_state_def_id:5, item_level:5, item_point:6 },
  { id: 41, dseq:'6', ddescription: 'チームは未実装の/プロダクトバックログ/の項目が/プロダクト/のリリースの障害とならないことを検証している', alpha_state_def_id:5, item_level:5, item_point:4 },
  { id: 42, dseq:'7', ddescription: 'プロダクト/はミッションを満足している、ミッションの満足を妨げる問題が存在しない', alpha_state_def_id:5, item_level:5, item_point:4 },
  { id: 43, dseq:'8', ddescription: '/オーナ/はプロダクトのリリースに必要十分な機能が実装されていることに同意している', alpha_state_def_id:5, item_level:5, item_point:5 },
  { id: 44, dseq:'9', ddescription: '/オーナ/はプロダクトのリリースに必要十分な品質に達していることに同意している', alpha_state_def_id:5, item_level:5, item_point:5 }
  )
