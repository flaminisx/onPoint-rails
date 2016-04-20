class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.float :lon
      t.float :lat
      t.float :radius

      t.timestamps null: false
    end
  end
end
