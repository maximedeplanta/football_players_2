class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.integer :league_id
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
