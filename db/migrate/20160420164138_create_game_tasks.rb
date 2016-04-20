class CreateGameTasks < ActiveRecord::Migration
  def change
    create_table :game_tasks do |t|
      t.integer :game_id
      t.string :answer

      t.timestamps null: false
    end
  end
end
