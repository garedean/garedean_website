$(function() {
  $(".glyphicon-menu-hamburger").click(function(){
    $(this).hide();
    $(this).parent().addClass("expanded");
  });

  $(".flash").delay(1500).animate({
    top: "-26",
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
