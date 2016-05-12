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
   venue.address = "60 Swan St, Cremorne VIC 3121"
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
   venue2.address = "60 Swan St, Cremorne VIC 3121"
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
   venue3.address = "60 Swan St, Cremorne VIC 3121"
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


   venue4 = Venue.new
   venue4.name = "Sorry Grandma"
   venue4.address ="590 Little Bourke St, Melbourne VIC 3000"
   venue4.suburd = "CBD"
   venue4.postcode = 3000
   venue4.venue_type = 'bar'
   venue4.image = 'http://www.barsandnightclubs.com.au/assets/images/content/club/melbourne//Sorry%20Grandma%20-%20Melbourne%20CBD/Sorry%20Grandma%20-%20Melbourne%20CBD%20-%20Melbourne%20-%20Photo02.jpg'
   venue4.user_id = user2.id
   venue4.description = "Buzzing dance club featuring well-known DJs and themed events in an opulently decorated space."
   venue4.save

   venue5 = Venue.new
   venue5.name = "Lustre Bar"
   venue5.address ="1/252 Flinders Lane, Melbourne VIC 3000"
   venue5.suburd = "CBD"
   venue5.postcode = 3000
   venue5.venue_type = 'bar'
   venue5.image = 'http://www.bestclubsin.com/media/picture/listing/listingimages/image_365.jpg'
   venue5.user_id = user2.id
   venue5.description = "Intimate bar with crimson walls and a chilled vibe, for creative cocktails, desserts and live music."
   venue5.save

   venue6 = Venue.new
   venue6.name = "Berlin Bar"
   venue6.address ="16 Corrs Ln, Melbourne VIC 3000"
   venue6.suburd = "CBD"
   venue6.postcode = 3000
   venue6.venue_type = 'bar'
   venue6.image = 'http://jfkgwl.corednacdn.com/web_images/image_gallery/album5028_39333_berlin-bar-cbd-best-bars-melbourne-cocktail-hidden-laneway-wine-cool-lounge-002.jpg'
   venue6.user_id = user2.id
   venue6.description = "Split-space East/West-themed bar with plush banquettes, bunker-style decor and bathtub tables."
   venue6.save

   venue7 = Venue.new
   venue7.name = "Baroqhouse"
   venue7.address ="9-13 Drewery Ln, Melbourne VIC 3000"
   venue7.suburd = "CBD"
   venue7.postcode = 3000
   venue7.venue_type = 'bar'
   venue7.image = 'http://assets.venuemob.com.au/venues/baroq-house/photos/baroq-house-function-venue-entire-venue-4.jpg'
   venue7.user_id = user2.id
   venue7.description = "Good chance of seeing some celebs popping in!"
   venue7.save

   venue8 = Venue.new
   venue8.name = "Captain Melville"
   venue8.address ="34 Franklin St, Melbourne VIC 3000"
   venue8.suburd = "CBD"
   venue8.postcode = 3000
   venue8.venue_type = 'bar'
   venue8.image = 'http://bokitty.com/wp-content/uploads/2014/04/imgp4991.jpg'
   venue8.user_id = user2.id
   venue8.description = "Smelly, dirty, funky and a whole lot of fun... your feet might stick to the floor, so just keep dancing!"
   venue8.save

   venue9 = Venue.new
   venue9.name = "Electric LadyLand"
   venue9.address ="1/265-267 Chapel St, Melbourne VIC 3181"
   venue9.suburd = "Prahran"
   venue9.postcode = 3181
   venue9.venue_type = 'bar'
   venue9.image = 'http://luxmelbourne.com/wp-content/uploads/2014/04/lux_prahran_nightclub_prahran_bar_4.jpg'
   venue9.user_id = user2.id
   venue9.description = "DJs and seasonal cocktails in a vast, sleek lounge with moody lighting, red sofas and a terrace."
   venue9.save

   venue10 = Venue.new
   venue10.name = "Chaise Lounge"
   venue10.address ="105 Queen St, Melbourne VIC 3000"
   venue10.suburd = "CBD"
   venue10.postcode = 3000
   venue10.venue_type = 'bar'
   venue10.image = 'http://www.barsandnightclubs.com.au/assets/images/content/club/melbourne/The%20Moser%20Room%20-%20Melbourne%20South%20-%20Melbourne_original.jpg'
   venue10.user_id = user2.id
   venue10.description = "Basement joint with red walls and opulent vintage furniture, hosting hip-hop and R&B nights."
   venue10.save

   venue11 = Venue.new
   venue11.name = "The Evelyn Hotel"
   venue11.address ="351 Brunswick St, Fitzroy VIC 3065"
   venue11.suburd = "Fitzroy"
   venue11.postcode = 3065
   venue11.venue_type = 'bar'
   venue11.image = 'http://evelynhotel.com.au/wp-content/uploads/2015/04/Bandroom2.jpg'
   venue11.user_id = user2.id
   venue11.description = "Longtime bar and live music venue hosting regular gigs and stand-up comedy in a grungy space."
   venue11.save

   venue12 = Venue.new
   venue12.name = "The Drunken Poet"
   venue12.address ="65 Peel Street, West Melbourne VIC 3003"
   venue12.suburd = "West Melbourne"
   venue12.postcode = 3003
   venue12.venue_type = 'bar'
   venue12.image = 'https://media.timeout.com/images/103000638/image.jpg'
   venue12.user_id = user2.id
   venue12.description = "Irish music, poetry and Guinness, plus trivia, in a snug pub hung with portraits of famous authors."
   venue12.save



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
   event = Event.create(name: "Down & Dirty",
                        image: "http://www.clubsguide.com.au/images/clubs/nights/954.jpg",
                        event_time: "2016-6-2 19:12:12",
                        genre_id: genre.id,
                        venue_id: venue6.id,
                        description: "Get down, and get dirty! Throw away your shirty... Ok, maybe not till later in the evening. But we will set the mood and you'll bounce to our tunes, all night long... Don't say we didn't warn you.")

   event = Event.create(name: "Revolver Friday",
                       image: "http://www.lasvegasweddingphotographer.net/wp-content/uploads/2014/06/las-vegas-bar-mitzvah-photographer.jpg",
                       event_time: "2016-5-20 18:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id,
                       description: "In need of a mid-week funtime fix?  RUM-ble in the Jungle is for you!!!  Man-about-town and celebrated vinyl collector Joey Elbows will be there to spin out the tunes")

   event = Event.create(name: "HAAAA Wednesday",
                       image: "http://www.bizbash.com/content/editorial/storyimg/big/spidypreview03.jpg",
                       event_time: "2016-6-1 20:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id,
                       description:"Escape the routine of the nine to five with a night party, which, incidentally, goes from nine(pm) to five(am). Be prepared to sweat the night away to hip-hop grooves from an ever-changing selection of Melbourne DJs. Free entry and $2 pots: sweet deal.")

  event = Event.create(name: "Trance Night",
                       image: "http://ozedm.com/wp-content/uploads/2014/12/asot-700-australia-sydney-melbourne-banner-armin-van-buuren.jpg",
                       event_time: "2016-6-2 19:12:12",
                       genre_id: genre.id,
                       venue_id: venue9.id,
                       description: "Get down, and get dirty! Throw away your shirty... Ok, maybe not till later in the evening. But we will set the mood and you'll bounce to our tunes, all night long... Don't say we didn't warn you.")

  event = Event.create(name: "Revolver Wednesday",
                         image: "http://paulunderhill.com/wp-content/uploads/2013/01/music-photographer-festival-event-photography_93.jpg",
                         event_time: "2016-6-2 19:12:12",
                         genre_id: genre.id,
                         venue_id: venue.id,
                         description: "Every good week needs a dance break – make yours Revolver Wednesdays. Dan San (aka DJ Danielsan, from Aussie duo Koolism) is boss here, and he'll spin a huge range of dance music and, from time to time, invite special guests up to the decks.
  You might intend to stay for a bit of a dance, but time isn't really a thing that exists at Revolver – especially when the tunes are this good. Don't say we didn't warn you.")

  event = Event.create(name: "Twisted Audio",
                          image: "http://www.twistedaudio.com/wp/images/TwistedAudioPrehistoricTreatsPt2-web01-13-248x350.jpg",
                          event_time: "2016-6-2 19:12:12",
                          genre_id: genre13.id,
                          venue_id: venue8.id,
                          description: " The underground aficionados of the music world look to the South East for the creme de la creme in DnB. Its Twisted.")

  event = Event.create(name: "Rythmn Nation",
                          image: "http://www.chaiselounge.com.au/wp-content/uploads/2015/05/RN2014BIG.jpg",
                          event_time: "2016-6-2 19:12:12",
                          genre_id: genre2.id,
                          venue_id: venue10.id,
                          description: " Old Skool vs New Skool, Hip to the hop and you don't stop...")

  event = Event.create(name: "Thrash Upon The Wicked",
                          image: "http://www.metalobsession.net/wp-content/uploads/2015/10/in-malices-wake-thrash-upon-the-wicked-2015.jpg",
                          event_time: "2016-6-2 19:12:12",
                          genre_id: genre6.id,
                          venue_id: venue11.id,
                          description: "A delightful evening of breathtakingly elegant and wonderfully inspiring compositions. A must for the misunderstood and dishenfranchised young person")

  event = Event.create(name: "Jazz Wanker Evening - Melbourne 'Jizz Jazz'",
                          image: "https://eventsimg.blob.core.windows.net/banners/66222fa0b6447a9c525d43812ac1f2d2",
                          event_time: "2016-6-2 19:12:12",
                          genre_id: genre7.id,
                          venue_id: venue5.id,
                          description: "Get together and get smoooooooth. Nice! Bring tissues.")




# artists table
    artist = Artist.new
    artist.name = 'dt'
    artist.gender = 'male'
    artist.image =''
    artist.event_id = ''
    artist.save
