$(function() {
  $(".flash").delay(1500).animate({
    top: "-1.83em",
  }, 900, "easeOutBounce" );

  $(document).on("page:change", function() {
    autosize($('textarea'));
	});
});

$(document).on("page:change", function() {
  $('#submit-form-link').click(function() {
    $('form').submit();
  });
});
