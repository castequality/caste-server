App.VisualsRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash(
      splashes: @store.find("splash")
      visuals: @store.find("visual")
    )
