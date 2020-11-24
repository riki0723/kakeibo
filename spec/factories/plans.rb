FactoryBot.define do
  factory :plan do
    start_time            {Faker::Date.backward}
    name                  {"家賃"}
    price                 {"50000"}
    payment_id            { 2 }
    memo                  {Faker::Lorem.sentence}
    association :user 
  end
end
