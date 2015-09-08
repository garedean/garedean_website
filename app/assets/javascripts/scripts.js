$(function() {
  $(".glyphicon-menu-hamburger").click(function(){
    $(this).hide();
    $(this).parent().addClass("expanded");
  });

  $(".clip-circle").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){
    //window.location.replace("/about");
  });

  //$(".flash").delay(1500).slideUp(500);
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
