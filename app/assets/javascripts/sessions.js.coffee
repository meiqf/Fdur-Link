# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.welcome_tip').fadeIn 2000, ->
  $('.welcome_signin, .welcome_signup').fadeIn 3000, ->
    $('#bg_img_second').fadeIn 5000


  border_inset_px = "1px inset #E5E5E5"

  $("[dataflag='welcome_fake_input']").focus ->
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
