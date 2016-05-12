class Event < ActiveRecord::Base
  belongs_to :genre
  belongs_to :venue
  has_many :artists

  # def as_json
  #   super(:include => :venue)
  # end

  def venue_name
    venue.name
  end
end
