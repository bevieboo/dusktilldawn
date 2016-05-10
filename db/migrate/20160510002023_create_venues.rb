class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :suburd
      t.integer :postcode
      t.text :image
      t.string :type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
