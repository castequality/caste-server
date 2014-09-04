App.Photo = DS.Model.extend
  toParam: DS.attr("string")
  project: DS.belongsTo("project")
  caption: DS.attr("string")
  thumbnail: DS.attr("string")
  url: DS.attr("string")
