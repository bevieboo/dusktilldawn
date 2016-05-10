class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :venues, :users
  end
end
