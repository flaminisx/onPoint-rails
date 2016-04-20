class CreatePhotoTasks < ActiveRecord::Migration
  def change
    create_table :photo_tasks do |t|
      t.string :image
      t.string :answer

      t.timestamps null: false
    end
  end
  def down
    drop_table :photo_tasks
  end
end
