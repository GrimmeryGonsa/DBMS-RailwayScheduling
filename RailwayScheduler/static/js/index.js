/*slider*/
$(document).ready(function(){
  
  $(".menuItem").hover(function(){
    var pos=$(this).attr("alt");
 $( "#slider" ).stop().animate({
    marginLeft: 200*(pos-1),
  }, 500)
      
      
  });
 
})


function switchClass(i) {
   var lis = $('#home-news > div');
   lis.eq(i).removeClass('home_header_on');
   lis.eq(i).removeClass('home_header_out');
    lis.eq(i = ++i % lis.length).addClass('home_header_on');
    lis.eq(i = ++i % lis.length).addClass('home_header_out');
    setTimeout(function() {
        switchClass(i);
    }, 3500);
}

$(window).load(function() {
   switchClass(-1);
});
