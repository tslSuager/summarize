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
    <%--<div class="modal-content animated bounceInRight">--%>
        <div class="modal-header">
            <%--<button type="button" class="close_this close" data-dismiss="modal"><span
                    aria-hidden="true">×</span><span class="sr-only">关闭</span>
            </button>--%>
             <%--<i class="fa fa-laptop modal-icon"></i>--%>
            <h2 class="modal-title" style="text-align: center">新建计划</h2>
        </div>
        <form style="margin-left: 80px;margin-top: 50px">
            <small class="font-bold">
                <div>
                    <div style="margin-top: 5px">
                        <label class="col-sm-3 text-center control-label"
                               style="margin-top: 5px;margin-bottom: 5px;margin-left: 20px">班级 :</label>
                        <select class="form-control m-b" style="width: 320px" name="account">
                            <option>JAVA一班</option>
                            <option>JAVA二班</option>
                            <option>android一班</option>
                            <option>android二班</option>
                        </select>
                    </div>
                </div>
                <div>
                    <div style="margin-top: 5px">
                        <label class="col-sm-3 text-center control-label" style="margin-top: 8px;margin-left: 10px">计划名
                            :</label>
                        <input type="text" class="form-control" style="width: 320px">
                    </div>
                </div>

                <%--<div>
                    <div style="margin-top: 5px">
                        <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                        <div class="input-group date">
                            <input type="text" class="input-sm form-control" name="start" value="2017-11-11" style="width: 320px"/>
                        </div>
                    </div>
                </div>

                <div>
                    <div style="margin-top: 5px;margin-bottom: 5px">
                        <label class="col-sm-3 text-center control-label" style="margin-top: 5px">结束时间 :</label>
                        <input type="text" class="input-sm form-control" name="end" value="2017-11-17" style="width: 320px"/>
                    </div>
                </div>--%>
                <div class="form-group" id="data_5" style="margin: 10px auto;width: 600px;">
                    <div class="input-daterange input-group" id="datepicker">
                        <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                        <input type="text" class="input-sm form-control" name="start" value="2017-11-11"
                               style="width: 320px"/>
                        <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间 :</label>
                        <input type="text" class="input-sm form-control" name="end" value="2017-11-17"
                               style="width: 320px;margin-top: 10px"/>
                    </div>

                </div>


                <div>
                    <div style="margin-top: 5px">
                        <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                        <input class="form-control layer-date " style="width: 320px">
                    </div>
                </div>

            </small>
        </form>
        <%-- <div class="modal-footer">
             <button type="button" class="btn btn-white close_this" data-dismiss="modal">关闭</button>
             <button type="button" class="btn btn-primary">保存</button>
         </div>--%>
    <%--</div>--%>
</div>
<small class="font-bold">
</small>
</body>
</html>

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
<script src="/static/js/plugins/summernote/summernote.min.js"></script>
<script src="/static/js/plugins/summernote/summernote-zh-CN.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

<script>

</script>
