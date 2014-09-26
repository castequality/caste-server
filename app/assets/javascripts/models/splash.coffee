App.Splash = DS.Model.extend
  toParam: DS.attr("string")
  name: DS.attr("string")
  videoUrl: DS.attr("string")
  publishedAt: DS.attr("utc")
