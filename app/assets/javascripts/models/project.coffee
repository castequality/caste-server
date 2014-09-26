App.Project = DS.Model.extend
  photos: DS.hasMany("photo")
  publishedAt: DS.attr("utc")
  videoUrl: DS.attr("string")
