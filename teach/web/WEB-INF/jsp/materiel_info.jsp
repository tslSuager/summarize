<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <button class="btn btn-success btn-w-m " data-toggle="modal" data-target="#addModal"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加物品</button>
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
                                                <table  data-toggle="table"
                                                        data-query-params="queryParams" data-mobile-responsive="true"
                                                        data-pagination="true" data-icon-size="outline"
                                                        data-search="true">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" data-field="dormitory_id">寝室号</th>
                                                            <th class="text-center" data-field="people_num">床单/套</th>
                                                            <th class="text-center" data-field="cin_time">棉被/套</th>
                                                            <th class="text-center" data-field="residue_num">钥匙/把</th>
                                                            <th class="text-center" data-field="water">空调遥控器/个</th>
                                                            <th class="text-center" data-field="electricity">插线板/个</th>
                                                            <th class="text-center" data-field="gas">桌子/张</th>
                                                            <th class="text-center" data-field="3">凳子/张</th>
                                                            <th class="text-center" data-field="1">撑衣杆/个</th>
                                                            <th class="text-center" data-field="2">衣架/个</th>
                                                            <th class="text-center" data-animation="operation">操作</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody class="text-center">

                                                        <tr class="tb_title">
                                                            <td class="dormitory_id">901</td>
                                                            <td class="num-td">7</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">5</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">0</td>
                                                            <td class="num-td">5</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">2</td>
                                                            <td class="num-td">5</td>
                                                            <td class="btns">
                                                                <button class="btn btn-info btn-xs edit-btn">修改</button>

                                                                <button class="btn btn-success btn-xs save-btn" style="display:none;">保存</button>
                                                            </td>
                                                        </tr>
                                                        <tr class="tb_title">
                                                            <td class="dormitory_id">901</td>
                                                            <td class="num-td">7</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">5</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">0</td>
                                                            <td class="num-td">5</td>
                                                            <td class="num-td">6</td>
                                                            <td class="num-td">2</td>
                                                            <td class="num-td">5</td>
                                                            <td >
                                                                <button class="btn btn-info btn-xs edit-btn">修改</button>
                                                                <button class="btn btn-success btn-xs save-btn" style="display:none">保存</button>
                                                            </td>
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

<%--添加物品窗口--%>
<div class="modal inmodal in" id="addModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                </button>
            </div>
            <small class="font-bold">
                <div class="modal-body">
                    <table class="table table-bordered table-hover ">
                        <caption class="col-lg-offset-5 m-b"><h3>添加物品</h3></caption>
                        <tbody>
                        <tr>
                            <th class="text-center">寝室号:</th>
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
                            <th class="text-center">物品名称:</th>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="text-center">物品数量:</th>
                            <td><input type="text"></td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">添加</button>
                </div>
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

    $(function(){
        //编辑按钮
        $(".edit-btn").click(function () {
            $(this).css("display","none");
            $(this).next().css("display","block");
            ($(this).parent().siblings(".num-td")).each(function (i,$td) {
                //获取值
                 var value = $td.innerHTML;
                 //清楚单元内容
                 $td.innerHTML = "";
                 //添加内容
                $("<input type='button' value='-'>").on("click" ,function () {
                    //获取输入框的值
                    var value =  $(this).siblings(".show-num").val();
                    value--;
                    if(value>=0){
//                赋值回去
                        $(this).siblings(".show-num").val(value);
                    }
                }).appendTo($td)
                //插入输入框
                $("<input type='text' style='width: 25px;text-align: center'>").attr("value",value).addClass("show-num").appendTo($td);

                $("<input type='button' value='+'>").on("click" ,function () {
                    //获取输入框的值
                    var value =  $(this).siblings(".show-num").val();
                    value++;
                    if(value<=99){
//                赋值回去
                        $(this).siblings(".show-num").val(value);
                    }
                }).appendTo($td)
            })
        })
//        保存按钮
        $(".save-btn").click(function () {
            $(this).css("display","none");
            $(this).prev().css("display","block");
            ($(this).parent().siblings(".num-td")).each(function (i,$td) {
                //获取输入框中的值
              var value = $($td).children(".show-num").val();
//              清空td内容
                $($td).text("");
//                把值填入td中
                $($td).text(value);
            })
        })

    })


</script>
</body>

</html>