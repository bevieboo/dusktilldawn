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
# keeping this delete order is very important,bec there are FK relationship
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

   user2 = User.new
   user2.email = 'bev@gmail.com'
   user2.password = '1234'
   user2.name = 'bev'
   user2.gender = 'female'
   user2.image = ''
   user2.user_type_id = type2.id
   user2.save
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

   venue2 = Venue.new
   venue2.name = "Precint Hotel"
   venue2.address = "Richmond"
   venue2.suburd = "Richmond"
   venue2.postcode = 3000
   venue2.venue_type = 'bar'
   venue2.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue2.user_id = user2.id
   venue2.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue2.save

   venue3 = Venue.new
   venue3.name = "Precint Hotel"
   venue3.address = "Richmond"
   venue3.suburd = "Richmond"
   venue3.postcode = 3000
   venue3.venue_type = 'bar'
   venue3.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue3.user_id = user2.id
   venue3.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue3.save

  # genres table


    genre2 = Genre.new
    genre2.name = 'Hip-hop'
    genre2.save

   genre = Genre.new
   genre.name = 'RnB'
   genre.save

   genre3 = Genre.new
   genre3.name = 'Drum n Bass'
   genre3.save

   genre4 = Genre.new
   genre4.name = 'Blues'
   genre4.save

   genre5 = Genre.new
   genre5.name = 'House'
   genre5.save

   genre6 = Genre.new
   genre6.name = 'Rock'
   genre6.save

   genre7 = Genre.new
   genre7.name = 'Jazz'
   genre7.save

   genre8 = Genre.new
   genre8.name = 'Reggae'
   genre8.save

   genre9 = Genre.new
   genre9.name = 'Dub Step'
   genre9.save

   genre10 = Genre.new
   genre10.name = 'Country'
   genre10.save

   genre11 = Genre.new
   genre11.name = 'Indie'
   genre11.save

   genre12 = Genre.new
   genre12.name = 'Pop'
   genre12.save

   genre13 = Genre.new
   genre13.name = 'Trance'
   genre13.save



#  events table
   event = Event.create(name: "Revolver Wednesday",
                        image: "http://paulunderhill.com/wp-content/uploads/2013/01/music-photographer-festival-event-photography_93.jpg",
                        event_time: "2016-6-2 19:12:12",
                        genre_id: genre.id,
                        venue_id: venue.id)

   event = Event.create(name: "Revolver Friday",
                       image: "http://www.lasvegasweddingphotographer.net/wp-content/uploads/2014/06/las-vegas-bar-mitzvah-photographer.jpg",
                       event_time: "2016-5-20 18:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id)

   event = Event.create(name: "HAAAA Wednesday",
                       image: "http://www.bizbash.com/content/editorial/storyimg/big/spidypreview03.jpg",
                       event_time: "2016-6-1 20:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id)

# artists table
    artist = Artist.new
    artist.name = 'dt'
    artist.gender = 'male'
    artist.image =''
    artist.event_id = ''
    artist.save
