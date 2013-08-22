jQuery ->

  jQuery -> do $(".ambilight-table").ambilight

  $(document).on "keydown", (e)->
    if [37,38,39,40].indexOf(e.keyCode) > -1
      do $("#instructions").fadeOut