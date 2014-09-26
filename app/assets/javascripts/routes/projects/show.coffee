App.ProjectsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find("project", params.id)
