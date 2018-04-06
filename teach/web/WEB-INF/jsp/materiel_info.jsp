<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>寝室信息</title>
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
                    <h5>物料信息</h5>
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
                    <div class="row">
                        <div style="float: right;margin-right: 20px">
                            <button class="btn btn-success btn-w-m " data-toggle="modal" data-target="#addModal"><span
                                    class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加物品
                            </button>
                        </div>
                        <div class="col-sm-10 col-lg-offset-1">
                            <div class="panel-body">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion"
                                                   href="tabs_panels.html#collapseOne">物料详情</a>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <table id="materiel" data-toggle="table">
                                                    <thead id="biaotihang">
                                                    <tr>
                                                        <%--<th class="text-center" >寝室号</th>--%>
                                                        <%--<th class="text-center" >床单/套</th>--%>
                                                        <%--<th class="text-center" >棉被/套</th>--%>
                                                        <%--<th class="text-center" >钥匙/把</th>--%>
                                                        <%--<th class="text-center" >空调遥控器/个</th>--%>
                                                        <%--<th class="text-center" >插线板/个</th>--%>
                                                        <%--<th class="text-center" >桌子/张</th>--%>
                                                        <%--<th class="text-center" >凳子/张</th>--%>
                                                        <%--<th class="text-center" >撑衣杆/个</th>--%>
                                                        <%--<th class="text-center" >衣架/个</th>--%>
                                                        <%--<th class="text-center" >操作</th>--%>
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
            </div>
        </div>
    </div>
</div>

<%--添加物品窗口--%>
<div class="modal inmodal in" id="addModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">关闭</span>
                </button>
            </div>
            <small class="font-bold">
                <form action="/materiel/appendMateriel">
                    <div class="modal-body">
                        <table class="table table-bordered table-hover ">
                            <caption class="col-lg-offset-5 m-b"><h3>添加物品</h3></caption>
                            <tbody>
                            <tr>
                                <th class="text-center">寝室号:</th>
                                <td>
                                    <select id="qinshi" name="dormitoryId">
                                        <%--动态生成寝室号--%>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th class="text-center">物品名称:</th>
                                <td><input type="text" name="name"></td>
                            </tr>
                            <tr>
                                <th class="text-center">物品数量:</th>
                                <td><input type="text" name="count"></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                        <input type="submit" class="btn btn-primary" value="添加">
                    </div>
                </form>
            </small>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/jeditable/jquery.jeditable.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>

