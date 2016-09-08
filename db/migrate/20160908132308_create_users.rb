class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :age
      t.string :images

      t.timestamps null: false
    end
  end
end
