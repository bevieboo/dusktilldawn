$(document).on('ready', function() {

  function showEvents() {
    if ($('#events-template').length) {

      $.ajax({
        url: 'http://localhost:3000/api/events'
      }).done(function(events) {

        $.each(events, function(index, event) {
          var template = $('#events-template').html();
          var templateFunction = Handlebars.compile(template);

          if (event.image == undefined) {
            eventImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            eventImage = event.image
          };

          var html = templateFunction({
            name: event.name,
            id: event.id,
            type: event.venue.venue_type,
            image_url: eventImage,
            venue: event.venue.name,
            event_time: event.event_time,
            like_count: event.like_count
          });

          var $newDiv = $(html);
          $('.list-all-events').append($newDiv);

        });
      });
    };
  }

  showEvents();


    $(document).on('click', '.back', function() {
        $('.list').empty();
        showEvents();
    })

});
