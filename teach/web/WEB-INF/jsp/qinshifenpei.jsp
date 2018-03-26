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
    <title>寝室分配</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/plugins/treeview/bootstrap-treeview.css">
    <style type="text/css">
        .buttonCss {
            margin: 10px;
        }

        #addStu {
            margin-top: 30px;
        }

        #deleteStu {
            margin-top: 200px;
        }

    </style>
</head>
<body>
<div class="row">
    <div class="col-sm-5 border">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <h4>寝室分配情况</h4>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="m-t">
                            <button class="btn btn-success btn-w-m " data-toggle="modal" data-target="#addModal"><span
                                    class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加寝室
                            </button>
                        </div>
                        <div class="ibox ">

                            <div class="ibox-content" id="left">
                                <span>
                                    <h4> 寝室编号</h4>
                                </span>
                                <div class="tabs-container">
                                    <div class="tabs-left">
                                        <ul class="nav nav-tabs" id="className">
                                            <%--<li class="active"><a data-toggle="tab" href="#tab-1"> 901</a>--%>
                                            <%--</li>--%>
                                            <%--<li class=""><a data-toggle="tab" href="#tab-2"> 902</a>--%>
                                            <%--</li>--%>
                                            <%--<li class=""><a data-toggle="tab" href="#tab-3"> 903</a>--%>
                                            <%--</li>--%>
                                        </ul>
                                        <div class="tab-content ">
                                            <%--<div id="tab-1" class="tab-pane active">--%>
                                                <%--<div class="panel-body" id="class1">--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="tab-2" class="tab-pane">--%>
                                                <%--<div class="panel-body" id="class2">--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div id="tab-3" class="tab-pane">--%>
                                                <%--<div class="panel-body" id="class3">--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                    <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss"--%>
                                                            <%--type="button" name="">即可夜壶--%>
                                                    <%--</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
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
    <div class="col-sm-2 border">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="nav col-sm-2">
                <button id="deleteStu" class="btn btn-danger btn-arrow-right" type="button">
                    删除
                    <i class="glyphicon glyphicon-arrow-right"></i>
                </button>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="nav col-sm-2">
                <button id="addStu" class="btn btn-info btn-arrow-left" type="button">
                    <i class="glyphicon glyphicon-arrow-left"></i>
                    添加
                </button>
            </div>
        </div>
    </div>
    <div class="col-sm-5 border">
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="/学生姓名">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary">搜索</button>
                    </span>
                </div>
                <div id="treeview"></div>
                <h4>班级学生列表</h4>
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content" id="right">
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button"
                                    name="">
                                即可夜壶
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<%--添加寝室弹窗--%>
<div class="modal inmodal in" id="addModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">关闭</span>
                </button>
            </div>
            <form action="">
            <small class="font-bold">
                <div class="modal-body">

                        <table class="table table-bordered table-hover ">
                            <caption class="col-lg-offset-5 m-b"><h3>添加寝室</h3></caption>
                            <tbody>
                            <tr>
                                <th class="text-center">寝室号:</th>
                                <td><input type="text" id="dormitory_id"></td>
                            </tr>
                            <tr>
                                <th class="text-center">最大人数:</th>
                                <td><input type="text" id="maxnum"></td>
                            </tr>
                            <tr>
                                <th class="text-center">备注:</th>
                                <td>
                                    <textarea rows="10" cols="50" style="width: 420px;height: 100px" id="remark"></textarea>
                                </td>
                            </tr>

                            </tbody>
                        </table>

                </div>
                <div class="modal-footer">
                    <input type="reset" class="btn btn-white" value="重置">
                    <input type="submit" class="btn btn-primary" id="add_dormitory" data-dismiss="modal" value="添加">
                </div>
            </small>
            </form>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/content.min.js"></script>
<script src="/static/js/welcome.min.js"></script>
<script src="/static/js/plugins/treeview/bootstrap-treeview.js"></script>
<script type="text/javascript">
    $(".chooseStu").click(function () {
        if ($(this).hasClass("btn-info")) {
            $(this).removeClass("btn-info").addClass("btn-warning").attr("id", Math.random());
        } else if ($(this).hasClass("btn-warning")) {
            $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id");
        }
    });
    $("#addStu").click(function () {
        $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
        $("#right").find(".btn-warning").clone(true).appendTo($(".tab-content").find(".active").find(".panel-body"));
        $("#left").find(".btn-warning").removeClass("btn-warning").addClass("btn-info").removeAttr("id");
        $("#right").find(".btn-warning").remove();
    });
    $("#deleteStu").click(function () {
        $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-info");
        $("#left").find(".btn-warning").clone(true).appendTo("#right");
        $("#right").find(".btn-warning").removeClass("btn-warning").addClass("btn-info").removeAttr("id");
        $("#left").find(".btn-warning").remove();
    });

</script>
<%--添加寝室--%>
<script>
    $(function () {
        var i = 0;
        $("#add_dormitory").click(function () {

            i++;
            var dormitoryid = $(".modal-body #dormitory_id").val();
            if(dormitoryid) {
                if(i==1){
                    $('#className').append($("<li>").addClass("active").append($("<a>").attr("data-toggle", "tab").attr("href", "#tab-" + i).text(dormitoryid)));
                    $('.tab-content').append($("<div>").attr("id", "tab-" + i).addClass("tab-pane active").append($("<div>").addClass("panel-body").attr("id", "dormitory_" + dormitoryid)));
                }else{
                    $('#className').append($("<li>").append($("<a>").attr("data-toggle", "tab").attr("href", "#tab-" + i).text(dormitoryid)));
                    $('.tab-content').append($("<div>").attr("id", "tab-" + i).addClass("tab-pane").append($("<div>").addClass("panel-body").attr("id", "dormitory_" + dormitoryid)));
                }
            }
            //            先清空文本框中内容
            $("#dormitory_id").val("");
            $("#maxnum").val("");
            $("#remark").val("");
        })
    })
</script>
<script>
    $(function () {
        //        bootstraptree
        var tree = [{
            text: "区域",
            href: "#parent1",
            tags: ["4"],
            nodes: [{
                text: "四川",
                href: "#child1",
                tags: ["2"],
                nodes: [{ href: "#grandchild1", tags: ["0"]},
                        {href: "#grandchild2", tags: ["0"]
                }]
            },
                {   text: "新疆",
                    href: "#child2",
                    tags: ["2"],
                    nodes:[{}]
                }]
        }]
        tree[0].nodes[0].nodes[0].text = "四川大学";
        tree[0].nodes[0].nodes[1].text = "四川理工学院";
        tree[0].nodes[1].nodes[0].text = "新疆大学"
        $("#treeview").treeview({
            color: "#666",
            expandIcon: "glyphicon glyphicon-chevron-right",
            collapseIcon: "glyphicon glyphicon-chevron-down",
            nodeIcon: "glyphicon glyphicon-bookmark",
            showBorder:false,
            data: tree
        })
    })
</script>
</body>
</html>
