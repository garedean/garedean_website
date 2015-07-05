$(function() {
  $(".glyphicon-menu-hamburger").click(function(){
    $(this).fadeOut(700);
    $(this).parent().addClass("expanded");
  });

  $(".clip-circle").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){
    window.location.replace("/home");
  });

  $(".flash").delay(500).fadeOut(1500);
});
