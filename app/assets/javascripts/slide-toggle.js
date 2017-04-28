$(document).on('click', '.click-me', function(){
  $('.slide-down').slideToggle();
});


$(document).on('click', '.toggle-menu', function(e) {
  console.log('test');
  var toggleClass = $(this).data('class');

  if($('.toggle-menu').not($(this)).hasClass('clicked')) {
    $('.menu-item-container').fadeTo('fast', 1);
    $('.toggle-menu').removeClass('clicked');
  }

  $(this).toggleClass('clicked');
  // $('.menu-item:not(.' + toggleClass + ')').fadeTo('fast', 0.5);
  if($(this).hasClass('clicked')) {
    $('.menu-item-container:not(.' + toggleClass + ')').fadeTo('fast', 0.1);
  } else {
    $('.menu-item-container:not(.' + toggleClass + ')').fadeTo('fast', 1);
  }
  return false;
});
