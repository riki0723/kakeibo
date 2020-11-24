FactoryBot.define do
  factory :user do
    nickname              {"テスト君"}
    name                  {"山田太郎"}
    email                 {Faker::Internet.free_email}
    password              {"aaa000"}
    password_confirmation {password}
  end
end