$(document).ready(function(){
  
  $(".menuItem").hover(function(){
    var pos=$(this).attr("alt");
 $( "#slider" ).stop().animate({
    marginLeft: 320*(pos-1),
  }, 740)
      
      
  });
                       
 
})
