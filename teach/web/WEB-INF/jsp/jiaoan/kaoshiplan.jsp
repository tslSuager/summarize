<%--
  Created by IntelliJ IDEA.
  User: 111
  Date: 2018-03-07
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 富文本编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
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
    <title>Title</title>
</head>
<body>

<div class="form-group" id="data_5" style="margin: auto;width: 600px;margin-top: 50px">
    <label class="font-noraml">范围选择</label>
    <div class="input-daterange input-group" id="datepicker">
        <input type="text" class="input-sm form-control" name="start" value="2017-11-11" />
        <span class="input-group-addon">到</span>
        <input type="text" class="input-sm form-control" name="end" value="2017-11-17" />
    </div>
</div>

<div class="wrapper wrapper-content" style="margin-left: 200px;margin-right: 200px;margin-top: 50px">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>编辑/保存考试内容</h5>
                    <button id="edit" class="btn btn-primary btn-xs m-l-sm" onclick="edit()" type="button">编辑</button>
                    <button id="save" class="btn btn-primary  btn-xs" onclick="save()" type="button">保存</button>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="form_editors.html#">选项1</a>
                            </li>
                            <li><a href="form_editors.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content" id="eg">

                    <div class="click2edit wrapper">
                        <h3>此为题目</h3>
                        <p>我是内容，，，，</p>
                        <p>我是内容，，，，</p>
                        <p>我是内容，，，，</p>
                        <p>我是内容，，，，</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="mail-body text-right tooltip-demo" style="margin-left: 100px;margin-top: 50px;margin-right: 100px">
    <button class="btn btn-success btn-sm demo2">上传</button>
    <button class="btn btn-warning btn-sm demo3">放弃</button>
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
<script src="/static/js/plugins/summernote/summernote.min.js"></script>
<script src="/static/js/plugins/summernote/summernote-zh-CN.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    $(document).ready(function(){$(".summernote").summernote({lang:"zh-CN"})});var edit=function(){$("#eg").addClass("no-padding");$(".click2edit").summernote({lang:"zh-CN",focus:true})};var save=function(){$("#eg").removeClass("no-padding");var aHTML=$(".click2edit").code();$(".click2edit").destroy()};
</script>
<script>
$(document).ready(function () {
$(".demo2").click(function(){swal({title:"太帅了",text:"小手一抖就打开了一个框",type:"success"})});
$(".demo3").click(function(){swal({title:"您确定要删除这条信息吗",text:"删除后将无法恢复，请谨慎操作！",type:"warning",showCancelButton:true,confirmButtonColor:"#DD6B55",confirmButtonText:"删除",closeOnConfirm:false},
function(){swal("删除成功！","您已经永久删除了这条信息。","success")})})
});
</script>
</body>
</html>
