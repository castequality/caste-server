test "User views posts from root", ->
  stubApi "/posts", posts: [
    { id: 1, body: "<p>Hello</p>" }
  ]

  visit("/")

  andThen ->
    postIsDisplayed = find(".post [data-role=body]:contains('Hello')")
    ok(postIsDisplayed)
