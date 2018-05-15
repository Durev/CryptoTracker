class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.references :user, foreign_key: true
      t.references :currency, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
