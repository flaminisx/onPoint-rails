class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :role
      t.integer :money
      t.integer :experience

      t.timestamps null: false
    end
  end
end