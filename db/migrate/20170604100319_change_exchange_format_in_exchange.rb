class ChangeExchangeFormatInExchange < ActiveRecord::Migration[5.1]
  def change
    change_column :exchanges, :exchange, :text
    rename_column :exchanges, :exchange, :exchanges
  end
end
