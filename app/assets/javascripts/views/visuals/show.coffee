App.VisualsShow = Ember.View.extend
  didInsertElement: ->
    imageWidth = $("img").attr("width")
    $(".modal-inner").width(imageWidth)
