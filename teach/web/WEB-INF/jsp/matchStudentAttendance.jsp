<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/9
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>匹配学生考勤规则</title>

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
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <!-- End Panel Basic -->
    <!-- Panel Style -->
    <!-- End Panel Style -->
    <!-- Panel Sort & Hideheader -->
    <!-- End Panel Sort & Hideheader -->
    <!-- Panel Columns & Select -->
    <!-- End Panel Columns & Select -->
    <!-- Panel Other -->
    <div class="col-sm-12">
        <!-- Example Events -->
        <div class="example-wrap">
            <h4 class="example-title">事件</h4>
            <div class="example">
                <%--<div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                    <button type="button" class="btn btn-outline btn-default">
                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-outline btn-default">
                        <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-outline btn-default">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                    </button>
                </div>--%>
                <table id="exampleTableEvents" data-height="400" data-mobile-responsive="true">
                    <thead>
                    <tr>
                        <th data-field="state" data-checkbox="true"></th>
                        <th data-field="id">学号</th>
                        <th data-field="word">班级</th>
                        <th data-field="name">姓名</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr><tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>1</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>2</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>2</td>
                        <td>Java</td>
                        <td>小明</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>2</td>
                        <td>Java</td>
                        <td>小刚</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>3</td>
                        <td>Java</td>
                        <td>小刚</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-11"></div>
            <div class="col-sm-1">
                <button class="btn btn-primary submitMsg">提交</button>
            </div>
        </div>

        <!-- End Example Events -->
    </div>
</div>
    <!-- End Panel Other -->
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
<script type="text/javascript">
    $(".submitMsg").on("click",function () {
        layer.open({
            type: 2,
            title: '考勤规则',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '50%'],
            content: 'matchClassAttendance.jsp',
            btn:['确认绑定','算了'],
            btn1:function (index,layero) {
                layer.msg('绑定成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });
</script>
</body>
</html>
