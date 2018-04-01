<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/10
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教学计划</title>

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
</head>
<body>
<div class="row">
    <div class="form-group draggable">
        <div class="col-sm-9" id="teaching">

            <select class="form-control" name="">
                <%--<option>教学计划 1</option>
                <option>教学计划 2</option>
                <option>教学计划 3</option>
                <option>教学计划 4</option>--%>
            </select>
        </div>
    </div>
</div>

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/jquery.min.js"></script>
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
</body>
</html>

<script type="text/javascript">

    //获取从父页面传来的班级id
    var url = location.search;
    var s = url.slice(5);

    $.get("/teaching/getAllTeaching",{s},function (msg) {
        var message = msg['message'];
        var allTeaching =msg['allTeaching'];
        if (message=='error'){
            alert("该班级已匹配教学计划");
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        }else if (allTeaching!=null){
            $.each(allTeaching,function (i,each) {
                $("#teaching").find("select").append('<option id="'+each['id']+'">'+each['planname']+'</option>');
            });
        }
    })
</script>
