class RemoveColoumnFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :type, :string
    add_column :venues, :venue_type, :string
  end
end
