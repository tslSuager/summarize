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
    <style>
        .f-s{
            font-size: 14px;
        }
        .span-style{
            font-size: 12px;
            color: #ff0000;
        }
        .member-style{
            color: #f8ac59;
            font-size: 12px;
            font-style: normal;
            padding: 1px 5px;
            border: 1px solid #f8ac59;
            border-radius: 2px;
        }
    </style>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeIn">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>寝室信息</h5>
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
                        <div class="col-sm-2 col-sm-offset-5">
                            <table class="table">
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
                        <div class="col-sm-10 col-lg-offset-1">
                            <div class="panel-body">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion"
                                                   href="tabs_panels.html#collapseOne">寝室详情</a>
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
                                                            <th class="text-center" data-field="dormitory">寝室号</th>
                                                            <th class="text-center" data-field="member">寝室成员</th>
                                                            <th class="text-center" data-field="residue_num">剩余床位</th>
                                                            <th class="text-center" data-field="cin_time">入住时间</th>
                                                            <th class="text-center" data-field="water">用水情况</th>
                                                            <th class="text-center" data-field="electricity">用电情况</th>
                                                            <th class="text-center" data-field="gas">用气情况</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="text-center">
                                                        <tr class="tb_title">
                                                            <td class="dormitory_id">901</td>
                                                            <td>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                                <span class="member-style">张三</span>
                                                            </td>
                                                            <td>0</td>
                                                            <td>2018年3月10日</td>
                                                            <td><button class="btn btn-outline btn-info btn-xs details_btn" data-toggle="modal" data-target="#water_info_Modal">详情</button></td>
                                                            <td><button class="btn btn-outline btn-info btn-xs details_btn" data-toggle="modal" data-target="#electricity_info_Modal">详情</button></td>
                                                            <td><button class="btn btn-outline btn-info btn-xs details_btn" data-toggle="modal" data-target="#gas_info_Modal">详情</button></td>
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
<%--修改窗口--%>
<div class="modal inmodal in" id="myModal" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="false" style="display: none;">
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
                        <tr class="modal_tb_title">
                            <th class="text-center">寝室号:</th>
                            <td class=" dormitory_id"></td>
                        </tr>
                        <tr>
                            <th class="text-center">用水情况:</th>
                            <td><input type="text" placeholder="/方"></td>
                        </tr>
                        <tr>
                            <th class="text-center">用电情况:</th>
                            <td><input type="text" placeholder="/度"></td>
                        </tr>
                        <tr>
                            <th class="text-center">用气情况:</th>
                            <td><input type="text" placeholder="/度"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                </div>
            </small>
        </div>

    </div>
</div>
<%--水详情窗口--%>
<div class="modal inmodal in" id="water_info_Modal" tabindex="-1" role="dialog" aria-hidden="true"  style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                </button>
            </div>
                <div class="modal-body">
                    <table class="table table-bordered table-hover ">
                        <caption class="text-center"><strong>水表详情</strong></caption>
                        <thead class="f-s">
                            <tr class="modal_tb_title">
                                <th class="text-center dormitory_id" colspan="2"></th>
                            </tr>
                            <tr>
                                <th class="text-center">时间</th>
                                <th class="text-center">水表值(方)</th>
                            </tr>
                        </thead>
                        <tbody class="text-center f-s" >
                            <tr>
                                <td >2018年3月10日</td>
                                <td >540</td>
                            </tr>
                            <tr>
                                <td >2018年3月15日</td>
                                <td><span >600</span><span class="m-l-sm span-style">60</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                </div>
        </div>

    </div>
</div>
<%--气详情窗口--%>
<div class="modal inmodal in" id="gas_info_Modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                </button>
            </div>
            <small class="font-bold">
                <div class="modal-body">
                    <table class="table table-bordered table-hover ">
                        <caption class="text-center"><strong>气表详情</strong></caption>
                        <thead>
                        <tr class="modal_tb_title">
                            <th class="text-center dormitory_id" colspan="2"></th>
                        </tr>
                        <tr>
                            <th class="text-center">时间</th>
                            <th class="text-center">气表值(方)</th>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        <tr>
                            <td >2018年3月10日</td>
                            <td class="db_click">540</td>
                        </tr>
                        <tr>
                            <td>2018年3月15日</td>
                            <td class="db_click">600</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                </div>
            </small>
        </div>

    </div>
</div>
<%--电详情窗口--%>
<div class="modal inmodal in" id="electricity_info_Modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content animated fadeInDown">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                </button>
            </div>
            <small class="font-bold">
                <div class="modal-body">
                    <table class="table table-bordered table-hover ">
                        <caption class="text-center"><strong>电表详情</strong></caption>
                        <thead>
                        <tr class="modal_tb_title">
                            <th class="text-center dormitory_id" colspan="2"></th>
                        </tr>
                        <tr>
                            <th class="text-center">时间</th>
                            <th class="text-center">电表值(度)</th>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        <tr>
                            <td >2018年3月10日</td>
                            <td class="db_click">540</td>
                        </tr>
                        <tr>
                            <td>2018年3月15日</td>
                            <td class="db_click">600</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                </div>
            </small>
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

<script>
    $(function () {
        //动态获取寝室id
        $(".details_btn").click(function () {
            //获取表格当前行的寝室号的值
           var dormitoryid = (($(this).parent()).siblings(".dormitory_id")).text();
            $(".modal_tb_title .dormitory_id").text(dormitoryid);
        })
    })
</script>


</body>
</html>