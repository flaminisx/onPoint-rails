class CreateDeviceTasks < ActiveRecord::Migration
  def change
    create_table :device_tasks do |t|
      t.integer :device_id
      t.string :request
      t.string :response

      t.timestamps null: false
    end
  end
end
