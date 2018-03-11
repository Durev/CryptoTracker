class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.integer :rank
      t.float :price_usd
      t.float :price_btc
      t.float :market_cap_usd
      t.float :percent_change_1h
      t.float :percent_change_24h
      t.float :percent_change_7d

      t.timestamps
    end
  end
end
