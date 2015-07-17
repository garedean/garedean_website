$(function() {
  $(document).on("page:change", function() {
    $("span.toggle-references").click(function() {
      $(this).parent().toggleClass("expanded");
      $(".references").slideToggle({queue: false});
    });
  });
});
