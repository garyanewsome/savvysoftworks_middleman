//= require jquery
//= require materialize-sprockets

$(".button-collapse").sideNav();

$(document).ready(function(){
//  $('.slider').slider({full_width: true,
//    interval: 2500
//  });

  // parallax container
  $('.parallax').parallax();
  // init text area
  $('input#input_text, textarea#textarea1').characterCounter();
  // collapsible popout - current clients
  $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });

  // responsive slides
  $('.rslides').responsiveSlides({
    auto: true,             // Boolean: Animate automatically, true or false
    speed: 500,            // Integer: Speed of the transition, in milliseconds
    timeout: 2500,          // Integer: Time between slide transitions, in milliseconds
    pager: true,           // Boolean: Show pager, true or false
    //nav: false,             // Boolean: Show navigation, true or false
    //random: false,          // Boolean: Randomize the order of the slides, true or false
    pause: true,           // Boolean: Pause on hover, true or false
    pauseControls: true,    // Boolean: Pause when hovering controls, true or false
    //prevText: "Previous",   // String: Text for the "previous" button
    //nextText: "Next",       // String: Text for the "next" button
    maxwidth: "",           // Integer: Max-width of the slideshow, in pixels
    //navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
    //manualControls: "",     // Selector: Declare custom pager navigation
    //namespace: "rslides",   // String: Change the default namespace used
    //before: function(){},   // Function: Before callback
    //after: function(){}     // Function: After callback
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

// rslides pause on mouseover
$('rslides').mouseover(function(){
  $('rslides').slider('pause');
})

$('rslides').mouseout(function(){
  // Start slider
  $('rslides').slider('start');
})

// redirect after form submit
$('.submit').click(function() {
  alert('Thank you, we will be in touch shortly!')
  window.location = '#top'
});

