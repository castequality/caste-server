App.LinksView = Ember.View.extend
  didInsertElement: ->
    sticky = $(@get("element")).parents("[data-sticky]")

    # topOffset = sticky.offset().top - 20
    topOffset = 638 - 20

    sticky.scrollspy
      min: topOffset

      onEnter: (element, position) ->
        sticky.addClass("fixed")

      onLeave: (element, position) ->
        if position.top <= topOffset
          sticky.removeClass("fixed")
