//= require jquery
//= require materialize-sprockets

$(".button-collapse").sideNav();

$(document).ready(function(){
  $('.slider').slider({full_width: true});
  // parallax container
  $('.parallax').parallax();
  // init text area
  $('input#input_text, textarea#textarea1').characterCounter();
  // collapsible popout - current clients
  $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });

});

// jQuery Scroll Animations
$('a[href^="#"]').on('click', function(event) {
    var target = $(this.getAttribute('href'));
    if( target.length ) {
        event.preventDefault();
        $('html, body').stop().animate({
            scrollTop: target.offset().top
        }, 500);
    }
});