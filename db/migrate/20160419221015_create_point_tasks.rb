class CreatePointTasks < ActiveRecord::Migration
  def change
    create_table :point_tasks do |t|
      t.integer :this_cp_id
      t.integer :next_cp_id
      t.integer :task_id
      t.integer :order

      t.timestamps null: false
    end
  end
  def down
    drop_table :point_tasks
  end
end
