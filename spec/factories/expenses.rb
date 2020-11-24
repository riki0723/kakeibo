FactoryBot.define do
  factory :expense do
    start_time            {Faker::Date.backward}
    name                  {"水"}
    price                 {"500"}
    wheretobuy            {"コンビニ"}
    category_id           { 2 } 
    payment_id            { 2 }
    memo                  {Faker::Lorem.sentence}
    association :user 
  end
end
