# Place all the behaviors and hooks related to the matching controller here.
# All aux logic will automatically be available in application.js.
# You can use CoffeeScript in aux file: http://coffeescript.org/

$(document).on 'click', '.panel-heading span.clickable', (e) ->
  $this = $(this)
  if !$this.hasClass('panel-collapsed')
    $this.parents('.panel').find('.panel-body').slideUp()
    $this.addClass 'panel-collapsed'
    $this.find('i').removeClass('glyphicon-chevron-up').addClass 'glyphicon-chevron-down'
  else
    $this.parents('.panel').find('.panel-body').slideDown()
    $this.removeClass 'panel-collapsed'
    $this.find('i').removeClass('glyphicon-chevron-down').addClass 'glyphicon-chevron-up'
  return
  
  $(document).ready ->
  $('.btn-select').each (e) ->
    value = $(this).find('ul li.selected').html()
    if value != undefined
      $(this).find('.btn-select-input').val value
      $(this).find('.btn-select-value').html value
    return
  return
$(document).on 'click', '.btn-select', (e) ->
  e.preventDefault()
  ul = $(this).find('ul')
  if $(this).hasClass('active')
    if ul.find('li').is(e.target)
      target = $(e.target)
      target.addClass('selected').siblings().removeClass 'selected'
      value = target.html()
      $(this).find('.btn-select-input').val value
      $(this).find('.btn-select-value').html value
    ul.hide()
    $(this).removeClass 'active'
  else
    $('.btn-select').not(this).each ->
      $(this).removeClass('active').find('ul').hide()
      return
    ul.slideDown 300
    $(this).addClass 'active'
  return
  
$(document).on 'click', (e) ->
  target = $(e.target).closest('.btn-select')
  if !target.length
    $('.btn-select').removeClass('active').find('ul').hide()
  return