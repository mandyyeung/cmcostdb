$(document).ready(function(){
  $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
  });
  $(".alert-notice").fadeTo(2000, 500).slideUp(500, function(){
    $(".alert-notice").alert('close');
  });
});
