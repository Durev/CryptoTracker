class Currency < ApplicationRecord
  validates :name, :symbol, :price_usd, presence: true
end
