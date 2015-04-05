# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".owl-carousel").owlCarousel
    navigation : true,
    slideSpeed : 300,
    paginationSpeed : 400,
    singleItem:true
    autoPlay : 5000
    pagination: false
    navigationText: [
      "<i class='fa fa-chevron-circle-left'></i>",
      "<i class='fa fa-chevron-circle-right'></i>"
    ]

  $('#owl-slide')
    .mouseenter ->
      $('.owl-buttons div').show()
    .mouseleave ->
      $('.owl-buttons div').hide()