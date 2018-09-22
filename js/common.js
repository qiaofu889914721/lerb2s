$(function () {
    $(".menu-item").click(function (e) {
        $(".menu-item").removeClass("menu-item-active");
        $(this).addClass("menu-item-active");
    });

    $("#submit").click(function () {
        loginingProcess();
    });
});

document.body.onclick=function (e) {
    //获取事件对象
    e = e || window.event;//IE和Chrome下是window.event FF下是e
    //获取事件源
    var target = e.target || e.srcElement;//IE和Chrome下是srcElement FF下是target
    if(target.id!="submit"){
        removeLoginingProcess();
    }
}

<!--进度效果方法-->
function  loginingProcess() {
    $(".loginingProcess").addClass("loginingProcess-after");
    $("#foo").addClass("foo-after");
    $("#foo").shCircleLoader();
    $("#foo").show();
}

function removeLoginingProcess() {
    $(".loginingProcess").removeClass("loginingProcess-after");
    //$("#foo").removeClass("foo-after");
    $("#foo").hide();
}