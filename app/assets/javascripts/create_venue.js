$( document ).on('ready', function() {

  $('.add-venue').click(function() {
    $('.user-venue-wrap').hide();

    if ($('.add-venue-form').hasClass('show')) {
      $('.add-venue-form').removeClass('show');
    } else {
      $('.add-venue-form').addClass('show')
    };

    if ($('.add-event-form').hasClass('show')) {
      $('.add-event-form').removeClass('show');
    };

    if (!$('.add-venue-form').hasClass('show') && !$('.add-event-form').hasClass('show')) {
      $('.user-venue-wrap').show();
    };
  });

  $('.add-event').click(function() {
    $('.user-venue-wrap').hide();

    if ($('.add-event-form').hasClass('show')) {
      $('.add-event-form').removeClass('show');
    } else {
      $('.add-event-form').addClass('show')
    };

    if ($('.add-venue-form').hasClass('show')) {
      $('.add-venue-form').removeClass('show');
    };

    if (!$('.add-venue-form').hasClass('show') && !$('.add-event-form').hasClass('show')) {
      $('.user-venue-wrap').show();
    };
  });
  
})
