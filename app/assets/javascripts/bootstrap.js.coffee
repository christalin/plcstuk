jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()




$(document).on "page:change" , ->
  $("#calendar").fullCalendar()