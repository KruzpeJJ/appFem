$(document).on('ready page:load', function () {
  $(".menu-bar").on("click", function (e) {
    e.preventDefault()
    $(".page_container").toggleClass("open")
  })
});
