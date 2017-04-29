$(document).on('click', '.click-me', function(){
  $('.slide-down').slideToggle();
});


$(document).on('click', '.toggle-menu', function(e) {
  var toggleClass = $(this).data('class');

  var method = 'fade';

  if (Modernizr.mq('only screen and (max-width: 767px)')) {
    method = 'hide';
  }

  if($('.toggle-menu').not($(this)).hasClass('clicked')) {
    $('.toggle-menu').removeClass('clicked');

    if(method == 'fade') {
      $('.menu-item-container').fadeTo('fast', 1);
    } else if(method == 'hide') {
      $('.menu-item-container').slideDown();
    }
  }

  $(this).toggleClass('clicked');

  if(method == 'fade') {
    if($(this).hasClass('clicked')) {
      $('.menu-item-container:not(.' + toggleClass + ')').fadeTo('fast', 0.1);
    } else {
      $('.menu-item-container:not(.' + toggleClass + ')').fadeTo('fast', 1);
    }
  } else if(method == 'hide') {
    if($(this).hasClass('clicked')) {
      $('.menu-item-container:not(.' + toggleClass + ')').slideUp();
    } else {
      $('.menu-item-container:not(.' + toggleClass + ')').slideDown();
    }
  }

  return false;
});
