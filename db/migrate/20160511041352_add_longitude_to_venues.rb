class AddLongitudeToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :longitude, :float
  end
end
