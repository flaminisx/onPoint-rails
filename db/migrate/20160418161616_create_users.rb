class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :salt
      t.string :role
      t.integer :money, default: 0
      t.integer :experience, default: 0

      t.timestamps null: false
    end
  end
  def down
    drop_table :users
  end
end
