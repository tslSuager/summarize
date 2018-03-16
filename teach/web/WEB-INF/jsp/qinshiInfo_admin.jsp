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
    <title>寝室信息</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/animate.min.css">
    <style>
        td,th{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container m-t-lg">
    <div class="row">
        <div class="col-lg-4">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th class="text-right">寝室总数:</th>
                    <td>10</td>
                </tr>
                <tr>
                    <th class="text-right">水共计:</th>
                    <td><span>150</span>方</td>
                </tr>
                <tr>
                    <th class="text-right">电共计:</th>
                    <td><span>300</span>度</td>
                </tr>
                <tr>
                    <th class="text-right">气共计:</th>
                    <td><span>100</span>方</td>
                </tr>

                </tbody>
            </table>

        </div>
        <div class="col-lg-12">

        <table class="table table-bordered table-hover " id="dormitory-table">
            <caption class="col-lg-offset-5 m-b"><strong>寝室详情</strong></caption>
            <thead>
                <tr>
                    <th>寝室号</th>
                    <th>已住人数</th>
                    <th>剩余床位</th>

                    <th>用水情况</th>
                    <th>用电情况</th>
                    <th>用气情况</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>901</td>
                    <td>8</td>
                    <td>0</td>

                    <td> <span>100</span>方</td>
                    <td> <span>50</span>度</td>
                    <td> <span>100</span>方</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                        修改
                    </button></td>
                </tr>
                <tr>
                    <td>902</td>
                    <td>8</td>
                    <td>0</td>

                    <td> <span>100</span>方</td>
                    <td> <span>50</span>度</td>
                    <td> <span>100</span>方</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                        修改
                    </button></td>
                </tr>
                <tr>
                    <td>903</td>
                    <td>8</td>
                    <td>0</td>

                    <td> <span>100</span>方</td>
                    <td> <span>50</span>度</td>
                    <td> <span>100</span>方</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                        修改
                    </button></td>
                </tr>
                <tr>
                    <td>904</td>
                    <td>8</td>
                    <td>0</td>

                    <td> <span>100</span>方</td>
                    <td> <span>50</span>度</td>
                    <td> <span>100</span>方</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                        修改
                    </button></td>
                </tr>
                <tr>
                    <td>905</td>
                    <td>8</td>
                    <td>0</td>

                    <td> <span>100</span>方</td>
                    <td> <span>50</span>度</td>
                    <td> <span>100</span>方</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
                        修改
                    </button></td>
                </tr>

            </tbody>
        </table>
     </div>
    </div>
</div>
<div class="modal inmodal in" id="myModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                </button>
            </div>
            <small class="font-bold">
                <div class="modal-body">
                    <table class="table table-bordered table-hover ">
                        <caption class="col-lg-offset-5 m-b"><strong>寝室详情</strong></caption>
                        <tbody>
                        <tr>
                            <th>寝室号:</th>
                            <td>901</td>
                        </tr>
                        <tr>
                            <th>用水情况:</th>
                            <td><input type="text" placeholder="/方"></td>
                        </tr>
                        <tr>
                            <th>用电情况:</th>
                            <td><input type="text" placeholder="/度"></td>
                        </tr>
                        <tr>
                            <th>用气情况:</th>
                            <td><input type="text" placeholder="/度"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
             </small>
        </div>

    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

</body>
</html>
