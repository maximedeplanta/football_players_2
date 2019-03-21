class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :club_id
      t.string :name
      t.string :position
      t.integer :level

      t.timestamps
    end
  end
end
