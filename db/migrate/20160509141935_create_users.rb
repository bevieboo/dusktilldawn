class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.text :password
      t.string :name
      t.string :gender
      t.text :image
      

      t.timestamps null: false
    end
  end
end
