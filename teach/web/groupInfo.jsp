<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/7
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->


    <title>分组</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

    <style type="text/css">
        .buttonCss{
            margin: 10px;
        }
        #addStu{
            margin-top: 30px;
        }
        #deleteStu{
            margin-top: 200px;
        }

    </style>
</head>
<body>
<div class="row">
    <div class="col-sm-5 border" >
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <h4>小组列表</h4>
                <div class="row">
                    <div class="col-sm-8"></div>
                    <div class="input-group col-sm-4">
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-primary">分成小组个数：</button>
                        </span>
                        <input type="text" class="form-control" id="inputNum">
                        <span class="input-group-btn">
                        <button type="button" class="btn btn-warning" id="grouping">分组</button>
                        </span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content" id="left">
                                <div class="tabs-container">
                                    <div class="tabs-left">
                                        <ul class="nav nav-tabs" id="className">
                                        </ul>
                                        <div class="tab-content ">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-2 border">
        <div class="row">
            <div class="col-sm-4"></div>
            <div  class="nav col-sm-2">
                <button id="deleteStu" class="btn btn-danger btn-arrow-right" type="button">
                    删除
                    <i class="glyphicon glyphicon-arrow-right"></i>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="nav col-sm-2">
                <button id="addStu" class="btn btn-info btn-arrow-left" type="button">
                    <i class="glyphicon glyphicon-arrow-left"></i>
                    添加
                </button>
            </div>
        </div>
    </div>
    <div class="col-sm-5 border" >
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <h4>班级学生列表</h4>
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content" id="right">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script id="welcome-template" type="text/x-handlebars-template"></script>
<script src="static/js/jquery.min.js?v=2.1.4"></script>
<script src="static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="static/js/plugins/layer/layer.min.js"></script>
<script src="static/js/content.min.js"></script>
<script src="static/js/welcome.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("body").on("click",".chooseStu",function () {
            if ($(this).hasClass("btn-info")){
                var id = $(this).parent().attr("id");
                $(this).attr("name",id).removeClass("btn-info").addClass("btn-warning");
            }else if($(this).hasClass("btn-warning")){
                $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id").removeAttrs("name");
            }
        });
        $("#addStu").click(function () {
            $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
            $("#right").find(".btn-warning").clone().appendTo($(".tab-content").find(".active").find(".panel-body"));
            $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-success");
            $("#right").find(".btn-warning").remove();
        });
        $("#deleteStu").click(function () {
            $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
            $("#left").find(".btn-warning").clone().appendTo("#right");
            $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-success");
            $("#left").find(".btn-warning").remove();
        });

        //获取从父页面传来的班级id
        var url = location.search;
        var s = url.slice(5);

        $.get("/user/getUsersByClassNoGroup",{s},function (msg) {
            var users = msg['users'];
            $.each(users,function (i,each) {
                $("#right").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="'+each['id']+'">'+each['name']+'</button>');
            })
        });

         function getGroup() {
            $.get("/office/getGroupByClass",{s},function (msg) {
                var groups = msg['groups'];
                var num = groups.length;
                $("#grouping").attr("text",num);
                $.each(groups,function (i,each) {
                    var tt="#tab-"+(i+1);
                    $('#className').append($("<li>").addClass("group"+(i+1)+"").addClass(""+each['id']+"").append($("<a>").attr("data-toggle","tab").attr("href",tt).text(""+each['name']+"")));
                    $('.tab-content').append($("<div>").attr("id","tab-"+(i+1)).addClass("tab-pane").addClass(""+each['id']+"").append($("<div>").addClass("panel-body").attr("id",each['id'])
                        .append($("<div>").append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss deleteGroup").text("删除该组")))));
                });

                var ll = $("#className").find("li").length;
                $("#grouping").click(function () {
                    var num =  $("#inputNum").val();
                    $.get("/office/addGroup",{num,ll,s},function () {
                    });
                    window.location.reload();
                    /*var num =  $("#inputNum").val();
                    var num2 = $(this).attr("text");
                    if (num2!=null){
                        for (var j=(parseInt(num2)+parseInt(1));j<=(parseInt(num)+parseInt(num2));j++){
                            var tt="#tab-"+j;
                            if (j===1){
                                $('#className').append($("<li>").addClass("active group1").append($("<a>").attr("data-toggle","tab").attr("href",tt).text("第"+j+"组"))
                                    .append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss deleteGroup").text("删除该组")));
                                $('.tab-content').append($("<div>").attr("id","tab-"+j).addClass("tab-pane active").append($("<div>").addClass("panel-body").attr("id","group"+j)));
                            }else {
                                $('#className').append($("<li>").addClass("group"+j+"").append($("<a>").attr("data-toggle","tab").attr("href",tt).text("第"+j+"组"))
                                    .append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss deleteGroup").text("删除该组")));
                                $('.tab-content').append($("<div>").attr("id","tab-"+j).addClass("tab-pane").append($("<div>").addClass("panel-body").attr("id","group"+j)));
                            }
                        }
                    }
                    else {
                        for (var i=1;i<=num;i++){
                            var ss="#tab-"+i;
                            if (i===1){
                                $('#className').append($("<li>").addClass("active group1").append($("<a>").attr("data-toggle","tab").attr("href",ss).text("第"+i+"组"))
                                    .append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss deleteGroup").text("删除该组")));
                                $('.tab-content').append($("<div>").attr("id","tab-"+i).addClass("tab-pane active").append($("<div>").addClass("panel-body").attr("id","group"+i)
                                    ));
                            }else {
                                $('#className').append($("<li>").addClass("group"+i+"").append($("<a>").attr("data-toggle","tab").attr("href",ss).text("第"+i+"组"))
                                    .append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss deleteGroup").text("删除该组")));
                                $('.tab-content').append($("<div>").attr("id","tab-"+i).addClass("tab-pane").append($("<div>").addClass("panel-body").attr("id","group"+i)));
                            }
                        }
                    }
                    $(this).attr("text",(parseInt(num)+parseInt(num2)));*/
                });
            });
        }

        $("body").on("click",".deleteGroup",function () {
            var gid = $(this).parent().parent().attr("id");
            layer.confirm('您确认要删除吗？', {
                btn: ['是滴','再想想'] //按钮
            }, function(){
                $.get("/office/deleteGroup",{gid},function () {
                    $("."+gid+"").remove();
                    layer.msg('删除成功', {icon: 1});
                });
            }, function(){
                layer.msg('也可以这样', {
                    time: 1000
                });
            });
        });

        $(getGroup());

        $.get("/user/getUsersByGroup",{s},function (msg) {
            var users = msg['users'];
            $.each(users,function (i,each) {
                var groupId = each['groupId'];
                $("ul>li").each(function (index) {
                    if ($(this).hasClass(groupId)){
                        $("#"+groupId+"").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" id="'+each['id']+'" type="button" name="">'+each['name']+'</button>')
                    }
                });
            });
        });
    });
</script>
</body>
</html>
