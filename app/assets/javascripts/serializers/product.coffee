App.ProductSerializer = DS.JSONSerializer.extend
  keyForAttribute: (attr) ->
    if attr is "image"
      "images[0].secure_url"
    else
      @_super()
