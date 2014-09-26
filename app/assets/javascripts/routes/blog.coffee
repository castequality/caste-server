App.BlogRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @_super(controller, model)
    @_loadInstagram(controller)

  model: ->
    Ember.RSVP.hash(
      posts: @store.find("post")
      products: @store.find("product")
    )

  _loadInstagram: (controller) ->
    user = Ember.ENV.INSTAGRAM.user
    key = Ember.ENV.INSTAGRAM.client_id

    Ember.$.ajax
      dataType: "jsonp"
      url: "https://api.instagram.com/v1/users/#{user}/media/recent/?client_id=#{key}"
      success: (response) ->
        controller.set("instagram", response.data[0])
