# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen(location: "history")

App.Router.map ->
  @resource("blog", path: "/")
  @resource("visuals", ->
    @route("show", path: ":id")
  )
