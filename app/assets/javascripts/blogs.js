$(function() {
  $(document).on("page:change", function() {
    $("#add-new-comment").click(function() {
      $(this).hide();
      $("#new_comment").fadeIn();
    });
  });
});
