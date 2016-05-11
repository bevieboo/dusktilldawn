$( document ).on('ready', function() {

  function showEvents() {
    if($('#events-template').length){

      $.ajax({
        url: 'http://localhost:3000/api/events'
      }).done(function(events) {

        $.each(events, function(index, event) {
          var template = $('#events-template').html();
          console.log(events);
          var templateFunction = Handlebars.compile(template);

          if (event.image == undefined) {
            venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            venueImage = event.image
          };

          var html = templateFunction({
            name: event.name,
            id: event.id,
            type: event.venue.venue_type,
            image_url: venueImage,
            venue: event.venue.name,
            like_count: event.like_count
          });

          var $newDiv = $(html);
          $('.list').append($newDiv);

        });
      });
    };
  }

  showEvents();

  // $('.list').on('click', '.item', function(event) {
  //
  //   $('.list').empty();
  //   var $item = $(event.target).closest('.item');
  //   var venueId = $item.data('venue-id');
  //   console.log(venueId);
  //
  //   $.ajax({
  //     url: 'http://localhost:3000/api/venues/' + venueId
  //   }).done(function(venue) {
  //     console.log(venue);
  //
  //     var template = $('#venue-details-template').html();
  //     var templateFunction = Handlebars.compile(template);
  //
  //     if (venue.image == undefined) {
  //       venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
  //     } else {
  //       venueImage = venue.image
  //     };
  //     console.log(venue.image);
  //
  //     var html = templateFunction({
  //       name: venue.name,
  //       id: venue.id,
  //       desc: venue.description,
  //       type: venue.venue_type.toUpperCase(),
  //       image_url: venueImage,
  //       address: venue.address,
  //       suburb: venue.suburd,
  //       like_count: venue.like_count
  //     });
  //
  //     var $newDiv = $(html);
  //     $('.list').append($newDiv);
  //
  //   })
  //   console.log(this);
  // })

   $(document).on('click', '.back', function() {
    $('.list').empty();
    showVenues();
  })

});
