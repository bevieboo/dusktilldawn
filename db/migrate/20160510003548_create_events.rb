class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :image
      t.timestamp :time

      t.timestamps null: false
    end
  end
end
