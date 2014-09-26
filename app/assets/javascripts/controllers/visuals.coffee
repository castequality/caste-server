App.VisualsController = Ember.ArrayController.extend
  bySource: Ember.computed "content.@each.source", ->
    result = []

    @get("content").forEach (item) ->
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
