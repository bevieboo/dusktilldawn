class AddAllForeignKey < ActiveRecord::Migration
  def change
    # add foreign key in events table
    add_column :events, :genre_id, :integer
    add_column :events, :venue_id, :integer
    add_foreign_key :events, :genres
    add_foreign_key :events, :venues
    # add foreign key in comments table
    add_column :comments, :venue_id, :integer
    add_column :comments, :user_id, :integer
    add_foreign_key :comments, :venues
    add_foreign_key :comments, :users
    # add foreign key in artists table
    add_column :artists, :event_id, :integer
    add_foreign_key :artists, :events

  end
end
