App.BlogController = Ember.ObjectController.extend
  product: Ember.computed "products.[]", ->
    _.sample(@get("products").get("content"))
