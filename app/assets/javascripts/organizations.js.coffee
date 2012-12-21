# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.well.sub-units').on('click', 'a.remove-sub-unit-button', ->
      remove_sub_unit(@)
    )

  $('.add-sub-unit-button').click ->
    add_sub_unit(@)

  add_sub_unit = (link) ->
    new_sub_unit = $(".hidden#new-sub-unit-fields").html()
    new_id = new Date().getTime()
    regexp = new RegExp("new_sub_unit", "g")
    $(link).closest('.add-sub-unit').before(new_sub_unit.replace(regexp, new_id))
    $(link).closest('.add-sub-unit').prev().find('input[type=text]').focus()


  remove_sub_unit = (link) ->
    $(link).prev("input[type=hidden]").val("1")
    $(link).closest(".control-group").hide()
