$(function() {
  $(".clip-circle").click(function() {
    $(this).addClass("expanded");
  });

  $(".glyphicon-menu-hamburger").click(function(){
    $(this).fadeOut(600);
  });

  $(".clip-circle").bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){
    window.location.replace("/home");
  });


  $(".flash").delay(500).fadeOut(1500);
});
