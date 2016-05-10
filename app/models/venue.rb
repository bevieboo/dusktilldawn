class Venue < ActiveRecord::Base
   has_many :events
   has_many :comments
   has_many :likes
   belongs_to :user 
end
