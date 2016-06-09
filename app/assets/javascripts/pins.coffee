# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-09T09:06:25+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-09T12:56:29+03:00



# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      isFitWidth: true
      
