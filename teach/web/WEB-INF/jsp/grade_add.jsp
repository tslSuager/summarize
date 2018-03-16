<%--
  Created by IntelliJ IDEA.
  User: 15842
  Date: 2018/3/7
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_validate.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 表单验证 jQuery Validation</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="/static/high_layer/layui.css" rel="stylesheet">
    <link href="/static/high_layer/layer.css" rel="stylesheet">
    <link href="/static/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="/static/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont.css" rel="stylesheet">
    <style>
        .form_bb {

        }

        .labelright {
            margin-right: 10px;
        }

        .labelleft {
            margin-left: 10px;
        }

        .spanleft {
            margin-left: 50px;
        }

        tr {
            height: 60px;
        }

    </style>
</head>

<body class="gray-bg">

<%--<button type="button" id="check-minutes">Check the minutes</button>--%>


<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">

        <div class="col-sm-pull-1">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>成绩录入</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="form_basic.html#">选项1</a>
                            </li>
                            <li><a href="form_basic.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form action="">
                        <div class="form-group">
                            <table style=" margin:0 auto;margin-right:500px;">
                                <tr>
                                    <td><label class="col-sm-2 control-label" style="margin-left: 400px">班级：</label>
                                    </td>
                                    <td>
                                        <div class="col-sm-4">
                                            <select name="sel" id="" class="form-control col-xs-2"
                                                    style="width: 370px;">
                                                <option value="0">Java1001</option>
                                                <option value="0">Java1002</option>
                                                <option value="0">Java1003</option>
                                                <option value="0">Java1004</option>
                                                <option value="0">Java1005</option>
                                                <option value="0">Java1006</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-3 control-label" style="margin-left: 400px">成绩方案：</label>
                                    </td>
                                    <td>
                                        <div class="radio i-checks" id="ruleradio">
                                            <label>
                                                <div class="iradio_square-green" style="position: relative;"><input
                                                        checked=""
                                                        value="option1"
                                                        name="a"
                                                        style="position: absolute; opacity: 0;"
                                                        type="radio">
                                                    <ins class="iCheck-helper"
                                                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                                </div>
                                                <i></i> 方案一
                                            </label>
                                            <label class="">
                                                <div class="iradio_square-green " style="position: relative;"><input
                                                        value="option2"
                                                        name="a"
                                                        style="position: absolute; opacity: 0;"
                                                        type="radio">
                                                    <ins class="iCheck-helper"
                                                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                                </div>
                                                <i></i> 方案二</label>
                                            <label>
                                                <div class="iradio_square-green" style="position: relative;"><input
                                                        value="option1" name="a" style="position: absolute; opacity: 0;"
                                                        type="radio">
                                                    <ins class="iCheck-helper"
                                                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                                </div>
                                                <i></i> 方案三</label>
                                            <label>
                                                <div class="iradio_square-green" style="position: relative;"><input
                                                        value="option1" name="a" style="position: absolute; opacity: 0;"
                                                        type="radio">
                                                    <ins class="iCheck-helper"
                                                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                                </div>
                                                <i></i> 方案四</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-3 control-label" style="margin-left: 400px">学生成绩文件</label></td>
                                    <td><a><i class="iconfont icon-xiazai" style="font-size: 30px;margin-left: 10px;"></i>
                                        <span class="icon-name" title="下载" p-id="1019"><span p-id="1020">下载成绩录入模板</span></span></a></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-3 control-label" style="margin-left: 400px">学生成绩文件</label></td>
                                    <td><div class="table-bordered" style=" width: 230px;margin-left:10px;"><input type="file" style="margin-top: 5px;margin-left: 5px;margin-bottom: 5px;"></div></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-center">
                                        <button type="submit" class="btn btn-primary " >提交
                                        </button>
                                    </td>
                                </tr>
                            </table>


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/dropzone/dropzone.js"></script>
<script>
    $(document).ready(function () {
        Dropzone.options.myAwesomeDropzone = {
            autoProcessQueue: false,
            uploadMultiple: true,
            parallelUploads: 100,
            maxFiles: 100,
            init: function () {
                var myDropzone = this;
                this.element.querySelector("button[type=submit]").addEventListener("click", function (e) {
                    e.preventDefault();
                    e.stopPropagation();
                    myDropzone.processQueue();
                    console.info("s");
                });
                this.on("sendingmultiple", function () {
                    console.info("s");
                });
                this.on("successmultiple", function (files, response) {
                    console.info("s");
                });
                this.on("errormultiple", function (files, response) {
                    console.info("s");
                })
            }
        }
    });
</script>
<script src="/static/js/plugins/layer/laydate/laydate.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script type="text/javascript">
    var $single = $(".single-input");
    for (var i = 0; i < $single.length; i++) {
        var input = $($single[i]).clockpicker({
            placement: 'bottom',
            align: 'left',
            autoclose: true,
            'default': 'now'
        });
    }


    // Manually toggle to the minutes view
    $('#check-minutes').click(function (e) {
        // Have to stop propagation here
        e.stopPropagation();
        input.clockpicker('show')
            .clockpicker('toggleView', 'minutes');
    });
</script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>

<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>
</html>
<script src="/static/high_layer/layer.js"></script>
