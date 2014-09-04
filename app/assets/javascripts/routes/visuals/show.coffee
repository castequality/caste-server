App.VisualsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find("visual", params.id)
