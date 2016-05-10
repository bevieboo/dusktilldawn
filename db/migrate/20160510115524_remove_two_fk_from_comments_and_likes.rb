class RemoveTwoFkFromCommentsAndLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :user_id, :integer
    remove_column :comments, :user_id, :integer
    
    add_column :likes, :user_id, :integer
    add_column :comments, :user_id, :integer
  end
end
