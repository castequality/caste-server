App.PostView = Ember.View.extend
  templateName: "post"
  didInsertElement: ->
    frame = $("iframe")
    frame.attr("width", 775)
    frame.attr("height", 432)
