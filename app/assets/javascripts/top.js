window.addEventListener("load", function() {
  var $list = $("li").attr("role", "presentation");
  $list.on("click", function() {
    $list.remove("active");
    $(this).addClass("active");
  });
});

