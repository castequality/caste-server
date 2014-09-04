App.VisualsController = Ember.ObjectController.extend
  bySource: Ember.computed "visuals.@each.source", ->
    result = []

    @get("visuals").forEach (item) ->
      hasGroup = result.findBy("group", item.get("source"))

      unless hasGroup?
        result.pushObject(
          Ember.Object.create(
            content: []
            group: item.get("source")
          )
        )

      result.findBy("group", item.get("source"))
        .get("content").pushObject(item)

    result
