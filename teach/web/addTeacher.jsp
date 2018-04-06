<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/14
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加教师</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>
<div class="row">
    <div class="col-sm-5 border" >
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" id="teachers">
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script id="welcome-template" type="text/x-handlebars-template"></script>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/content.min.js"></script>
<script src="/static/js/welcome.min.js"></script>
<script type="text/javascript">
    //选择老师点击事件
    $("body").on("click",".chooseTeacher",function () {
        if ($(this).hasClass("btn-info")){
            $(this).removeClass("btn-info").addClass("btn-warning");
        }else if($(this).hasClass("btn-warning")){
            $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id");
        }
    });

    //获取从父页面传来的班级id
    var url = location.search;
    var s = url.slice(5);

    //获取未管理该班的老师
    $.get("/user/getAllTeacherNoThisClass",{s},function (msg) {
        var teachers = msg['teachers'];
        $.each(teachers,function (i,each) {
            $("#teachers").append('<button class="btn btn-outline btn-info chooseTeacher btn-xs buttonCss" id="'+each['id']+'" type="button" name="" style="margin-right: 10px">'+each['name']+'</button>')
        });
    });
</script>
</body>
</html>
