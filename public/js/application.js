$(document).ready(function() {
  alert('sanity test');
  $('.new-gif-form').on('submit', 'form', function(event) {
    alert('sanity check 2');
    event.preventDefault();
    var data = $(this).serialize();
    $.ajax({
      url: "/posts",
      method: "post",
      data: data
    }).done(function(response){
      $('#gif-display').prepend(response);
    })
  })
});
