App.BlogController = Ember.ObjectController.extend
  activeProducts: Ember.computed.filterBy("products", "status", "active")

  product: Ember.computed "activeProducts.[]", ->
    _.sample(@get("activeProducts"))

  banners: Ember.ENV.ASSETS.lookbooks.fall2014
