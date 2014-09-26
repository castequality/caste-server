# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen(location: "history")

App.Router.map ->
  @resource("posts", path: "/")
  @resource("visuals")
