<%--
  Created by IntelliJ IDEA.
  User: 1234
  Date: 2018/3/20
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加班级</title>
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

<div class="modal-dialog">
    <div class="modal-header">
        <h2 class="modal-title" style="text-align: center">添加子任务</h2>
    </div>
    <form>
        <small class="font-bold">
            <div style="margin-top: 30px">
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">选择文件 :</label>
                    <input type="file" name="file" class="form-control" style="width: 320px"
                           id="choosefile">
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M)
                        :</label>
                    <input type="text" name="filesize" class="form-control" style="width: 320px"
                           id="filesize">
                </div>
            </div>
            <div style="margin-top: 30px">
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可提前提交
                        :</label>
                    <label>
                    <input type="radio" value="1" id="updateoptionsRadios11"
                           name="optionsRadios">是</label>

                    <label>
                        <input type="radio" value="0" id="updateoptionsRadios22"
                               name="optionsRadios">否</label>
                </div>
            </div>
            <div style="margin-top: 30px">
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可过时提交
                        :</label>
                    <label>
                        <input type="radio" value="1" id="optionsRadios33"
                               name="optionsRadios1">是</label>

                    <label>
                        <input type="radio" value="0" id="optionsRadios44"
                               name="optionsRadios1">否</label>
                </div>
            </div>
            <div style="margin-top: 30px">
                <div style="margin-top: 5px">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                    <input class="form-control layer-date" style="width: 320px" id="renwudetailremarks">
                </div>
            </div>

        </small>
    </form>
</div>
</body>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/jquery.min.js"></script>
<script id="welcome-template" type="text/x-handlebars-template"/>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/pullListTree.js"></script>


<script>
    var url = location.search;
    var s = url.slice(9);
    console.info(s);
    $(function () {

    });
</script>
</html>



