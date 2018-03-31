<%--
  Created by IntelliJ IDEA.
  User: ddd
  Date: 2018/3/11
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="shortcut icon" href="favicon.ico">
<link href="/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
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
<link href="/static/css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="/static/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
<body>

<div class="modal-dialog">
    <div class="modal-header">
        <h2 class="modal-title" style="text-align: center">新建计划</h2>
    </div>
    <form style="margin-left: 80px;margin-top: 50px" action="/teaching/insertTeaching" method="post" id="form1">
        <small class="font-bold">
            <%--id="pullListTree" style="display: inline;margin-left: 30px;width: 320px"--%>
            <div style="margin-top: 5px;margin-left: 45px;width: 1400px" id="pullListTree" class="">

            </div>

            <%--计划名--%>
            <div>
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 8px;margin-left: 10px">计划名
                        :</label>
                    <input type="text" name="planName" class="form-control" style="width: 320px" id="planName">
                </div>
            </div>

            <%--开始结束时间--%>
            <div class="form-group" id="data_5" style="margin: 10px auto;width: 600px;">
                <div class="input-daterange input-group" id="datepicker">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                    <input type="text" class="input-sm form-control" name="start" value="2017-11-11"
                           style="width: 320px" id="start"/>
                    <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间 :</label>
                    <input type="text" class="input-sm form-control" name="end"  value="2017-11-17"
                           style="width: 320px;margin-top: 10px" id="end"/>
                </div>
            </div>

            <%--备注说明--%>
            <div>
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                    <textarea class="form-control layer-date" name="remarks" style="width: 320px" rows="5" id="remarks"></textarea>
                </div>
            </div>

        </small>
    </form>

</div>
<small class="font-bold">
</small>
</body>
</html>

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/jquery.min.js"></script>
<script id="welcome-template" type="text/x-handlebars-template"/>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/pullListTree.js"></script>
<script src="/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/static/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/cropper/cropper.min.js"></script>
<script src="/static/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>


<script>
    $(function () {
        initPullListTree("/office/getAllOffice?userId=u013",3, 1,function (oneself) {
//            console.info(oneself);
        });//一个参数 开始的级别  第二参数 有几个下拉框
//        $("#pullListTree").data("selectAreaId")
        $("#dddd").click(function () {
            alert($("#pullListTree").data("selectArea"));
        });


    });

</script>

<script src="/static/js/demo/form-advanced-demo.min.js"></script>
