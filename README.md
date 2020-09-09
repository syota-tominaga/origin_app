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