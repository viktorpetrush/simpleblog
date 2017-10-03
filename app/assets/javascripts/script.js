$(document).on("turbolinks:load", function() {
  $(".new-comment-form").hide()
  
  $(".add-comment").on("click", function(e) {
    e.preventDefault();
    $(".new-comment-form").toggle();
  });
});
