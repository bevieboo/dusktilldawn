class ChangeTimeToEvent < ActiveRecord::Migration
  def change
    remove_column :events, :time, :timestamp
    add_column :events, :event_time, :timestamp
  end
end
