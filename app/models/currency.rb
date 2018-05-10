class Currency < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites

  validates :name, :symbol, :price_usd, presence: true
  validates :name, :symbol, uniqueness: true
end
