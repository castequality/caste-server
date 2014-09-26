App.ProjectsIndexRoute = Ember.Route.extend
  model: ->
    @modelFor("projects").get("firstObject")
