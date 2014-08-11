function reset() {
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

function forward(row) {
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    alert(row.attr('id') + " wins!");
    reset();
  }
}

$(function() {
  var session_id,
      start_button = $('#start-btn'),
      names_form = $('#names-form'),
      player1 = $('#player1'),
      player2 = $('#player2');


  $.getJSON('http://localhost:4567/session/create', function(data_json) {
    session_id = data_json.id;
    start_button.show();
  });

  start_button.on('click', function() {
    start_button.hide();
    names_form.show();
  });

  names_form.on('submit', function(event) {
    event.preventDefault();
    var name_player1 = $('#player1-name').val();
    var name_player2 = $('#player2-name').val();
    var data = JSON.stringify({
      players: [
        { name: name_player1 },
        { name: name_player2 }
      ]
    });
    $.post('http://localhost:4567/session/'+session_id+'/game/create', data, function(data_json) {
        names_form.hide();
        $('#board').show();
        $(document).on('keyup', function(e) {
            if (e.keyCode == 81) {
                forward(player1);
            }
            else if (e.keyCode == 80) {
                forward(player2);
            }
        });
    });
  });
});