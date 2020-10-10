# README
# アプリ名
出費管理アプリ


# アプリケーション概要
このアプリでは普段利用者はどのくらい出費しているのか記録し自らの出費を確認できるアプリとなっております。


# 制作背景
## ターゲット
大学生、社会人３年目まで、貯金ができない人

## 制作理由
普段の生活の中で、給料日前に何に使ったのかわからないが気付いたらお金がない、
欲しいものがあり貯金しようと思ったが、貯金ができないなんてことありませんか？
自らの出費を整理し、そのような事が起きるのを防ぐために開発を決めました。


# 本番環境URL
https://kakeibo-28781.herokuapp.com/


# テスト用テスト用アカウント
Basic認証
ID :admin
PW :2222

ログインID
ID :
PW :


# 利用方法
1.上記指定のIDでログインを行ってください
2.ログイン後、トップページの新規入力覧にて出費を入力が可能です
3.入力後、カレンダーでは一日ごとの合計金額。出費履歴ではリスト形式で出費を確認できます。
4.リストにて出費の詳細、削除、編集が可能


# 実装した機能についての説明

## userログイン機能


## 出費登録機能


## 出費表示機能


## 出費編集、削除機能



# 実装予定内容
1.エラー文表示機能実装 ：userの新規登録、ログイン、出費の新規登録事に問題が発生した場合エラー分を表示させる。
2.出費分析機能の実装 ：出費をグラフなどでまとめどのような事に出費しているのかを分析する機能。
3.計算機能の実装 :
4

# 要件定理



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
