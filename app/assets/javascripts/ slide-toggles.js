$(document).on('click', '.slide-down', function(){
alert('test');
});


<div class="slideDown">What a deal!</div>
<span class="grabPromo">Grab This Deal</span>

$('.grabPromo').click(function(e){
    $('.slideDown').slideToggle();
});
