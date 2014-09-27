App.Post = DS.Model.extend
  body: DS.attr("string")
  name: DS.attr("string")
  publishedAt: DS.attr("utc")
