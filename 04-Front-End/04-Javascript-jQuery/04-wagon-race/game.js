$(document).ready(function() {
  $(document).on('keyup',function(event) {
    if(event.keyCode == 65){
      var p = $('#player1_race .active').index();
      $('#player1_race .active').removeClass('active');
      $('#player1_race td').eq(p+1).addClass('active');
    } else if(event.keyCode == 90){
      var p = $('#player2_race .active').index();
      $('#player2_race .active').removeClass('active');
      $('#player2_race td').eq(p+1).addClass('active');
    }
    // Detect which key was pressed and call the appropriate function
    // Google "jquery keyup what key was pressed" if you don't know how
  });
});