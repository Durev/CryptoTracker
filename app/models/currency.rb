class Currency < ApplicationRecord
  validates :name, :symbol, :price_usd, presence: true
  validates :name, :symbol, uniqueness: true
end
