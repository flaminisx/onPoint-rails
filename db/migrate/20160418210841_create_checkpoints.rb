class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.integer :quest_id
      t.integer :parent_id
      t.text :description

      t.timestamps null: false
    end
  end
  def down
    drop_table :checkpoints
  end
end
