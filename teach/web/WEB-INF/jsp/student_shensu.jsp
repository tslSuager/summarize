<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>作业详情</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/high_layer/layui.css" rel="stylesheet">
    <link href="/static/high_layer/layer.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/css/icon/iconfont_line.css">
    <style>
        table {
            margin: 0 auto;
        }
    </style>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>学生成绩列表</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="tabs_panels.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="tabs_panels.html#">选项1</a>
                            </li>
                            <li><a href="tabs_panels.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>

                <div class="ibox-content">
                    <div class="row">

                            <table class="table table-hover" style="width: 1000px;">
                                <tr class=" text-center">
                                    <td >平时成绩</td>
                                    <td><i class=" iconfont icon-vertical_line"></i></td>
                                    <td>85</td>
                                </tr>
                                <tr class="feed-element text-center">
                                    <td>第一次模拟成绩</td>
                                    <td><i class=" iconfont icon-vertical_line"></i></td>
                                    <td>85</td>
                                </tr>
                                <tr class="feed-element text-center">
                                    <td >第二次成绩</td>
                                    <td><i class=" iconfont icon-vertical_line"></i></td>
                                    <td>85</td>
                                </tr><tr class="feed-element text-center">
                                <td >第二次成绩</td>
                                <td><i class=" iconfont icon-vertical_line"></i></td>
                                <td>85</td>
                            </tr><tr class="feed-element text-center">
                                <td >第二次成绩</td>
                                <td><i class=" iconfont icon-vertical_line"></i></td>
                                <td>85</td>
                            </tr><tr class="feed-element text-center">
                                <td >第二次成绩</td>
                                <td><i class=" iconfont icon-vertical_line"></i></td>
                                <td>85</td>
                            </tr><tr class="feed-element text-center">
                                <td >第二次成绩</td>
                                <td><i class=" iconfont icon-vertical_line"></i></td>
                                <td>85</td>
                            </tr>
                                <tr class="feed-element text-center">
                                    <td class="" colspan="3">
                                        <button id="submit" type="button" class="btn btn-w-m btn-warning">提交申诉</button>
                                        <button type="button" class="btn btn-w-m btn-default" disabled="disabled">申诉正在受理中</button>
                                        <button type="button" class="btn btn-w-m btn-primary" disabled="disabled">申诉成功</button>
                                        <button type="button" class="btn btn-w-m btn-danger"disabled="disabled">申诉失败</button>
                                    </td>

                                </tr>
                            </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="modal-form" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-10">
                        <form class="form-horizontal">
                            <p>请进行评分(⊙o⊙)</p>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">等级：</label>

                                <div class="col-sm-8">
                                    <div class="radio i-checks">
                                        <label class="radio-inline">
                                            <input type="radio" value="option1" name="a"> <i></i> A</label>
                                    </div>
                                    <div class="radio i-checks">
                                        <label class="radio-inline">
                                            <input type="radio" value="option1" name="a"> <i></i> B</label>
                                    </div>
                                    <div class="radio i-checks">
                                        <label class="radio-inline">
                                            <input type="radio" value="option1" name="a"> <i></i> C</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="text-align: center">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button class="btn btn-sm btn-white" type="submit">评分</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>

<script src="/static/js/plugins/jeditable/jquery.jeditable.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/high_layer/layer.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",});
    });
</script>
</body>

</html>
<script>
    $(function () {
        $("#submit").click(function () {
            layer.prompt(function(val, index){
                layer.msg(val+'申诉成功',{time:800});
                layer.close(index);
            });
            $(".layui-layer-title:eq(0)").html("请选择你要申诉的成绩");
            //设置下拉列表
            $(".layui-layer-content:eq(0)").append($("<select>").attr("class","form-control m-b").attr("id","sel").attr("name","account").append($("<option>").attr("selected","").html("成绩一") ).append($("<option>").attr("selected","").html("成绩2") )   ).find("input:eq(0)").hide();
            $(".layui-layer-content:eq(0)").find("input:eq(0)").val( $("#sel").val());
            $("#sel").change(function () {
                $(".layui-layer-content:eq(0)").find("input:eq(0)").val($(this).val());
            })
        })
    })
</script>