// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
  if($("#tags").attr("data-tags")){
    tag_list = $("#tags").attr("data-tags").split(",")
    $('#tagit').tagit({
      availableTags: tag_list,
      allowSpaces: true
    });
  }

  $('a[title]').each(function(){
    $(this).qtip({
      content: {
        url: $(this).attr('title')
      }
    });
  });
});