<script>

    $(function () {
        //生成物料表,以及修改物料表
        $.ajax({
            type: "get",
            url: "/materiel/getMateriel",
            dataType: "json",
            success: function (msg) {
                var mName=new Array();//物料名字的数组
                var strtd="";//需要添加的行
                //生成表的标题行
                $.each(msg['materielName'],function (x,ma) {
                    strtd = strtd + "<td class='num-td' nid='0' name='"+ma.name+"'>0</td>";
                    mName[x]=ma.name;//装入数组
                    if(x===0){
                       $('<th class="text-center" style="" data-field="0" tabindex="0"><div class="th-inner ">寝室号</div><div class="fht-cell"></div></th>') .appendTo($("#biaotihang tr"));
                    }
                    $('<th class="text-center" style="" data-field="0" tabindex="0"><div class="th-inner ">'+ma.name+'</div><div class="fht-cell"></div></th>') .appendTo($("#biaotihang tr"));
                    if(x===msg['materielName'].length-1){
                        $('<th class="text-center" style="" data-field="0" tabindex="0"><div class="th-inner ">操作</div><div class="fht-cell"></div></th>') .appendTo($("#biaotihang tr"));
                    }
                });
//                console.info(strtd);
                if (msg['dormitoryInfos'] != null) {
                    $.each(msg['dormitoryInfos'], function (a, m) {
                        //如果包含tr标签.no-records-found,则删除
                        $(".no-records-found").remove();
                        //获取每个寝室号
                        $qsh=m.dormitoryName;
                        $("#qinshi").append("<option value='"+m.id+"'>"+$qsh+"</option>");
                        //找到表格,并在表格中添加行/////////////////////////
                        $table = $("#materiel");


                        //生成每一行的首尾单元格
                        $table.append("<tr class='tb_title text-center'>" +
                            "<td class='dormitory_id' did=''>0</td>" +strtd+
                            "<td class='btn-td' >" +
                            "</td>" +
                            "</tr>");

                        ///////////////////////////////////////////////////
                        //保存按钮，如果nid（物料id）为0，则保存物料信息；nid不为0，则表示修改物料信息
                        $(".btn-td:last").append($("<button>").addClass("btn btn-info btn-xs save-btn").css("display", "none").text("保存").on("click", function () {
                            $(this).css("display", "none");
                            $(this).next().css("display", "block");
                            ($(this).parent().siblings(".num-td")).each(function (i, $td) {
                                //获取输入框中的值
                                var value = $($td).children(".show-num").val();
                                //判断td中的内容是否为0,为0进入循环
//                                if (value != "0") {
                                    //如果td标签中的nid属性为0表示该物料为新创建的,即发送ajax请求插入一条物料表(did[寝室id],nid[物料主键],name[物料名字],value[物料数量])
                                    if ($($td).attr("nid") == "0") {
                                        //寝室id
                                        $did = $($td).parent().find("td:eq(0)").attr("did");
                                        $name = $($td).attr("name");
                                        $count = value;
//                                        alert($did+":"+$name+":"+$count)
                                        $.ajax({
                                            type: "post",
                                            url: "/materiel/addMateriel",
                                            data: {"dormitoryId":$did,"name":$name,"count":$count},
                                            success: function (msg) {

                                            }
                                        });
                                    } else {//表示发送修改
                                        //寝室id
                                        $nid = $($td).attr("nid");
                                        $name = $($td).attr("name");
                                        $count = value;
//                                        alert($nid+":"+$name+":"+$count)
                                        $.ajax({
                                            type: "post",
                                            url: "/materiel/updateMateriel",
                                            data: {"id":$nid,"name":$name,"count":$count},
                                            success: function (msg) {
                                            }
                                        });
                                    }


//                                }
                                //清空td内容
                                $($td).text("");
                                //把值填入td中
                                $($td).text(value);
                            })
                        }))

                        //编辑按钮，在页面获取显示的物料数量，并使其能够进行编辑
                        $(".btn-td:last").append($("<button>").addClass("btn btn-success btn-xs edit-btn").text("编辑").on("click", function () {
                                $(this).css("display", "none");
                                $(this).prev().css("display", "block");
                                ($(this).parent().siblings(".num-td")).each(function (i, $td) {
                                    //获取值
                                    var value = $td.innerHTML;
                                    //清楚单元内容
                                    $td.innerHTML = "";
                                    //添加内容
                                    $("<input type='button' value='-'>").on("click", function () {
                                        //获取输入框的值
                                        var value = $(this).siblings(".show-num").val();
                                        value--;
                                        if (value >= 0) {
//                赋值回去
                                            $(this).siblings(".show-num").val(value);
                                        }
                                    }).appendTo($td)
                                    //插入输入框
                                    $("<input type='text' style='width: 25px;text-align: center'>").attr("value", value).addClass("show-num").appendTo($td);

                                    $("<input type='button' value='+'>").on("click", function () {
                                        //获取输入框的值
                                        var value = $(this).siblings(".show-num").val();
                                        value++;
                                        if (value <= 99) {
//                赋值回去
                                            $(this).siblings(".show-num").val(value);
                                        }
                                    }).appendTo($td)
                                })
                            })
                        );

                        $tr = $("#materiel tr:last");
                        $.each(m, function (b, e) {
                            //添加寝室id
                            if (b === "id") {
                                $tr.find("td:eq(0)").attr("did", e);
                            }
                            //显示寝室编号
                            if (b === "dormitoryName") {
                                $tr.find("td:eq(0)").text("").append(e);
                            }
                            //遍历寝室物料
                            if (b === "materiels") {
                                $.each(e, function (c, n) {
//                                    if (n.name == "床单") {
//                                        $tr.find("td:eq(1)").attr("nid", n.id).text("").append(n.count);
//                                    }
                                    $.each(mName,function (d,nn) {
                                        if (n.name == nn) {
                                            $tr.find("td:eq("+(d+1)+")").attr("nid", n.id).text("").append(n.count);
                                        }
                                    })
                                })
                            }
                        })
                    });
                }
            }
        });

    })


</script>
</body>

</html>