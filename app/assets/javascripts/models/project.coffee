App.Project = DS.Model.extend
  toParam: DS.attr("string")
  photos: DS.hasMany("photo")
  publishedAt: DS.attr("utc")
  videoUrl: DS.attr("string")
