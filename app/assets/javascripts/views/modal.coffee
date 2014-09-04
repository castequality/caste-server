App.Modal = Ember.View.extend
  templateName: "modal"
  modalInner: ->
    $(".modal-inner")

  image: ->
    @modalInner().find("img")

  didInsertElement: ->
    @get("element").focus()
    @image().load =>
      @modalInner().width(@image().width())
