$( document ).on('ready', function() {

  function showVenues() {
    if($('#venues-template').length){

      $.ajax({
        url: 'http://localhost:3000/api/venues'
      }).done(function(venues) {

        $.each(venues, function(index, venue) {
          console.log( $('#venues-template'));
          var template = $('#venues-template').html();
          console.log(template);
          var templateFunction = Handlebars.compile(template);

          if (venue.image == undefined) {
            venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            venueImage = venue.image
          };
          console.log(venue.image);

          var html = templateFunction({
            name: venue.name,
            id: venue.id,
            type: venue.venue_type.toUpperCase(),
            image_url: venueImage,
            suburb: venue.suburd,
            like_count: venue.like_count
          });

          var $newDiv = $(html);
          $('.list').append($newDiv);

        });
      });
    };
  }

  showVenues();
    // =================  leo changed here ========
  $('.list').on('click', '.venue-image', function(event) {
                         // '.item'
    $('.list').empty();
    var $item = $(event.target).closest('.item');
    var venueId = $item.data('venue-id');
    console.log(venueId);

    $.ajax({
      url: 'http://localhost:3000/api/venues/' + venueId
    }).done(function(data) {
      console.log(data);  // changed by leo,  below add all data. in the front of venue
               //venue
      var template = $('#venue-details-template').html();
      var templateFunction = Handlebars.compile(template);

      if (data.venue.image == undefined) {
        venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
      } else {
        venueImage = data.venue.image
      };
      console.log(data.venue.image);

      var html = templateFunction({
        name: data.venue.name,
        id: data.venue.id,
        desc: data.venue.description,
        type: data.venue.venue_type.toUpperCase(),
        image_url: venueImage,
        address: data.venue.address,
        suburb: data.venue.suburd,
        like_count: data.venue.like_count
      });

      var $newDiv = $(html);
      $('.list').append($newDiv);

        // ==============show all comments of this venue ==============
      $.each(data.comments, function(index, comment){
          var commentTemplate = Handlebars.compile($('#comments-template').html());
          var commentHtml = commentTemplate({
             content: comment.content

          });
          var $newComment = $(commentHtml);
          $('.comments-list').append($newComment);
      });
       //==================================

    });
    console.log(this);
  })

   $(document).on('click', '.back', function() {
    $('.list').empty();
    showVenues();
  })

  // leo =========== add like function =============
  $('.list').on('click','.likeBtn',function(event){
      var $like_count = $(event.target).closest('.venue-details-wrap').find('.like_count');
      var venueId = $(event.target).closest('.item').data('venue-id');
      $.ajax({
        url: '/api/likes',
        data: {venue_id: venueId},
        method: 'post'
      }).done(function(data){
         $like_count.html(data.like_count);
      })
  });

  // ==================== add comment function =============
    $('.postBtn').on('click',function(){
       var venueId = $('.item-detail').data('venue-id');
       $.ajax({
         url: 'http://localhost:3000/api/comments',
         method: 'post',
         data: {content: $('#input_comment').val(), venue_id: venueId }
       }).done(function(){
         console.log('add successful');
       })
    })



  //==========================================================
});
