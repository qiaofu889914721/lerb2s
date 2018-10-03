$(function () {
    //jq初始化隐藏提交弹窗
    $(".alert").hide();
    $(".menu-item").click(function (e) {
        $(".menu-item").removeClass("menu-item-active");
        $(this).addClass("menu-item-active");
    });

    $("#submit").click(function () {
        loginingProcess();
        var artitle_title=$("#artitle_title").val();
        var artitle_tag = $("#artitle_tag").val();
        var artitle_type = $("#artitle_type").val();
        var artitle_content;
        //对编辑器的操作最好在编辑器ready之后再做
        ue.ready(function () {
            //设置编辑器的内容
            //ue.setContent('hello');
            //获取html内容，返回: <p>hello</p>
            artitle_content= ue.getContent();
            //获取纯文本内容，返回: hello
            //var txt = ue.getContentTxt();
        });
        var params={"title":artitle_title,"tag":artitle_tag,"type":artitle_type,"content":artitle_content};

        $.ajax({
            type: "post",
            url: "/publishBlog.do",
            data: params,
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            success: function (response) {
                if(parseInt(response)>=1){
                    removeLoginingProcess();
                    $("#artitle_title").val("");
                    $("#artitle_tag").val("");
                    ue.setContent('');
                    $(".alert").show();
                    setTimeout(() => {
                        $(".alert").hide();
                    }, 3000);
                }
            }
        });
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