class CreateExchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :exchanges do |t|
      t.string :coin
      t.string :currency
      t.string :exchange
      t.boolean :status

      t.timestamps
    end
  end
end
