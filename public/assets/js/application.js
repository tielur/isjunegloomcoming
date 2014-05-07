var june_is_coming = function() {
  return (new Date).getMonth() != 5
}

jQuery(function(){
  if(june_is_coming()){
    $('#yes').show();
  } else {
    $('#no').show();
  }
});
