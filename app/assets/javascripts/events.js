$(document).ready(function(){

  function showEvents() {
    $.ajax(function(){
      url: "http://localhost:3000/api/events"
      method: 'get'
    }).done(function(){

      $.each(events, function(index, event){
        var template = $("event-template").html();
        var templateFunction = Handlebars.compile(template);

        if (event.image == undefined) {
          eventImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
        } else {
          eventImage = event.image
        };
        console.log(event.image);

        var html = templateFunction({
          name: event.name,
          id: event.id,
          // type: event.venue_type.toUpperCase(),
          image_url: eventImage,
          // suburb: event.suburd,
          like_count: event.like_count
        });

        var $newDiv = $(html);
        $('.list').append($newDiv);

      })

    });


  }

  showEvents();



});
