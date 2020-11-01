# README
# アプリ名
出費管理アプリ


# アプリケーション概要
このアプリでは普段利用者はどのくらい出費しているのか記録し自らの出費を確認できるアプリとなっております。


# 制作背景
## ターゲット
大学生、若手社会人などの、貯金ができない人

## 制作理由
普段の生活の中で、給料日前に何に使ったのかわからないが気付いたらお金がない、
欲しいものがあり貯金しようと思ったが、貯金ができないなんてことありませんか？
自らの出費を整理し、そのような事が起きるのを防ぐために開発を決めました。


# 本番環境URL
https://kakeibo-28781.herokuapp.com/


# テスト用アカウント
## Basic認証
ID :admin
PW :2222

## ログインID
e-mail :test1234@com.jp
PW :test1234


# 利用方法
1. 上記指定のIDでログインを行ってください
2. ログイン後、サイドバーの『出費入力』にて出費を入力が可能です。
3. 入力後、カレンダーでは一日ごとの合計金額。出費履歴ではリスト形式で出費を確認できます。
4. 支払日、品物、金額（半角数字）購入場所、項目、支払い方法を入力し『登録する』をクリックすると登録出来ます。メモは入力しれもしなくても大丈夫です。
4. サイドバーの出費履歴のリストにて出費の詳細、削除、編集が可能です。
5. カレンダーの『出費予定』の登録にて今後出費予定があるものを入力出来ます
6. 入力後カレンダーに✅が表示されます、✅の個数が、その日に出費される予定の個数です。
7. ✅をクリックすると出費の詳細が見れます。また、削除、編集が可能です。



# 実装した機能についての説明

## user機能
1. user新規登録画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 28" src="https://user-images.githubusercontent.com/69281517/95659971-c2077780-0b5f-11eb-9abb-0618e946a9f3.png">
ニックネーム、名前、メールアドレス、パスワードを入力すると、user登録ができます。

2. ログイン画面
<img width="1440" alt="スクリーンショット 2020-10-11 23 09 37" src="https://user-images.githubusercontent.com/69281517/95680819-28030600-0c17-11eb-94f0-65095c54ba62.png">
登録した、e-mail、パスワードでログインが可能です。


## トップページ
<img width="1440" alt="スクリーンショット 2020-11-01 18 56 58" src="https://user-images.githubusercontent.com/69281517/97804316-4ac29080-1c92-11eb-945f-db9d9b6544f3.png">
昨日、今日の出費の合計を表示しております。明日の出費予定の金額を表示しております。
最近何に出費したかわかるように、直近で登録した出費３つを表示しております、新しい出費を行うと古い物から消えていきます。

## 出費登録機能
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 46" src="https://user-images.githubusercontent.com/69281517/95659995-dcd9ec00-0b5f-11eb-9243-792238d68ba1.png">
出費した日付、名前、支払い場所、カテゴリー、支払い方法を入力し出費の新規登録が可能です。
メモ欄は入力しなくとも登録は可能ですが、その他の項目は入力しなければ登録ができません。

## 出費表示機能
1. カレンダー
<img width="1440" alt="スクリーンショット 2020-10-11 1 11 54" src="https://user-images.githubusercontent.com/69281517/95660160-ed3e9680-0b60-11eb-96c2-530d5070d9af.png">
一日ごとの出費の合計値をカレンダーにて確認する事ができます。

2. 履歴一覧・検索機能
<img width="1440" alt="スクリーンショット 2020-10-28 12 16 10" src="https://user-images.githubusercontent.com/69281517/97391369-6cceb280-1922-11eb-8898-c8e1c2b1764b.png">
登録した出費履歴を一覧形式で確認出来ます、10件以上登録件数がある場合は次のページに表示されます。日付、名前をクリックすると表示の順番を変更出来ます。
また３種類の検索機能を実装しております・
1つ目名前、購入場所、メモからキーワード検索。
２つ目日付で期間を区切り検索、
３つ目支払い方法を選択肢検索。複合しての利用も可能です

## 出費詳細表示、編集、削除機能
1. 詳細画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 12 10" src="https://user-images.githubusercontent.com/69281517/95660189-20812580-0b61-11eb-82f3-333b26d5491f.png">
出費一覧の詳細をクリックすると詳細ページに飛びます。また、編集、削除も可能です

2. 出費内容変更画面
<img width="1440" alt="スクリーンショット 2020-10-11 1 43 48" src="https://user-images.githubusercontent.com/69281517/95660583-dfd6db80-0b63-11eb-83b1-93a734891c4d.png">
出費内容の編集が可能です、内容を編集後、「変更する」をクリックすると変更されます

## 出費予定の登録、確認、編集、削除
1. 出費予定の登録
<img width="1440" alt="スクリーンショット 2020-11-01 22 49 42" src="https://user-images.githubusercontent.com/69281517/97804729-14d2db80-1c95-11eb-9f28-37418e1a5193.png">
カレンダーの「出費予定を登録」をクリックすると出費予定登録画面に移動します
<img width="1440" alt="スクリーンショット 2020-11-01 22 50 17" src="https://user-images.githubusercontent.com/69281517/97804768-4d72b500-1c95-11eb-94c4-33f0f4ec65ee.png">
出費予定の日付、名前、金額、支払い方法を入力し出費予定の新規登録が可能です。
メモ欄は入力しなくとも登録は可能ですが、その他の項目は入力しなければ登録ができません。

2. 出費予定の確認
<img width="1440" alt="スクリーンショット 2020-11-01 22 50 30" src="https://user-images.githubusercontent.com/69281517/97804820-a04c6c80-1c95-11eb-9a35-ecee5b7ab677.png">
出費予定を登録するとカレンダーに✅とその日出費予定の合計金額が表示されます。
同じ日に出費予定を複数登録した場合、登録回数分✅が表示されます。

3. 出費予定の編集、削除
✅マークをクリックすると出費予定の表示、編集、削除が可能です

# 実装予定内容

1. 出費履歴の編集機能の充実（実装済）
出費の検索機能に、カテゴリー別や支払い方法別などの検索機能を充実させる　

2. 出費予定機能の実装（実装済）
今後の出費予定をカレンダーに表示させる

3. 出費分析機能の実装
出費をグラフなどでまとめどのような事に出費しているのかを分析する機能

4. エラー文表示機能実装
userの新規登録、ログイン、出費の新規登録事に問題が発生した場合エラー分を表示させる。

5. 計算機能の実装
マイページを設けて給料日を登録し、残りの残金から給料日まで一日いくら出費出来るかを計算する機能




# 変更、更新内容

## 10/24 メモの表示
内容 : 出費の新規内容登録時にメモを登録しても表示されないエラーを解決

## 10/27 バグの修正
内容 : 検索を行うとトップページに戻ってしまうバグを修正しました

## 10/28 検索機能の追加実装
内容 : 支払い方法での検索を可能にしました

## 10/31 出費予定機能の実装
内容 : 今後の出費予定を入力する

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
- has_many :expenses
- has_many :plans


## expenses テーブル

| Column      | Type       | Options                        |
| ----------  | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| price       | integer    | null: false                    |
| payment_id  | integer    | null: false                    |
| category_id | integer    | null: false                    |
| wheretobuy  | string     | null: false                    |
| delivery    | integer    | null: false                    |
| start_time  | date       | null: false                    |
| memo        | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## plans テーブル

| Column      | Type       | Options                        |
| ----------  | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| price       | integer    | null: false                    |
| payment_id  | integer    | null: false                    |
| start_time  | date       | null: false                    |
| memo        | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user