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
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>学生申诉处理</h5>
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
                        <div class="col-sm-10">
                            <div class="panel-body">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion"
                                                   href="tabs_panels.html#collapseOne">待处理的申诉列表</a>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <table class="text-center" data-toggle="table"
                                                       data-url="js/demo/bootstrap_table_test.json"
                                                       data-query-params="queryParams" data-mobile-responsive="true"
                                                       data-height="400" data-pagination="true" data-icon-size="outline"
                                                       data-search="true">
                                                    <thead >
                                                    <tr>
                                                        <th class="text-center"  data-field="state" data-checkbox="true"></th>
                                                        <th class="text-center" data-field="name">姓名</th>
                                                        <th class="text-center" data-field="time">申诉时间</th>
                                                        <th class="text-center" data-field="down">作业下载</th>
                                                        <th class="text-center" data-field="dp">申诉操作</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody id="tb_data">
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    <tr class="gradeX">
                                                        <td data-field="state" data-checkbox="true"></td>
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td class="center"><a href="#"><i class="iconfont icon-xiazai" style="font-size: 22px;margin-left: 10px;"></i></a></td>
                                                        <td class="center ">
                                                            <button class="btn btn-info btn-circle"
                                                                    data-toggle="tooltip" data-placement="top" title=""
                                                                    data-original-title="这里是提示内容" type="button"><i
                                                                    class="fa fa-check"></i> &nbsp;&nbsp; &nbsp;&nbsp;
                                                                &nbsp;&nbsp;
                                                            </button>
                                                            <button class="btn btn-warning btn-circle" type="button"><i
                                                                    class="fa fa-times"></i></button>
                                                        </td>
                                                        <%-- <td hidden>
                                                        &lt;%&ndash; <div class="tooltip-demo">
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="" data-original-title="这里是提示内容">左侧提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="这里是提示内容">顶部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="这里是提示内容">底部提示</button>
                                                             <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="" data-original-title="这里是提示内容">右侧提示</button>
                                                         </div>&ndash;%&gt;
                                                         </td>--%>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
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
        var tr = $("#tb_data").find("tr");
        for (var i=0;i<tr.length;i++){
            var tds = $(tr[i]).find("td");
            $(tds[tds.length-1]).find("button").eq(0).click(function () {
                layer.prompt(function(val, index){
                    layer.msg('得到了'+val);
                    layer.close(index);
                });
                $(".layui-layer-title:eq(0)").html("请输入修改后的成绩 ");
            });
            $(tds[tds.length-1]).find("button").eq(1).click(function () {
                layer.msg('申诉处理成功', {time:800});
            })
        }

    })
</script>