$(document).on('ready page:load', function () {
  $(".menu-bar").on("click", function () {
    $(".page_container").toggleClass("open")
  })
});
