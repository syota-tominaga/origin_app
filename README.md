アプリケーション名：貯金アップり

URL：

テスト用アカウント
  basic認証：id,origin  pass,5656
  テスト用アカウント：email,  password,

利用方法
  このアプリはつもり貯金アプリです。何か買いたいって時に買ったつもりになって貯金していった貯金額を入力していきましょう。今まででつもり貯金した合計額が分かります。目標を設定できるので目標を設定してつもり貯金しましょう。目標を達成したら、買った物を写真で撮って記録にの濃そう。また、それをみんなで共有しあってみんなでつもり貯金を頑張りましょう。

目指した課題解決
  貯金ができない人、一人で貯金ができない人のためのアプリ
  つもり貯金で目標にしたものが買えた後に今までのつもり貯金だけで買ったという記録と同時に、みんなにシェアができみんなで貯金を頑張れるアプリです。

ユーザー管理機能
  貯金機能
  目標設定機能
  ツイート機能
  記録一覧機能

実装予定の機能
  ツイートのいいね機能
  コメント機能
  目標設定の削除機能
  今までのトータル貯金金額と、目標にした商品を買えてツイートした時、トータル貯金額から引いた実際の貯金額の表示
  

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :memories


## memories テーブル

| Column     | Type       | Options                        |
| ---------- | ------ ----| -----------------------------  |
| money      | string     | null: false                    |
| goods_name | string     | null: false                    |
| user_id    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one    :goal

## goals テーブル

| Column  | Type          | Options                        |
| ------- | ------------- | ------------------------------ |
| goal_money | string     |                                |
| goal_goods | string     | null: false, foreign_key: true |
| memory_id  | references | null: false, foreign_key: true |

### Association
- belongs_to :memory

## tweets テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| title   | string     | null: false |
| text    | string     | null: false |
| image   |            | null: false |

### Association