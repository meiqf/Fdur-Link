# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  setInterval ->
    $('#bg_img_first').fadeOut 1000
    $('#bg_img_second').fadeIn 4000
  , 2000
  border_inset_px = "1px inset #E5E5E5"

  $("[dataflag='welcome_fake_input']").click ->
    $(this).hide()
    real_input = $(this).next()
    real_input.show()
    real_input.css 'color' : 'black' ,"border" : "1px solid yellowgreen"
    real_input.focus()

  $("[dataflag='welcome_real_input']").blur ->
    if $(this).val() != ""
      $(this).css "border", border_inset_px
    else
      $(this).hide()
      $(this).prev().show()
