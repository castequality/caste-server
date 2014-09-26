#= require spec_helper

test "User views visuals sorted into columns by sources", ->
  stubApi "/sources/chrismulhern/visuals", [
    { id: 1, url: "chrismulhern.jpg" }
  ]
  stubApi "/sources/devonjconnell/visuals", [
    { id: 2, url: "devonjconnell.jpg" }
  ]
  stubApi "/sources/waltwolfe/visuals", [
    { id: 3, url: "waltwolfe.jpg" }
  ]
  stubApi "/sources/zandertaketomo/visuals", [
    { id: 4, url: "zandertaketomo.jpg" }
  ]

  visit("/")
  click("VISUALS")

  andThen ->
    ["chrismulhern", "devonjconnell", "waltwolfe", "zandertaketomo"].forEach (source)->
      imageSrc = find(".#{source} img").prop("src")
      equal(imageSrc, "#{source}.jpg")
