class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :currency, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :subscription, default: false

    end
  end
end
