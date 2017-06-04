class CreateMines < ActiveRecord::Migration[5.1]
  def change
    create_table :mines do |t|
      t.string :coin
      t.string :miner
      t.string :pool1
      t.string :pool2
      t.string :stratum
      t.string :wallet
      t.text :flags

      t.timestamps
    end
  end
end
