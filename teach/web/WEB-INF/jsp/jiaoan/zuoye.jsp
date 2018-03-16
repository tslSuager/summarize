<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2018/2/7
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>作业详情</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
<div class="row">
    <div class="col-sm-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>当前作业 </h5>
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
                    <div class="col-sm-6">
                        <div class="tabs-container" style="width: 1250px">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true"> 测试班级1</a>
                                </li>
                                <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">测试班级2</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active" >
                                    <div class="panel-body" >
                                        <p>作业1</p><br>
                                        <strong>时间:</strong>
                                        2018年3月7日至2018年3月8日
                                        <div style="float: right">
                                        <a class="btn btn-info " type="button" href="/page/jiaoan/zuoye_list"><i class="fa fa-pencil"></i>&nbsp;立即点评</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="panel-body" >
                                        <strong>时间:</strong>
                                        2018年3月7日至2018年3月8日
                                        <div style="float: right">
                                            <a class="btn btn-info " type="button" href="zuoye_list.jsp"><i class="fa fa-pencil"></i>&nbsp;立即点评</a>
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

<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>往期作业 </h5>
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
                        <div class="col-sm-6">
                            <div class="tabs-container" style="width: 1250px">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-3" aria-expanded="true"> 测试班级1</a>
                                    </li>
                                    <li class=""><a data-toggle="tab" href="#tab-4" aria-expanded="false">测试班级2</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div id="tab-3" class="tab-pane active" >
                                        <div class="panel-body" >
                                            <p>作业2</p><br>
                                            <strong>时间:</strong>
                                            2018年3月7日至2018年3月8日
                                            <div style="float: right">
                                                <a class="btn btn-info " type="button" href="zuoye_list.jsp"><i class="fa fa-pencil" ></i>&nbsp;立即点评</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="tab-4" class="tab-pane">
                                        <div class="panel-body" >
                                            <strong>时间:</strong>
                                            2018年3月7日至2018年3月8日
                                            <div style="float: right">
                                                <a class="btn btn-info " type="button" href="zuoye_list.jsp"><i class="fa fa-pencil" ></i>&nbsp;立即点评</a>
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

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
