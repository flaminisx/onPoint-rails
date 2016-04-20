class CreateTextTasks < ActiveRecord::Migration
  def change
    create_table :text_tasks do |t|
      t.text :text
      t.string :answer

      t.timestamps null: false
    end
  end
  def down
    drop_table :text_tasks
  end
end
