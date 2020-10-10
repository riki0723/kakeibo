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
1. 上記指定のIDでログインを行ってください
2. ログイン後、トップページの新規入力覧にて出費を入力が可能です
3. 入力後、カレンダーでは一日ごとの合計金額。出費履歴ではリスト形式で出費を確認できます。
4. リストにて出費の詳細、削除、編集が可能


# 実装した機能についての説明

## user機能
1. user新規登録画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 28" src="https://user-images.githubusercontent.com/69281517/95659971-c2077780-0b5f-11eb-9abb-0618e946a9f3.png">
ニックネーム、名前、メールアドレス、パスワードを入力すると、user登録ができます。

2. ログイン画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 17 35" src="https://user-images.githubusercontent.com/69281517/95659957-9a181400-0b5f-11eb-8d7c-78e034b3a7f2.png">
登録した、ニックネームパスワードでログインが可能です。



## 出費登録機能
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 46" src="https://user-images.githubusercontent.com/69281517/95659995-dcd9ec00-0b5f-11eb-9243-792238d68ba1.png">
出費した日付、名前、支払い場所、カテゴリー、支払い方法を入力し出費の新規登録が可能です。
メモ欄は入力しなくとも登録は可能ですが、その他の項目は入力しなければ登録ができません。


## 出費表示機能
1. カレンダー
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 54" src="https://user-images.githubusercontent.com/69281517/95660160-ed3e9680-0b60-11eb-96c2-530d5070d9af.png">
一日ごとの出費の合計値を一目で確認する事ができます。

2. 履歴一覧
<img width="1440" alt="スクリーンショット 2020-10-11 1 12 00" src="https://user-images.githubusercontent.com/69281517/95660178-05aeb100-0b61-11eb-81b2-9821c53df14f.png">
登録した出費履歴を一覧で確認出来ます。
10件以上登録件数がある場合は次のページに表示されます。
日付の期間の絞り込み検索および購入した品物の検索も可能です。

## 出費詳細表示、編集、削除機能
1. 詳細画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 12 10" src="https://user-images.githubusercontent.com/69281517/95660189-20812580-0b61-11eb-82f3-333b26d5491f.png">
出費一覧の詳細をクリックすると詳細ページに飛びます。また、編集、削除も可能です

2. 出費内容変更画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 43 48" src="https://user-images.githubusercontent.com/69281517/95660583-dfd6db80-0b63-11eb-83b1-93a734891c4d.png">
出費内容の編集が可能です、内容を編集後、「変更する」をクリックすると変更されます


# 実装予定内容
1. エラー文表示機能実装
userの新規登録、ログイン、出費の新規登録事に問題が発生した場合エラー分を表示させる。

2. 出費分析機能の実装
出費をグラフなどでまとめどのような事に出費しているのかを分析する機能。

3. 計算機能の実装
残りの残金から給料日まで一日いくら出費出来るかを計算する機能

4. 出費履歴の編集機能の充実
出費の検索機能に、カテゴリー別や支払い方法別などの検索機能を充実させる　



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
