$(document).on "ajax:complete ajaxSuccess page:change ready", (event) ->
  $(".js-slider").flexslider
    slideshow: false
    controlNav: false
    useCSS: true
    touch: true
    video: false

    directionNav: true
    prevText: ""
    nextText: ""

    after: ->
      nav         = $(".flex-direction-nav")
      activeSlide = $(".flex-active-slide")
      firstChild  = activeSlide.children()[0]

      if firstChild.className is "video"
        nav.addClass("hidden")
      else
        nav.removeClass("hidden")


  $("#next-page").on "inview", (e, visible) ->
    return unless visible

    $(this).click()

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
