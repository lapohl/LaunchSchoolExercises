const pointer = document.querySelector('.pointer')

window.document.mousemove(function(e){
  pointer.css({left:e.pageX, top:e.pageY});
})