#= require jquery-mockjax

@stubApi = (url, json) ->
  $.mockjax
    url: url
    type: "GET"
    responseText: json
    contentType: "text/json"
    dataType: "json"
