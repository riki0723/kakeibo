require 'rails_helper'

RSpec.describe "ユーザー新規登録機能", type: :system do
  it 'ログインしていない状態でトップページにアクセスした場合、サインインページに移動する' do
    # トップページに遷移する
    visit root_path
    # ログインしていない場合、サインインページに遷移していることを確認する
    expect(current_path).to eq new_user_session_path
  end

  it '正しい情報を入力すればユーザー新規登録ができ,トップページに移動する' do
    # トップページに遷移する
    visit root_path
    # ログインしていない場合、サインインページに遷移していることを確認する
    expect(current_path).to eq new_user_session_path

    # 新規登録画面に移動する
    visit new_user_registration_path
    
    # ユーザー情報を入力する
    fill_in 'nickname', with: "テスト"
    fill_in 'name', with: "山田太郎"
    fill_in 'email', with: "aaa@co.jp"
    fill_in 'password', with: "aaa111"
    fill_in 'password-confirmation', with: "aaa111"

    # ログインボタンをクリックする
    expect{
    find('input[name="commit"]').click
    }.to change { User.count }.by(1)

    # トップページに遷移していることを確認する
    expect(current_path).to eq root_path
  end

end
RSpec.describe "ユーザーログイン機能", type: :system do
  it 'ログインしていない状態でトップページにアクセスした場合、サインインページに移動する' do
    # トップページに遷移する
    visit root_path
    # ログインしていない場合、サインインページに遷移していることを確認する
    expect(current_path).to eq new_user_session_path
  end

  it 'ログインに成功し、トップページに遷移する' do
    # 予め、ユーザーをDBに保存する
    @user = FactoryBot.create(:user)

    # サインインページへ移動する
    visit  new_user_session_path

    # ログインしていない場合、サインインページに遷移していることを確認する
    expect(current_path).to eq new_user_session_path

    # すでに保存されているユーザーのemailとpasswordを入力する
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password

    # ログインボタンをクリックする
    click_on("ログイン")

    # トップページに遷移していることを確認する
    expect(current_path).to eq root_path

  end

  it 'ログインに失敗し、再びサインインページに戻ってくる' do
    # 予め、ユーザーをDBに保存する
    @user = FactoryBot.create(:user)
    # トップページに遷移する
    visit root_path
    # ログインしていない場合、サインインページに遷移していることを確認する
    expect(current_path).to eq new_user_session_path
    # 誤ったユーザー情報を入力する
    fill_in 'email', with: "test"
    fill_in 'password', with: "test"
    # ログインボタンをクリックする
    click_on("ログイン")
    # サインインページに戻ってきていることを確認する
    expect(current_path).to eq new_user_session_path
  end
end
