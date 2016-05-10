class AddUserTypeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type_id, :integer
    add_foreign_key :users, :user_types
  end
end
