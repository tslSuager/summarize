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

</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>作业 3</h5>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="tabs_panels.html#collapseOne">待点评名单</a>
                                    </h5>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <table  data-toggle="table"
                                                data-url="js/demo/bootstrap_table_test.json"
                                                data-query-params="queryParams" data-mobile-responsive="true"
                                                data-height="400" data-pagination="true" data-icon-size="outline"
                                                data-search="true">
                                            <thead>
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="name">姓名</th>
                                                <th data-field="time">提交时间</th>
                                                <th data-field="grade">作业评分</th>
                                                <th data-field="down">作业下载</th>
                                                <th data-field="dp">作业点评</th>

                                            </tr>
                                            </thead>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a data-toggle="modal" href="zuoye_list.jsp#modal-form">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center"></td>
                                                <td class="center"><a>下载</a></td>
                                                <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="tabs_panels.html#collapseTwo">已点评名单</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <table  data-toggle="table"
                                                data-url="js/demo/bootstrap_table_test.json"
                                                data-query-params="queryParams" data-mobile-responsive="true"
                                                data-height="400" data-pagination="true" data-icon-size="outline"
                                                data-search="true">
                                            <thead>
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="name">姓名</th>
                                                <th data-field="time">提交时间</th>
                                                <th data-field="grade">点评时间</th>
                                                <th data-field="dp">作业评分</th>
                                            </tr>
                                            </thead>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">A</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0
                                                </td>
                                                <td class="center">4</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeC">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0
                                                </td>
                                                <td class="center">5</td>
                                                <td class="center">B</td>
                                            </tr>
                                            <tr class="gradeA">
                                                <td data-field="state" data-checkbox="true"></td>
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5
                                                </td>
                                                <td class="center">5.5</td>
                                                <td class="center">B</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="tabs_panels.html#collapseThree">未交作业名单</a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <table  data-toggle="table"
                                                data-url="js/demo/bootstrap_table_test.json"
                                                data-query-params="queryParams" data-mobile-responsive="true"
                                                data-height="400" data-pagination="true" data-icon-size="outline"
                                                data-search="true">
                                            <thead>
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="name">姓名</th>
                                                <th data-field="time">提交时间</th>
                                                <th data-field="zhuantai">状态</th>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                </div>
<%--                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="tabs-container" style="width: 1250px">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">待点评名单</a>
                                    </li>
                                    <li ><a data-toggle="tab" href="#tab-2" aria-expanded="false">已点评名单</a>
                                    </li>
                                    <li ><a data-toggle="tab" href="#tab-3" aria-expanded="false">未交作业名单</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div id="tab-1" class="tab-pane active">
                                        <div class="panel-body">
                                            <div class="example">
                                            <table  data-toggle="table"
                                                   data-url="js/demo/bootstrap_table_test.json"
                                                   data-query-params="queryParams" data-mobile-responsive="true"
                                                   data-height="400" data-pagination="true" data-icon-size="outline"
                                                   data-search="true">
                                                <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="name">姓名</th>
                                                    <th data-field="time">提交时间</th>
                                                    <th data-field="grade">作业评分</th>
                                                    <th data-field="dp">作业点评</th>
                                                </tr>
                                                </thead>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    </div>
                                    <div id="tab-2" class="tab-pane ">
                                        <div class="panel-body">
                                            <div class="example" >
                                            <table  data-toggle="table"
                                                    data-url="js/demo/bootstrap_table_test.json"
                                                    data-query-params="queryParams" data-mobile-responsive="true"
                                                    data-height="400" data-pagination="true" data-icon-size="outline"
                                                    data-search="true">
                                                <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="name">姓名</th>
                                                    <th data-field="time">提交时间</th>
                                                    <th data-field="grade">作业评分</th>
                                                    <th data-field="dp">作业点评</th>
                                                </tr>
                                                </thead>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评111</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    </div>
                                    <div id="tab-3" class="tab-pane ">
                                        <div class="panel-body">
                                            <div class="example" >
                                            <table  data-toggle="table"
                                                    data-url="js/demo/bootstrap_table_test.json"
                                                    data-query-params="queryParams" data-mobile-responsive="true"
                                                    data-height="400" data-pagination="true" data-icon-size="outline"
                                                    data-search="true">
                                                <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="name">姓名</th>
                                                    <th data-field="time">提交时间</th>
                                                    <th data-field="grade">作业评分</th>
                                                    <th data-field="dp">作业点评</th>
                                                </tr>
                                                </thead>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeX">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0
                                                    </td>
                                                    <td class="center">4</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeC">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.0
                                                    </td>
                                                    <td class="center">5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                                <tr class="gradeA">
                                                    <td data-field="state" data-checkbox="true"></td>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 5.5
                                                    </td>
                                                    <td class="center">5.5</td>
                                                    <td class="center"><a href="zuoye_pg.jsp">立即点评</a></td>
                                                </tr>
                                            </table>
                                            &lt;%&ndash;<table  data-toggle="table"&ndash;%&gt;
                                                   &lt;%&ndash;data-url="/static/js/demo/bootstrap_table_test.json"&ndash;%&gt;
                                                   &lt;%&ndash;data-query-params="queryParams" data-mobile-responsive="true"&ndash;%&gt;
                                                   &lt;%&ndash;data-height="400" data-pagination="true" data-icon-size="outline"&ndash;%&gt;
                                                   &lt;%&ndash;data-search="true">&ndash;%&gt;
                                                &lt;%&ndash;<thead>&ndash;%&gt;
                                                &lt;%&ndash;<tr>&ndash;%&gt;
                                                    &lt;%&ndash;<th data-field="state" data-checkbox="true"></th>&ndash;%&gt;
                                                    &lt;%&ndash;<th data-field="name">姓名</th>&ndash;%&gt;
                                                    &lt;%&ndash;<th data-field="time">提交时间</th>&ndash;%&gt;
                                                    &lt;%&ndash;<th data-field="zhuantai">状态</th>&ndash;%&gt;
                                                &lt;%&ndash;</tr>&ndash;%&gt;
                                                &lt;%&ndash;</thead>&ndash;%&gt;
                                            &lt;%&ndash;</table>&ndash;%&gt;
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
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
                                <div class="col-sm-offset-3 col-sm-8" >
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
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>
</body>

</html>