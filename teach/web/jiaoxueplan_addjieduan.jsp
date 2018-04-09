<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<html>
<head>
    <title>计划->阶段内容</title>
    <style>

        #datepicker {
            z-index: 2500 !important;
        }

        .steps, .step {
            display: inline-block;
            position: relative;
            padding: 1em 2em 1em 3em;
            vertical-align: top;
            background-color: #FFF;
            color: #888;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            box-sizing: border-box
        }

        .step:after, .steps .step:after {
            position: absolute;
            z-index: 2;
            content: '';
            top: 0;
            right: -1.45em;
            border-bottom: 1.5em solid transparent;
            border-left: 1.5em solid #FFF;
            border-top: 1.5em solid transparent;
            width: 0;
            height: 0
        }

        .steps {
            cursor: pointer;
            display: inline-block;
            font-size: 0;
            box-shadow: 0 0 0 1px rgba(0, 0, 0, .1);
            line-height: 1;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            box-sizing: border-box;
            border-radius: .3125rem
        }

        .steps .step:first-child {
            padding-left: 1.35em;
            border-radius: .3125em 0 0 .3125em
        }

        .steps .step.hover:after, .steps .step:hover:after, .step:hover, .step.hover::after {
            border-left-color: #F7F7F7
        }

        .steps .step.active, .active.step {
            cursor: auto;
            background-color: #428BCA;
            color: #FFF;
            font-weight: 700
        }

        .steps .step.active:after, .active.steps:after {
            border-left-color: #428BCA
        }

        .steps .disabled.step, .disabled.step {
            cursor: auto;
            background-color: #FFF;
            color: #CBCBCB
        }

        /*向导数量*/
        .four.steps > .step {
            width: 25%
        }

        /*向导尺寸*/
        .step, .steps .step {
            font-size: 1rem
        }

        /*默认*/
    </style>
    <jsp:include page="WEB-INF/jsp/jiaoan/common/head.jsp"/>
    <jsp:include page="WEB-INF/jsp/jiaoan/common/foot.jsp"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">

