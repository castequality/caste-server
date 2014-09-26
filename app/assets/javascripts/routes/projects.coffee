App.ProjectsRoute = Ember.Route.extend
  model: ->
    @store.find("project")
