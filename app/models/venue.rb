class Venue < ActiveRecord::Base
   has_many :events, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :likes, dependent: :destroy # if delete this avenue, related like will be delete
   belongs_to :user

  geocoded_by :address
  # geocoded_by :address
  after_validation :geocode
    #
    # def address
    #   venue.address
    #   venue.suburd
    #   venue.postcode
    # end

   def like_count
       likes.count
   end
end