</head>
<body>
<div class="Hui-article">
    <%--添加阶段的按钮--%>
    <div id="createlevelbtn" class="bars pull-left"
         style="margin-left: 10%;margin-top: 50px;width: 80%;float: left;margin-right: 10%">
        <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
            <button type="button" id="new_jieduan" class="btn btn-outline btn-default">
                <i class="fa fa-plus"></i>
            </button>
        </div>
    </div>

    <%--要添加的整个阶段的大框架--%>
    <%--<div class="four steps" id="createlevel" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span id="span_dbclick" class="active step">阶段:</span>
        <div style="margin-top: 0px;display: none" id="s1">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>任务</h5>
                            <div class="ibox-tools">
                                &lt;%&ndash;添加一个任务&ndash;%&gt;
                                <button type="button" id="new_task" class="btn btn-outline btn-default" onclick="$('#mySontaskModal').css('display', 'block');">
                                    <i class="fa fa-plus"></i>
                                </button>
                                &lt;%&ndash;修改任务内容&ndash;%&gt;
                                <td style="text-align: center;width: 220px">
                                    <button type="button" class="btn btn-outline btn-default" id="updatetask" onclick="$('#updatemySontaskModal').css('display', 'block');">
                                        <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                    </button>
                                </td>
                            </div>
                        </div>
                        <div class="ibox-content">
                            &lt;%&ndash;关键词搜索&ndash;%&gt;
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary">搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            &lt;%&ndash;新建任务内容的表格横排显示&ndash;%&gt;
                            <div class="table-responsive">
                                <table class="table table-striped" id="addtable">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>任务描述</th>
                                        <th>开始时间</th>
                                        <th>结束时间</th>
                                        <th>文件名</th>
                                        <th>创建人</th>
                                        <th>备注说明</th>
                                        <th style="text-align: center">操作</th>
                                    </tr>
                                    </thead>
                                    &lt;%&ndash;添加任务&ndash;%&gt;
                                    <tbody id="addtbody">

                                    &lt;%&ndash;追加到后面的详细任务&ndash;%&gt;
                                    &lt;%&ndash;<tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        &lt;%&ndash;子任务表操作&ndash;%&gt;
                                        <td style="text-align: center">
                                            <button type="button" class="btn btn-outline btn-default" id="updateleverl" onclick="$('#addmySonPlanModal').css('display', 'block');">
                                                <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                            </button>
                                            <button type="button" class="btn btn-outline btn-default" id="checkleverl" onclick="$('#checkmySonPlanModal').css('display', 'block');">
                                                <i class="glyphicon glyphicon-check" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                    </tr>&ndash;%&gt;

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%--添加阶段弹出框开始--%>
    <div class="modal inmodal in" id="mySonPlanModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close_all close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">新建阶段内容</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">阶段描述 :</label>
                                <input type="text" class="form-control" style="width: 320px" name="planname"
                                       id="planName">
                            </div>
                        </div>

                        <div class="" id="data_5" style="margin: 10px auto;width: 600px;">
                            <div class="input-daterange input-group" id="datepicker">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                                <input type="text" class="form-control" name="start" value="2017-11-11"
                                       style="width: 320px" id="start"/>
                                <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间
                                    :</label>
                                <input type="text" class="form-control" name="end" value="2017-11-17"
                                       style="width: 320px;margin-top: 10px" id="end"/>
                            </div>
                        </div>

                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                                <input class="form-control layer-date " style="width: 320px" id="remarks">
                            </div>
                        </div>
                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_all" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary save_level">保存</button>
                </div>
            </div>
        </div>
    </div>
    <%--添加阶段弹出框结束--%>

    <%--添加子任务task表弹出框开始--%>
    <div class="modal inmodal in" id="addmySonPlanModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">添加子任务</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">选择文件 :</label>
                                <input type="file" name="file" class="form-control" style="width: 320px"
                                       id="choosefile">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">图标 :</label>
                                <input type="file" name="img" class="form-control" style="width: 320px" id="chooseimg">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M)
                                    :</label>
                                <input type="text" name="filesize" class="form-control" style="width: 320px"
                                       id="filesize" value="5">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可提前提交
                                    :</label>
                                <label>
                                    <input type="radio" value="1" id="updateoptionsRadios11"
                                           name="optionsRadios">是</label>

                                <label>
                                    <input type="radio" value="0" id="updateoptionsRadios22"
                                           name="optionsRadios">否</label>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可过时提交
                                    :</label>
                                <label>
                                    <input type="radio" value="1" id="optionsRadios33"
                                           name="optionsRadios1">是</label>

                                <label>
                                    <input type="radio" value="0" id="optionsRadios44"
                                           name="optionsRadios1">否</label>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                                <input class="form-control layer-date" style="width: 320px" id="renwudetailremarks">
                            </div>
                        </div>

                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_all" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary update_level">添加</button>
                </div>
            </div>
        </div>
    </div>
    <%--添加子任务task表弹出框结束--%>

    <%--添加任务弹出框开始--%>
    <div class="modal inmodal in" id="mySontaskModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close_all close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">新建任务内容</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">任务名 :</label>
                                <input type="text" class="form-control" style="width: 320px" id="renwuname">
                            </div>
                        </div>

                        <div class="" id="data_5" style="margin: 10px auto;width: 600px;">
                            <div class="input-daterange input-group" id="datepicker">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                                <input type="text" class="form-control" name="start" value="2017-11-11"
                                       style="width: 320px" id="renwustart"/>
                                <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间
                                    :</label>
                                <input type="text" class="form-control" name="end" value="2017-11-17"
                                       style="width: 320px;margin-top: 10px" id="renwuend"/>
                            </div>
                        </div>

                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注 :</label>
                                <input class="form-control layer-date " style="width: 320px" id="renwuremarks">
                            </div>
                        </div>
                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_all" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary save_task">保存</button>
                </div>
            </div>
        </div>
    </div>
    <%--添加任务弹出框结束--%>
    <%--修改子任务弹出框开始--%>
    <div class="modal inmodal in" id="updatemySontaskModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">修改任务内容</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">任务名 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                                <input class="form-control layer-date " placeholder="YYYY-MM-DD hh:mm:ss"
                                       style="width: 320px"
                                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px;margin-bottom: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">结束时间 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>
                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_all" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary update_task">修改任务</button>
                </div>
            </div>
            <small class="font-bold">
            </small>
        </div>
        <small class="font-bold">
        </small>
    </div>
    <%--修改子任务弹出框结束--%>
    <%--查看子任务task表弹出框开始--%>
    <div class="modal inmodal in" id="checkmySonPlanModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title">子任务内容</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件名字 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件类型 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">图标 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M)
                                    :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可提前提交
                                    :</label>
                                <label>
                                    <input type="radio" checked="" value="option1" id="updateoptionsRadios1"
                                           name="optionsRadios">是</label>

                                <label>
                                    <input type="radio" value="option2" id="updateoptionsRadios2"
                                           name="optionsRadios">否</label>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可过时提交
                                    :</label>
                                <label>
                                    <input type="radio" checked="" value="option3" id="optionsRadios3"
                                           name="optionsRadios1">是</label>

                                <label>
                                    <input type="radio" value="option4" id="optionsRadios4"
                                           name="optionsRadios1">否</label>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                                <input class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">创建时间 :</label>
                                <input class="form-control layer-date " placeholder="YYYY-MM-DD hh:mm:ss"
                                       style="width: 320px"
                                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">创建人 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>
                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_all" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary save_sonstask">保存</button>
                </div>
            </div>
        </div>
    </div>
    <%--查看子任务task表出框结束--%>

    <script type="text/javascript">
        $(document).ready(function () {
            console.info("------------------------------");
            var url = location.search.split("jihuaId=", 2);
            var jihuaId = url[1];
            $.get("/teaching/viewJieduan", {"jihuaId": jihuaId}, function (msg) {
                console.info(msg['jieduans']);
                $.each(msg['jieduans'], function (i, each) {
                    $("#createlevelbtn").append('<div class="four steps createlevel" name="' + each['id'] + '" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">\n' +
                        '        <span id="span_dbclick" class="active step">阶段' + (i + 1) + ':' + each['planname'] + '</span>\n' +
                        '        <div style="margin-top: 0px;display: none" id="s1">\n' +
                        '            <div class="row">\n' +
                        '                <div class="col-sm-12">\n' +
                        '                    <div class="ibox float-e-margins">\n' +
                        '                        <div class="ibox-title">\n' +
                        '                            <h5>任务</h5>\n' +
                        '                            <div class="ibox-tools">\n' +
                        '                                <%--添加一个任务--%>\n' +
                        '                                <button type="button" id="new_task' + each['id'] + '" class="btn btn-outline btn-default" onclick="$(\'#mySontaskModal\').css(\'display\', \'block\');">\n' +
                        '                                    <i class="fa fa-plus"></i>\n' +
                        '                                </button>\n' +
                        '                                <%--修改任务内容--%>\n' +
                        '                                <td style="text-align: center;width: 220px">\n' +
                        '                                    <button type="button" class="btn btn-outline btn-default" id="updatetask" onclick="$(\'#updatemySontaskModal\').css(\'display\', \'block\');">\n' +
                        '                                        <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>\n' +
                        '                                    </button>\n' +
                        '                                </td>\n' +
                        '                            </div>\n' +
                        '                        </div>\n' +
                        '                        <div class="ibox-content">\n' +
                        '                            <%--关键词搜索--%>\n' +
                        '                            <div class="row">\n' +
                        '                                <div class="col-sm-3">\n' +
                        '                                    <div class="input-group">\n' +
                        '                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span\n' +
                        '                                            class="input-group-btn">\n' +
                        '                                        <button type="button" class="btn btn-sm btn-primary">搜索</button> </span>\n' +
                        '                                    </div>\n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '                            <%--新建任务内容的表格横排显示--%>\n' +
                        '                            <div class="table-responsive">\n' +
                        '                                <table class="table table-striped" id="addtable">\n' +
                        '                                    <thead>\n' +
                        '                                    <tr>\n' +
                        '                                        <th></th>\n' +
                        '                                        <th>任务描述</th>\n' +
                        '                                        <th>开始时间</th>\n' +
                        '                                        <th>结束时间</th>\n' +
                        '                                        <th>文件名</th>\n' +
                        '                                        <th>创建人</th>\n' +
                        '                                        <th>备注说明</th>\n' +
                        '                                        <th style="text-align: center">操作</th>\n' +
                        '                                    </tr>\n' +
                        '                                    </thead>\n' +
                        '                                    <%--添加任务--%>\n' +
                        '                                    <tbody id="addtbody">\n' +
                        '\n' +
                        '                                    </tbody>\n' +
                        '                                </table>\n' +
                        '                            </div>\n' +
                        '                        </div>\n' +
                        '                    </div>\n' +
                        '                </div>\n' +
                        '            </div>\n' +
                        '        </div>\n' +
                        '    </div>')
                });

                /**
                 * 双击阶段展开阶段，查看详细任务
                 * 这里查看任务有个BUG，会不断追加重复的任务，未解决
                 */
                var aaa = true;
                $.each($(".createlevel"), function () {
                    $(this).dblclick(function () {
                        if ($(this).find("#s1").css('display') == 'none') {
                            $(this).find("#s1").slideDown();
                            var jieduanId = $(this).attr('name');
//                            console.info(jieduanId);
                            var anniu = $(this);    //anniu表示获取的当前点击事件的div

                            /**
                             * 此处添加一个新的子任务
                             */
                            $(".save_task").click(function () {
                                $("#mySontaskModal").css('display', 'none');
                                var form = $("form");
                                var renwuname = form.find("#renwuname").val();
                                var renwustart = form.find("#renwustart").val();
                                var renwuend = form.find("#renwuend").val();
                                var renwuremarks = form.find("#renwuremarks").val();
                                $.get("/teaching/insertRenwu", {
                                    jieduanId,
                                    renwuname,
                                    renwustart,
                                    renwuend,
                                    renwuremarks
                                }, function (msg) {
                                    window.location.href = "/jiaoxueplan_addjieduan.jsp?jihuaId=" + jihuaId;
                                });
                            });


                            $.get("/teaching/viewRenwu", {jieduanId}, function (msg) {
                                $.each(msg, function (i, each) {
                                    if (aaa) {
                                        anniu.find("#addtbody").append(' <tr>\n' +
                                            '                                        <td>\n' +
                                            '                                            <input type="checkbox" checked class="i-checks" name="input[]">\n' +
                                            '                                        </td>\n' +
                                            '                                        <td>' + each['planname'] + '</td>\n' +
                                            '                                        <td>' + each['startTime'] + '</td>\n' +
                                            '                                        <td>' + each['endTime'] + '</td>\n' +
                                            '                                        <td>' + each['creatTime'] + '</td>\n' +
                                            '                                        <td>' + each['creatBy'] + '</td>\n' +
                                            '                                        <td>' + each['remarks'] + '</td>\n' +
                                            '                                        <td style="text-align: center">\n' +
                                            '                                            <button type="button" class="btn btn-outline btn-default updateleverl" name="' + each['id'] + '" onclick="$(\'#addmySonPlanModal\').css(\'display\', \'block\');">\n' +
                                            '                                                <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>\n' +
                                            '                                            </button>\n' +
                                            '                                            <button type="button" class="btn btn-outline btn-default" id="checkleverl" onclick="$(\'#checkmySonPlanModal\').css(\'display\', \'block\');">\n' +
                                            '                                                <i class="glyphicon glyphicon-check" aria-hidden="true"></i>\n' +
                                            '                                            </button>\n' +
                                            '                                        </td>\n' +
                                            '                                    </tr>');


                                    }
                                });

                            });


                        } else {
                            $(this).find("#s1").slideUp();
                            aaa = false;
                        }
                    });
                });

            });


            /***********1.关闭所有弹窗*****************************/
            $(".close_all").click(function () {
                $("#mySonPlanModal").css('display', 'none');
                $("#addmySonPlanModal").css('display', 'none');
                $("#mySontaskModal").css('display', 'none');
                $("#updatemySontaskModal").css('display', 'none');
                $("#checkmySonPlanModal").css('display', 'none');
            });


            /***********2.点击任务添加，生成一个新的task任务详情***************************/
            //此处为添加一条Task任务详情，但放置位置不对，无法运行
            $.each($(".updateleverl"), function () {
                $(this).click(function () {
                    var renwuId = $(this).attr('name');
                    alert("222");
                    /***********2.点击任务添加，生成一个新的task任务详情***************************/
                    $(".update_level").click(function () {

                        /*$("#addmySonPlanModal").css('display', 'none');
                        var form = $("form");
                        var choosefile = form.find("#choosefile");
                        var filepath = choosefile.val().trim().substring(choosefile.val().lastIndexOf("\\") + 1);
                        var filename = filepath.split(".")[0];  //上传的文件名
                        var filetype = filepath.split(".")[1];  //上传文件的类型
                        var chooseimg = form.find("#chooseimg");
                        var imgpath = chooseimg.val().trim().substring(chooseimg.val().lastIndexOf("\\") + 1);
                        var imgname = imgpath.split(".")[0];  //上传的图标名
                        var filelimitsize = form.find("#filesize"); //文件限制大小
                        var before_submit = form.find("input[name='optionsRadios']:checked").val(); //是否可提前提交
                        var after_submit = form.find("input[name='optionsRadios1']:checked").val(); //是否可过时提交
                        var renwudetailremarks = form.find("#renwudetailremarks").val();
                        $.get("/teaching/insertRenwuDetail?renwuId="+renwuId,{filename,filetype,after_submit,before_submit,filelimitsize,renwudetailremarks},function (msg) {
                            window.location.href = "/jiaoxueplan_addjieduan.jsp?jihuaId=" + jihuaId;
                            console.info(msg['task']);
                        });*/

                    });
                });
            });

        });


        /***********3.关闭添加任务的弹窗***********/
        $(".update_task").click(function () {
            $("#updatemySontaskModal").css('display', 'none');
        });
        /***********4.关闭保存阶段的弹窗，追加一个新的阶段***********/
        $(".save_level").click(function () {
            $("#mySonPlanModal").css('display', 'none');
            var form = $("form");
            var planname = form.find("#planName").val();
            var start = form.find("#start").val();
            var end = form.find("#end").val();
            var remarks = form.find("#remarks").val();

            $.get("/teaching/insertJieduan", {jihuaId, planname, start, end, remarks}, function (msg) {
//                    window.location.href = "/teaching/viewJieduan";
                window.location.href = "/jiaoxueplan_addjieduan.jsp?jihuaId=" + jihuaId;
            });

        });


        /***********5.关闭保存子任务的弹窗，更新到数据库中***********/
        $(".save_sonstask").click(function () {
            $("#checkmySonPlanModal").css('display', 'none');
        });
        /***********6.关闭保存任务的弹窗，追加一排子任务表格***********/


        /***********7.新建一个阶段弹窗***********/
        $("#new_jieduan").click(function () {
            $("#mySonPlanModal").css('display', 'block');
        });

    </script>

    <script src="/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="/static/js/plugins/cropper/cropper.min.js"></script>
    <script src="/static/js/demo/form-advanced-demo.min.js"></script>
</div>
</body>
</html>
