class CreateRigs < ActiveRecord::Migration[5.1]
  def change
    create_table :rigs do |t|
      t.string :name
      t.string :ethos_id
      t.text :ethos_conf
      t.string :location
      t.string :mine

      t.timestamps
    end
  end
end
