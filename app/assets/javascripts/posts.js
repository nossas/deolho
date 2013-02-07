// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
  tag_list = $("#tags").attr("data-tags").split(",")
  $('#tagit').tagit({
    availableTags: tag_list,
    allowSpaces: true
  });
});
