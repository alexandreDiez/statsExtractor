class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :pos
      t.string :age
      t.string :weight
      t.string :size
      t.timestamps null: false
    end
  end
end
