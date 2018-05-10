class AddCreditToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :credit, :float, default: 1000
  end
end
