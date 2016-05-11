class Venue < ActiveRecord::Base
   has_many :events, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :likes, dependent: :destroy # if delete this avenue, related like will be delete
   belongs_to :user

   def like_count
       likes.count
   end
end
