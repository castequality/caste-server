App.BlogView = Ember.View.extend
  didInsertElement: ->
    @$().find("[data-carousel]").flexslider(slideshow: false)
