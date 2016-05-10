class RemoveEventIdFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :event_id, :integer
    add_column :artists, :event_id, :integer
  end
end
