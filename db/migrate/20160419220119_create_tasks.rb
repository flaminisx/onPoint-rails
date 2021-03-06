class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :element_type
      t.integer :element_id
      t.string :description
      t.boolean :showable

      t.timestamps null: false
    end
  end
  def down
    drop_table :tasks
  end
end
