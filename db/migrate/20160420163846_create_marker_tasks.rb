class CreateMarkerTasks < ActiveRecord::Migration
  def change
    create_table :marker_tasks do |t|
      t.float :lon
      t.float :lat
      t.float :radius

      t.timestamps null: false
    end
  end
end
