$(function() {
  $(".glyphicon-menu-hamburger").click(function(){
    $(this).fadeOut(700);
    $(this).parent().addClass("expanded");
  });

  $(".clip-circle").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){
    window.location.replace("/about");
  });

  $(".flash").delay(500).fadeOut(1500);

  autosize($('textarea'));
});
