$(function() {
  $(".flash").delay(1500).animate({
    top: "-1.83em",
  }, 900, "easeOutBounce" );

  $(document).on("turbolinks:load", function() {
    autosize($('textarea'));

    $('#submit-form-link').click(function() {
      $('form').submit();
    });
	});
});
