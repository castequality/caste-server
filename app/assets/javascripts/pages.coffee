$(document).on "ajax:complete page:change ready", (event) ->
  $(".js-slider").flexslider
    slideshow: false
    controlNav: false
    directionNav: false
    useCSS: true
    touch: true
    video: false

  links = $("#links")
  if links?.length
    topOffset = links.offset().top - 20

    links.scrollspy
        min: topOffset

        onEnter: (element, position) ->
          links.addClass("fixed-links")

        onLeave: (element, position) ->
          if position.top <= topOffset
            links.removeClass("fixed-links")
