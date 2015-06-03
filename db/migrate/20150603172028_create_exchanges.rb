class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :description
      t.string :payee
      t.decimal :credits
      t.decimal :debits

      t.timestamps null: false
    end
  end
end
