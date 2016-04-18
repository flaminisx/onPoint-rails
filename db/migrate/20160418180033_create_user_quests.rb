class CreateUserQuests < ActiveRecord::Migration
  def change
    create_table :user_quests do |t|
      t.integer :user_id
      t.integer :quest_id
      t.integer :checkpoint

      t.timestamps null: false
    end
  end
end
