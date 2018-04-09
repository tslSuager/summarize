<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/9
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>班级匹配考勤规则</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="/static/css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="/static/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="/static/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
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
                <h4>考勤规则表</h4>
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

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/static/js/plugins/jsKnob/jquery.knob.js"></script>
<script src="/static/js/plugins/jasny/jasny-bootstrap.min.js"></script>
<script src="/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="/static/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
<script src="/static/js/plugins/nouslider/jquery.nouislider.min.js"></script>
<script src="/static/js/plugins/switchery/switchery.js"></script>
<script src="/static/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/static/js/plugins/cropper/cropper.min.js"></script>
<script src="/static/js/demo/form-advanced-demo.min.js"></script>

<script type="text/javascript">
    $("body").on("click",(".chooseStu"),function () {
        if ($(this).hasClass("btn-info")){
            $(this).removeClass("btn-info").addClass("btn-warning");
        }else if($(this).hasClass("btn-warning")){
            $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id");
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

    //获得该班未分配考勤规则的学生
    $.get("/user/getUserNoRuleByClass",{s},function (msg) {
        var users = msg['users'];
        $.each(users,function (i,each) {
            $("#right").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="'+each['id']+'">'+each['name']+'</button>');
        })
    });

    //获得所有有效地考勤规则
    $.get("/checking/getAllRule",{},function (msg) {
        var rules= msg['Rules'];
        $.each(rules,function (i,each) {
            var tt="#tab-"+(i+1);
            $('#className').append($("<li>").addClass("group"+(i+1)+"").addClass(""+each['id']+"").append($("<a>").attr("data-toggle","tab").attr("href",tt).text("规则"+(parseInt(i)+parseInt(1))+"")));
            $('.tab-content').append($("<div>").attr("id","tab-"+(i+1)).addClass("tab-pane").addClass(""+each['id']+"").append($("<div>").addClass("panel-body").attr("id",each['id'])
                .append($("<div>").append($("<button>").addClass("btn btn-outline btn-danger btn-xs buttonCss toRuleDetail").text("查看规则详情")))));
        });
    });

    //获得所有分配了考勤规则的学生
    $.get("/user/gerUserWithRuleByClass",{s},function (msg) {
        var users = msg['users'];
        $.each(users,function (i,each) {
            var kaoqinId = each['kaoqinRuleid'];
            $("#"+kaoqinId+"").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" id="'+each['id']+'" type="button" name="">'+each['name']+'</button>')
            /*$("ul>li").each(function (index) {
                if ($(this).hasClass(kaoqinId)){
                    $("#"+kaoqinId+"").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" id="'+each['id']+'" type="button" name="">'+each['name']+'</button>')
                }
            });*/
        });
    })



</script>

</body>
</html>
