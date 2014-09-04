App.Project = DS.Model.extend
  banner: DS.attr("string")
  bannerHover: DS.attr("string")
  photos: DS.hasMany("photo")
  publishedAt: DS.attr("utc")
  videoUrl: DS.attr("string")

  hasBanner: Ember.computed.notEmpty("banner")
