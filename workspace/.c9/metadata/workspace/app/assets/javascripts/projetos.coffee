{"filter":false,"title":"projetos.coffee","tooltip":"/app/assets/javascripts/projetos.coffee","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":14,"column":8},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":94},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":15,"column":2},"end":{"row":16,"column":0},"action":"insert","lines":["",""],"id":95},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":16,"column":2},"end":{"row":47,"column":8},"action":"insert","lines":["$(document).ready ->","  $('.btn-select').each (e) ->","    value = $(this).find('ul li.selected').html()","    if value != undefined","      $(this).find('.btn-select-input').val value","      $(this).find('.btn-select-value').html value","    return","  return","$(document).on 'click', '.btn-select', (e) ->","  e.preventDefault()","  ul = $(this).find('ul')","  if $(this).hasClass('active')","    if ul.find('li').is(e.target)","      target = $(e.target)","      target.addClass('selected').siblings().removeClass 'selected'","      value = target.html()","      $(this).find('.btn-select-input').val value","      $(this).find('.btn-select-value').html value","    ul.hide()","    $(this).removeClass 'active'","  else","    $('.btn-select').not(this).each ->","      $(this).removeClass('active').find('ul').hide()","      return","    ul.slideDown 300","    $(this).addClass 'active'","  return","$(document).on 'click', (e) ->","  target = $(e.target).closest('.btn-select')","  if !target.length","    $('.btn-select').removeClass('active').find('ul').hide()","  return"],"id":96}]]},"ace":{"folds":[],"scrolltop":225,"scrollleft":0,"selection":{"start":{"row":18,"column":49},"end":{"row":18,"column":49},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":13,"state":"start","mode":"ace/mode/coffee"}},"timestamp":1501457775750,"hash":"855585031ab9d776a08f7cdd6b4a3a252424dfb7"}