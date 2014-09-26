App.ProjectsIndexRoute = Ember.Route.extend
  model: ->
    newestProject = @modelFor("projects").get("firstObject")
    @transitionTo("projects.show", newestProject)
