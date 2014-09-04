App.Product = DS.Model.extend
  status: DS.attr("string")
  url: DS.attr("string")
  images: DS.attr("object")

  image: Ember.computed.alias "images.firstObject.secure_url"

  link: Ember.computed "url", ->
    "http://castequality.bigcartel.com#{@get("url")}"
