class CreatePhotoTasks < ActiveRecord::Migration
  def change
    create_table :photo_tasks do |t|
      t.string :image
      t.string :answer
      t.string :description

      t.timestamps null: false
    end
  end
end
