class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.integer :reward
      t.integer :experience
      t.integer :owner_id
      t.float :price
      t.integer :start_id
      t.integer :downloads, default: 0
      t.string :logo

      t.timestamps null: false
    end
  end
  def down
    drop_table :quests
  end
end
