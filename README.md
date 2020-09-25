# README


# DB設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| berthday   | date   | null: false |
### Association
- has_many :items

## expenses テーブル

| Column      | Type       | Options                        |
| ----------  | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| price       | string     | null: false                    |
| payment_id  | integer    | null: false                    |
| category_id | integer    | null: false                    |
| wheretobuy  | string     | null: false                    |
| delivery    | integer    | null: false                    |
| start_time  | date       | null: false                    |
| memo        | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
