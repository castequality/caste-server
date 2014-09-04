App.BlogController = Ember.ObjectController.extend
  activeProducts: Ember.computed.filterBy("products", "status", "active")

  product: Ember.computed "activeProducts.[]", ->
    _.sample(@get("activeProducts"))
