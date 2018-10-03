// window.onload=function(){
//     var tarea=document.getElementsByTagName("textarea")[0];
//     tarea.onfocus=function(){
//         this.style.border=0;
//     };
// }
$(function () {
    $("body").delegate("#visitorLoginBtn", "click", function () {
        $("#visitorLoginBtn").val("LOGINING.....");
        var user_name = $("#username").val();
        var user_password = $("#password").val();
        var params = {"user_name": user_name, "user_password": user_password};
        $.ajax({
            type: "post",
            url: "/visitorlogin.do",
            data: params,
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            success: function (response) {
                var data=JSON.parse(response);
                if (data.loginStatu) {
                    $("#loginModal").modal('hide');
                    $(".loginblock").empty();
                    $(".loginblock").text(data.user_nick);
                }
            }
        });
    });
});

function  star(e,commentId) {
    var param={"method":"star","commentId":commentId};
    $.ajax({
        type: "post",
        url: "/comment.do",
        data: param,
        contentType: "application/x-www-form-urlencoded;charset=utf-8",
        success: function (response) {
            e.style.cssText+="color:red;!important;"
            e.innerText=response;
        }
    });
}
function  diss(e,commentId) {
    var param={"method":"diss","commentId":commentId};
    $.ajax({
        type: "post",
        url: "/comment.do",
        data: param,
        contentType: "application/x-www-form-urlencoded;charset=utf-8",
        success: function (response) {
            e.style.cssText+="color:blue;!important;"
            e.innerText=response;
        }
    });
}