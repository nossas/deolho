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

  $('a[rel]').each(function(){
    $(this).qtip({
      content: {
        text: "Carregando...",
        url: $(this).attr('rel')
      },
      style: { 
        name: 'cream'
      }
    });
  });
});
