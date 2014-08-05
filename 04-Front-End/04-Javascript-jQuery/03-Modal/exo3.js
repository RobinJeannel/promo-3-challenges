$(function(){
  $('#image-overlay').hide();

  $('#my-image').on("click", function() {
    $('#image-overlay').show();
    $('#image-overlay').append("<div><img src='http://www.louerunbateauenfrance.fr/wp-content/uploads/2011/07/vacances-en-famille-sur-un-bateau-a-moteur-loue-Rhea-Marine.jpg' height='600' width='900'></div>")
   });

  $('#image-overlay').on("click", function() {
    $('#image-overlay').hide();
    $('#image-overlay').empty()
  });

})

