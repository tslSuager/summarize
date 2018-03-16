<%--
  Created by IntelliJ IDEA.
  User: 15842
  Date: 2018/3/7
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:01 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 数据表格</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <%--<link href="/static/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">--%>
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/high_layer/layui.css" rel="stylesheet">
    <link href="/static/high_layer/layer.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont_modify.css" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>学生成绩
                        <small>管理</small>
                    </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="table_data_tables.html#">选项1</a>
                            </li>
                            <li><a href="table_data_tables.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">

                    <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
                        <button type="button" id="btn-add" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                        </button>
                        <button type="button" id="btn-update" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                        </button>
                        <button type="button" id="btn-del" class="btn btn-outline btn-default">
                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                        </button>
                        <i class="iconfont icon-xiazai" style="font-size: 30px;margin-left: 10px;"></i>
                        <span class="icon-name" title="下载" p-id="1019"><span p-id="1020">下载模板</span></span>
                    </div>
                    <table id="exampleTableToolbar" data-mobile-responsive="true">
                        <thead>
                        <tr>
                            <th>用户ID</th>
                            <th>姓名</th>
                            <th>班级</th>
                            <th>成绩1</th>
                            <th>成绩2</th>
                            <th>成绩3</th>
                            <th>成绩4</th>
                            <th>操作</th>

                        </tr>
                        <tbody id="table_data">
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>HRQ</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>WYF</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>HRQ</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>WYF</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>HRQ</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>WYF</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>HRQ</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>WYF</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>HRQ</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        <tr class="gradeA odd">
                            <td>141010110253</td>
                            <td>WYF</td>
                            <td>Java1001</td>
                            <td>56</td>
                            <td>68</td>
                            <td>56</td>
                            <td>68</td>
                            <td><a><i class="iconfont icon-xiugai" style="font-size: 20px"></i> </a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script>

    function modify() {
        var $tbodyData = $("#table_data:eq(0) > tr");
//        console.info($tbodyData);
        //每一行
        var isdblclick = true;
        for (var i = 0; i < $tbodyData.length; i++) {
            (function (i) {
                var tds = $($tbodyData[i]).find("td");
                //每一个单元格
                for (var j = 3; j < tds.length - 1; j++) {
                    (function (jj) {
                        $(tds[jj]).dblclick(function () {
                            if (isdblclick) {
                                isdblclick = false;
                                var td = $(this);
                                var v = td.html();
                                var $input = $("<input>");
                                td.html($input.attr("class", "form-control input-sm").css("width", "150px").val(v));
                                $input.focus().blur(function () {
//                                console.info("失去");
                                    var v = $(this).val();
                                    td.html(v);
                                    isdblclick = true;
                                });
                            }
                        });
                    })(j);
                }
                //修改按钮的单机事件
                $(tds[tds.length - 1]).click(function () {
                    layer.msg($(tds[1]).html() + "的成绩修改成功", {time: 800});
                })
            })(i);

        }
    }

    //添加数据
    function fnClickAddRow() {
        $("#editable").dataTable().fnAddData(["Custom row", "New row", "New row", "New row", "New row"])
    };
    $(function () {
        modify();
        $("#exampleToolbar").append($("<select>").attr("class", "form-control m-b col-md-2").css("width", "150px").css("margin-left", "10px").attr("id", "sel").attr("name", "account").append($("<option>").attr("selected", "").html("Java1001班")).append($("<option>").attr("selected", "").html("Java1002班"))).find("input:eq(0)").hide();
        $("#sel").change(function () {
            layer.msg($(this).val(), {time: 800});
        })
    })
</script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<%--<script src="/static/js/demo/layer-demo.min.js"></script>--%>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
<script src="/static/high_layer/layer.js"></script>
<script>
    $(".btn-group:eq(1)").append($("<button>").attr("class", "btn btn-outline btn-default").html("批量修改").css("margin-left", "10px"));
</script>
