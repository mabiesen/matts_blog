document.addEventListener("turbolinks:load", () => {
  $(".readmore_toggle").on('click', function() {
    var $this_parent = $(this).parent();	
    var $dots_span = $this_parent.children('p').children('span.dots');
    var $more_span = $this_parent.children('p').children('span.more');

    if ($dots_span.css('display') === "none") {
      $dots_span.css('display', "inline");
      $(this).html("Read more"); 
      $more_span.css('display', "none");
    } else {
      $dots_span.css('display', "none");
      $(this).text("Read less"); 
      $more_span.css('display', "inline");
    }
  });
});
