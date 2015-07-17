$(function() {
  $(".glyphicon-menu-hamburger").click(function(){
    $(this).fadeOut(700);
    $(this).parent().addClass("expanded");
  });

  $(".clip-circle").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){
    window.location.replace("/about");
  });

  $(".flash").delay(1000).fadeOut(1500);

  $(document).on("page:change", function() {
    autosize($('textarea'));
	});

  $(".test").click(function() {
    $('.test-result').text("Bingo");
  });
});
