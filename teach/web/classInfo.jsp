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


    <title>添加班级</title>

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
    <div class="col-sm-3 border" >
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <h4>班级学生列表</h4>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content" id="left">
                            </div>
                            <div>
                                <div class="col-sm-8"></div>
                                <button class="btn btn-outline btn-warning btn-xs buttonCss" type="button" name="">扣他分</button>
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
    <div class="col-sm-7 border">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <h4>总学生列表</h4>
                <div class="form-group col-sm-4">
                    <div class="form-group" id="data_5">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" name="start" value="2018-3-1" id="startDate"/>
                            <span class="input-group-addon">到</span>
                            <input type="text" class="input-sm form-control" name="end" value="2018-3-29" id="endDate"/>
                        </div>
                    </div>
                </div>
                <div class="form-group draggable col-sm-7">
                    <div id="pullListTree" style="margin-left: 20px"></div>
                </div>
                <div class="input-group col-sm-1">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary" id="select">搜索</button>
                    </span>
                </div>
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
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/content.min.js"></script>
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
<script src="/static/js/welcome.min.js"></script>
<script src="/static/js/pullListTree.js"></script>

<script type="text/javascript">
        initPullListTree("/office/getAllArea",1, 2,function () {

        });//一个参数 开始的级别  第二参数 有几个下拉框

        $("body").on("click",".chooseStu",function () {
            if ($(this).hasClass("btn-info")){
                $(this).removeClass("btn-info").addClass("btn-warning");
            }else if($(this).hasClass("btn-warning")){
                $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id");
            }
        });
        $("#addStu").click(function () {
            $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
            $("#right").find(".btn-warning").clone().appendTo("#left");
            $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-success");
            $("#right").find(".btn-warning").remove();
        });
        $("#deleteStu").click(function () {
            $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
            $("#left").find(".btn-warning").clone().appendTo("#right");
            $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-success");
            $("#left").find(".btn-warning").remove();
        });

        $("#select").click(function () {
            var startDate = $("#startDate").val();
            var endDate = $("#endDate").val();
            var pId = $("#pullListTree").data("selectAreaId");
            $.get("/user/getUserByDateAreaNoClass",{startDate,endDate,pId},function (msg) {
                console.info(msg['message']);
                var user = msg['users'];
                if (msg['message']== 'error'){
                    layer.confirm('必须选择区域否则无法查询数据', {
                        btn: ['好的'] //按钮
                    });
                }else {
                    $("#right").find("button").remove();
                    $.each(user,function (i,each) {
                        $("#right").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="'+each['id']+'">'+each['name']+'</button>');
                    });
                }
            });
        });

        var startDate = $("#startDate").val();
        var endDate = $("#endDate").val();

        var url = location.search;
        var s = url.slice(5);
        console.info(s);

        var pId = $("#pullListTree").data("selectAreaId");
        $.get("/user/getUserByDateAreaNoClass",{startDate,endDate,s},function (msg) {
            var users = msg['users'];
            $.each(users,function (i,each) {
                $("#right").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="'+each['id']+'">'+each['name']+'</button>');
            });
        });
        $.get("/user/getUserByClassId",{s},function (msg) {
            var users = msg['users'];
            $.each(users,function (i,each) {
                $("#left").append('<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="'+each['id']+'">'+each['name']+'</button>');
            })
        });
</script>
</body>
</html>
