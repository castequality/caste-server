App.SplashesView = Ember.View.extend
  didInsertElement: ->
    $("[data-carousel]").flexslider(slideshow: false)
