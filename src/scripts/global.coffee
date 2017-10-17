global.$ = global.jQuery = require 'jquery'
# require './vendor/jquery.waypoints.min'
require './vendor/slick.min'

$('.nav-button').on 'click', ->
  $('html').toggleClass 'menu-is-active'

if $('.hero').length != 0
  $('.slider-content').slick
    slidesToShow: 1
    slidesToScroll: 1
    arrows: false
    fade: true
    autoplay: true
    autoplaySpeed: 7000
    asNavFor: '.slider-nav'

  $('.slider-nav').slick
    slidesToShow: 3
    slidesToScroll: 1
    asNavFor: '.slider-content'
    centerMode: false
    focusOnSelect: true
