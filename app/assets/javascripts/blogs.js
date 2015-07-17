$(function() {
  $(document).on("page:change", function() {
    $("#add-new-comment").click(function() {
      $(this).hide();
      $("#new_comment").fadeIn();
    });

    // $("#new_comment").submit(function() {
    //   $(this).hide(0, function() {
    //     $("#add-new-comment").fadeIn();
    //   });
    // });
  });
});
