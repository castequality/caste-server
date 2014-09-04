App.ProjectView = Ember.View.extend
  didInsertElement: ->
    $("[data-carousel]").flexslider(slideshow: false)
