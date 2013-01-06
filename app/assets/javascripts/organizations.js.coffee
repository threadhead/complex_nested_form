# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.well.sub-units').on('click', 'a.remove-sub-unit-button', ->
      removeSubUnit(@)
    )

  $('a.add-sub-unit-button').click ->
    addSubUnit(@)

  addSubUnit = (link) ->
    new_sub_unit = $(".hidden#new-sub-unit-fields").html()
    new_id = new Date().getTime()
    regexp = new RegExp("new_sub_unit", "g")
    $(link).closest('.add-sub-unit').before(new_sub_unit.replace(regexp, new_id))
    $(link).closest('.add-sub-unit').prev().find('input[type=text]').focus()


  removeSubUnit = (link) ->
    $(link).prev("input[type=hidden]").val("1")
    $(link).closest(".control-group").hide()


  $('a.create-organization-button').click ->
    # remove duplicate form values, then submit the form
    uniqueNames = []
    $.each($('.controls.sub-unit input[type=text]'), (i, el) ->
        if $.inArray($(@).val(), uniqueNames) == -1
          uniqueNames.push($(@).val())
        else
          $(@).parent().find('input[type=hidden]').val("true")
      )
    $(@).closest('form').submit()
