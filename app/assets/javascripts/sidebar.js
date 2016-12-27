$(document).on('ready page:load', function () {
  $(".menu-bar").on("click", function (e) {
    $(".page_container").toggleClass("open")
  })
});
