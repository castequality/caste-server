$(document).on "ajax:complete page:change ready", (event) ->
  $('.slider').flexslider
    slideshow: false
    controlNav: false
    directionNav: false
    useCSS: true
    touch: true
    video: false
