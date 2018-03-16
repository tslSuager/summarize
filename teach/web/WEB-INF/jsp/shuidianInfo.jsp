<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/7
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->
    <title>水电录入</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <strong class="col-lg-4 col-lg-offset-4 text-center" style="font-size: 20px">水电录入</strong>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <div class="row ">
                        <div class="tabs-container col-lg-offset-2">
                            <ul class="nav nav-tabs col-lg-10">
                                <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">入住信息录入</a>
                                </li>
                                <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">退房信息录入</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body col-lg-10">
                                        <form action="" class="col-lg-6 fa-border col-lg-offset-3">
                                            <table class="table">
                                                <tbody>
                                                <tr>
                                                    <th class="text-right">寝室号:</th>
                                                    <td>
                                                        <select name="qinshi">
                                                            <option value="">901</option>
                                                            <option value="">902</option>
                                                            <option value="">903</option>
                                                            <option value="">904</option>
                                                        </select>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <th class="text-right">入住时间:</th>
                                                    <td>
                                                        <input id="intime" class="laydate-icon form-control layer-date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">入住时电表值:</th>
                                                    <td><input type="text" placeholder="/度" style="height: 34px;width: 240px"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">入住时气表值:</th>
                                                    <td><input type="text" placeholder="/方" style="height: 34px;width: 240px"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">入住时水表值:</th>
                                                    <td><input type="text" placeholder="/方" style="height: 34px;width: 240px"></td>
                                                </tr>

                                                <tr>
                                                    <td class="text-center" colspan="2">
                                                        <div class="m-t ">
                                                            <button class="btn btn-primary btn-w-m m-r" type="submit">提交</button>
                                                            <button class="btn btn-warning btn-w-m" type="reset">重置</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                        <button class="btn btn-success btn-w-m" style="float: right" id="checkIn-btn">批量录入</button>
                                        <input type="file" id="checkIn-Info" style="display:none">
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane">
                                    <div class="panel-body col-lg-10">
                                        <form action="" class="col-lg-6 fa-border col-lg-offset-3">
                                            <table class="table">
                                                <tbody>
                                                <tr>
                                                    <th class="text-right">寝室号:</th>
                                                    <td>
                                                        <select name="qinshi">
                                                            <option value="">901</option>
                                                            <option value="">902</option>
                                                            <option value="">903</option>
                                                            <option value="">904</option>
                                                        </select>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <th class="text-right">退房时间:</th>
                                                    <td>
                                                        <input id="outtime" class="laydate-icon form-control layer-date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">退房时电表值:</th>
                                                    <td><input type="text" placeholder="/度" style="height: 34px;width: 240px"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">退房时气表值:</th>
                                                    <td><input type="text" placeholder="/方" style="height: 34px;width: 240px"></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-right">退房时水表值:</th>
                                                    <td><input type="text" placeholder="/方" style="height: 34px;width: 240px"></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" colspan="2">
                                                        <div class="m-t ">
                                                            <button class="btn btn-primary btn-w-m m-r" type="submit">提交</button>
                                                            <button class="btn btn-warning btn-w-m" type="reset">重置</button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                        <button class="btn btn-success btn-w-m" style="float: right" id="checkOut-btn">批量录入</button>
                                        <input type="file" id="checkOut-info" style="display:none">
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
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/plugins/layer/laydate/laydate.js"></script>
<script>
    laydate({elem: "#intime", event: "focus"});
    laydate({elem: "#outtime", event: "focus"});
    var start = {
        elem: "#start",
        format: "YYYY/MM/DD hh:mm:ss",
        min: laydate.now(),
        max: "2099-06-16 23:59:59",
        istime: true,
        istoday: false,
        choose: function (datas) {
            end.min = datas;
            end.start = datas
        }
    };
    var end = {
        elem: "#end",
        format: "YYYY/MM/DD hh:mm:ss",
        min: laydate.now(),
        max: "2099-06-16 23:59:59",
        istime: true,
        istoday: false,
        choose: function (datas) {
            start.max = datas
        }
    };
    laydate(start);
    laydate(end);
</script>
<script>
    $(function () {
//    入住信息批量录入按钮
        $("#checkIn-btn").click(function () {
            $("#checkIn-Info").click()
        })

//    退房信息批量录入按钮
        $("#checkOut-btn").click(function () {
            $("#checkOut-info").click()
        })
    })
</script>
</body>
</html>
