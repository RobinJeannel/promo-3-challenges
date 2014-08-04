// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is a good practise. Each time you make some progress in software
// development, you want to save a snapshot.

function run_challenges() {

  // Ex 1. Read the content of the email input
  var email = $('#email').attr('value');  // TODO: replace null, keep the email variable.


  // Ex 2. Fill the content of the email input with your email
  $('#email').attr('value','rjeanneldethiersant@gmail.com');


  // Ex 3. Replace the email hint (next to the input) with 'This is my email now'
  //       The text should be emphasized using a <strong> tag
  $('#email-hint').html("<strong>This is my email now</strong>");

  // Ex 4. Add the .blue CSS class to the table header cells (th elements)
  $('th').addClass("blue");


  // Ex 5. Count the number of table body rows there are (team count!)
  var team_count = 0;  // TODO: replace 0, keep the team_count variable.
  var team_count = $('tbody tr').length;

  // Ex 6. Say there is a 15th team added to the table.
  //       Add a row at the bottom, this new team should have zero points.
  $('table tbody').append('<tr><td>15</td><td>Vif</td><td>0</td></tr>');

  // Ex 7. Write some code to sum all points given to all teams
  var sum = 0;  // TODO: replace 0 with your sum result, keep the sum variable.
  $('tbody tr')


  // Ex 8. Change the background color of all table header cells to #DDF4FF
  $('th').css("background-color", "#DDF4FF");


  // Ex 9. Translate the #results list 20px downward (animation would be great ^_^)
  $('#results-wrapper').css('padding-top', '20px');


  // Ex 10. Remove the "Email:" label from the DOM
  $("label").remove();


  // Checking exercise answers. DO NOT MODIFY BELOW
  assert_equal(email, "boris@lewagon.org");
  assert_not_equal(document.getElementById("email").value, "boris@lewagon.org");
  assert_equal($('strong', document.getElementById("email-hint")).html(), "This is my email now");
  assert_equal($('th:eq(0)').css('color'), 'rgb(0, 0, 255)');
  assert_equal(team_count, 14);
  assert_equal($('tbody > tr').length, 15);
  assert_equal(sum, 859)
  assert_equal($('th:eq(0)').css('background-color'), 'rgb(221, 244, 255)');
  setTimeout(function() {
    assert_equal($('ul:eq(0)').position().top, 20);
    assert_equal(document.getElementsByTagName('label').length, 0);
  }, 1000);
}
