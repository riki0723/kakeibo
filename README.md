# README
# アプリ名
家計簿アプリ

# 概要
このアプリでは普段利用者はどのくらい出費しているのか記録、目視出来るアプリになっています。


# 制作背景
普段の生活で気付いたら貯金しようと思っていたが
いつの間にかお金を多く使ってしまいお金がない事ありませんか？
そのような事を解決する為普段の出費を理解する為に開発を決めました。
# 実装予定内容

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
