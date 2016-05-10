# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# rake db:seed

#=====  test data ========
# clear all data in the database
# keep this delete very important,bec there are FK relationship
   Artist.destroy_all
   Comment.destroy_all
   Event.destroy_all
   Like.destroy_all
   Venue.destroy_all
   User.destroy_all
   UserType.destroy_all
   Genre.destroy_all



#  user_types table
   type = UserType.new
   type.name = 'normal user'
   type.save
   type2 = UserType.new
   type2.name = 'owner'
   type2.save
#  users table
   user = User.new
   user.email = 'dt@gmail.com'
   user.password = '1234'
   user.name = 'dt'
   user.gender = 'male'
   user.image = ''
   user.user_type_id = type.id
   user.save
#  venuse table
   venue = Venue.new
   venue.name = "Precint Hotel"
   venue.address = "Richmond"
   venue.suburd = "Richmond"
   venue.postcode = 3000
   venue.venue_type = 'bar'
   venue.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue.user_id = user.id
   venue.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue.save

  # genres table
    genre = Genre.new
    genre.name = 'music'
    genre.save
    genre2 = Genre.new
    genre2.name = 'Hip-hop'
    genre2.save

#  events table
   event = Event.create(name: "Revolver Wednesday",
                        image: "",
                        event_time: "",
                        genre_id: genre.id,
                        venue_id: venue.id)
# artists table
    artist = Artist.new
    artist.name = 'dt'
    artist.gender = 'male'
    artist.image =''
    artist.event_id = ''
    artist.save
