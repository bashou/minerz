class DeleteColumnInMines < ActiveRecord::Migration[5.1]
  def change
    remove_column :mines, :pool1
    remove_column :mines, :pool2
    add_column :mines, :pool, :string
  end
end
