App.VisualsRoute = Ember.Route.extend
  model: ->
    @store.find("visual")
