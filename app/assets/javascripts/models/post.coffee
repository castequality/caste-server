App.Post = DS.Model.extend
  toParam: DS.attr("string")
  body: DS.attr("string")
  name: DS.attr("string")
  publishedAt: DS.attr("utc")
