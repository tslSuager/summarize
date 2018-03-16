<%--
  Created by IntelliJ IDEA.
  User: 111
  Date: 2018-03-08
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="common/head.jsp"/>
    <jsp:include page="common/foot.jsp"/>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-sm-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">

                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#">选项 01</a>
                        </li>
                        <li><a href="#">选项 02</a>
                        </li>
                    </ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">

                <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="8">
                    <thead>
                    <tr>

                        <th data-toggle="true">任务名</th>
                        <th>班级-小组</th>

                        <th data-hide="all">进度</th>
                        <th data-hide="all">起止时间</th>
                        <th data-hide="all">上传状态</th>
                        <th data-hide="all">负责人</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>需求分析</td>
                        <td>一班2组</td>

                        <td>80%</td>
                        <td>11.1--11.5</td>
                        <td>已上传</td>

                        <td>张三</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="6">
                            <ul class="pagination pull-right"></ul>
                        </td>
                    </tr>
                    </tfoot>
                </table>

            </div>
        </div>
    </div>
</div>
</body>
</html>
