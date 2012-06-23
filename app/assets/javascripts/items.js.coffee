jQuery ->
  $('table#items tbody').sortable({
    update: ->
      $.post 'sort', $(@).sortable('serialize')
  })
