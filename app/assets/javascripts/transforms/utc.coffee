App.UtcTransform = DS.Transform.extend
  serialize: (value) ->
    value.toJSON() if value?

  deserialize: (value) ->
    moment.utc(value)
