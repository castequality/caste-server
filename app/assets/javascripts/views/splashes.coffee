App.SplashesView = Ember.View.extend
  classNameBindings: [":carousel"]

  didInsertElement: ->
    @$().flexslider(slideshow: false)
