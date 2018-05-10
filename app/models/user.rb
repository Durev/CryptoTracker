class User < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :currencies, through: :favourites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
