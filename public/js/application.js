$(document).ready(function() {
  $('#nk_form').submit(function() {
    event.preventDefault();
    var url = $(this).attr("action");
    var phrase = $(this).serialize();
    $('p').hide();
    $.post(url,phrase, function(server_response){
      $('h1').after(server_response);
    }); 
  });
});
