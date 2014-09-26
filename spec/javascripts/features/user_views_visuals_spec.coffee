#= require spec_helper

test "User views visuals sorted into columns by sources", ->
  stubApi "/visuals", visuals: [
    {id: 1, source: "chrismulhern", thumbnail: "chrismulhern.jpg" }
    {id: 2, source: "devonjconnell", thumbnail: "devonjconnell.jpg" }
    {id: 3, source: "waltwolfe", thumbnail: "waltwolfe.jpg" }
    {id: 4, source: "zandertaketomo", thumbnail: "zandertaketomo.jpg" }
  ]

  visit("/")
  click("a:contains('VISUALS')")

  andThen ->
    equal(imageFrom("chrismulhern"), "chrismulhern.jpg")
    equal(imageFrom("devonjconnell"), "devonjconnell.jpg")
    equal(imageFrom("waltwolfe"), "waltwolfe.jpg")
    equal(imageFrom("zandertaketomo"), "zandertaketomo.jpg")

imageFrom = (source) ->
  find("[data-source='#{source}'] img").attr("src")
