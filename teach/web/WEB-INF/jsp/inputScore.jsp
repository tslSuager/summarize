<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/11
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>录入成绩</title>

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
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
</head>
<body class="">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="form-group col-sm-4">
            <label class="control-label col-sm-2"><h4>模班名：</h4></label>
            <div class="col-sm-10">
                <input type="name" class="form-control">
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>
    <div class="col-sm-12">
        <div class="example-wrap">
            <div class="example">
                <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                    <button type="button" class="btn btn-outline btn-default" id="add">
                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-outline btn-default">
                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-outline btn-default">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                    </button>
                </div>
                <table id="exampleTableEvents" data-height="400" data-mobile-responsive="true">
                    <thead>
                    <tr>
                        <th data-field="state" data-checkbox="true"></th>
                        <th data-field="code">Code</th>
                        <th data-field="name">字段名</th>
                        <th data-field="lable">标签</th>
                        <th data-field="word">类型</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td>name</td>
                        <td>姓名</td>
                        <td>String</td>
                        <td>
                            <div class="form-group">
                                <div class="col-sm-5">
                                    <select class="form-control m-b" name="account">
                                        <option>类型 1</option>
                                        <option>类型 2</option>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>id</td>
                        <td>学号</td>
                        <td>Integer</td>
                        <td>
                            <div class="form-group">
                                <div class="col-sm-5">
                                    <select class="form-control m-b" name="account">
                                        <option>类型 1</option>
                                        <option>类型 2</option>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>sex</td>
                        <td>性别</td>
                        <td>String</td>
                        <td>
                            <div class="form-group">
                                <div class="col-sm-5">
                                    <select class="form-control m-b" name="account">
                                        <option>类型 1</option>
                                        <option>类型 2</option>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div  class="nav navbar-right col-sm-1">
            <button id="addClass" class="btn btn-info" type="button">
                <i class="fa fa-paste"></i>
                "提交"
            </button>
        </div>
    </div>
    </div>
</div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
</script>

</body>
</html>
