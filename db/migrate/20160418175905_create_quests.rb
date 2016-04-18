class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.text :desctiption
      t.integer :reward
      t.integer :experience
      t.float :price
      t.integer :start_id
      t.integer :downloads
      t.string :logo

      t.timestamps null: false
    end
  end
end
