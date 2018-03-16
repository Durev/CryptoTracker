require 'faker'

FactoryBot.define do
  factory :currency do
    name { Faker::Pokemon.name }
    symbol { Faker::Name.initials(3) }
    rank { Faker::Number.number(3) }
    price_usd { Faker::Number.decimal(4, 3) }
    price_btc { Faker::Number.decimal(4, 3) }
    market_cap_usd { Faker::Number.decimal(10, 3) }
    percent_change_1h { Faker::Number.decimal(1, 3) }
    percent_change_24h { Faker::Number.decimal(1, 3) }
    percent_change_7d { Faker::Number.decimal(1, 3) }
  end
end
