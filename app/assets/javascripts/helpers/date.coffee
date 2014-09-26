Ember.Handlebars.helper 'date', (date)->
  new Ember.Handlebars.SafeString("<time>#{moment(date).format("LL")}</time>")
