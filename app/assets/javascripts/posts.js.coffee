# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  $(document).ready ->
    error_inputs = $(".field_with_errors :input")
    $.each error_inputs, (i, field)->
      attr = $(field).attr('id')
      $(".error_link[field='#{attr}']").click ->
        $(field).focus()




