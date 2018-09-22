$(function () {
    $(".menu-item").click(function (e) {
        $(".menu-item").removeClass("menu-item-active");
        $(this).addClass("menu-item-active");
    });
});
