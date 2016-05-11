class Event < ActiveRecord::Base
  belongs_to :genre
  belongs_to :venue
  has_many :artists
<<<<<<< HEAD
  def as_json
    super(:include => :venue)
=======
<<<<<<< HEAD
  
  def as_json
    super(:include => :venue)
=======
  def as_json
    super(:include => :venue)
    
>>>>>>> e8bde314f2f8d28439cf567c18c44e1e5282e215
>>>>>>> 00d7bd2ea1f52d301dc1b99c0ddd92327081c408
  end
end
