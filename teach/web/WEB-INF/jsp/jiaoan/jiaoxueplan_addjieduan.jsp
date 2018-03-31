<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<html>
<head>
    <title>计划->阶段内容</title>
    <style>
        #datepicker {z-index:2500 !important;}

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
    <jsp:include page="common/head.jsp"/>
    <jsp:include page="common/foot.jsp"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">

</head>
<body>
<div class="Hui-article">
<%--添加阶段的按钮--%>
    <div id = "createlevelbtn" name="${jihuaId}" class="bars pull-left" style="margin-left: 10%;margin-top: 50px;width: 80%;float: left;margin-right: 10%">
        <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
            <button type="button" id="new_jieduan" class="btn btn-outline btn-default">
                <i class="fa fa-plus"></i>
            </button>
        </div>
    </div>

<%--要添加的整个阶段的大框架--%>
    <div class="four steps" id="createlevel" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span id="span_dbclick" class="active step">阶段:</span>
        <div style="margin-top: 0px;display: none" id="s1">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>任务</h5>
                            <div class="ibox-tools">
                                <%--添加一个任务--%>
                                <button type="button" id="new_task" class="btn btn-outline btn-default" onclick="$('#mySontaskModal').css('display', 'block');">
                                    <i class="fa fa-plus"></i>
                                </button>
                                <%--修改任务内容--%>
                                <td style="text-align: center;width: 220px">
                                    <button type="button" class="btn btn-outline btn-default" id="updatetask" onclick="$('#updatemySontaskModal').css('display', 'block');">
                                        <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                    </button>
                                </td>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <%--关键词搜索--%>
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary">搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            <%--新建任务内容的表格横排显示--%>
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
                                    <%--添加任务--%>
                                    <tbody id="addtbody">

                                    <%--追加到后面的详细任务--%>
                                    <%--<tr>
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
                                            <button type="button" class="btn btn-outline btn-default" id="updateleverl" onclick="$('#updatemySonPlanModal').css('display', 'block');">
                                                <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                            </button>
                                            <button type="button" class="btn btn-outline btn-default" id="checkleverl" onclick="$('#checkmySonPlanModal').css('display', 'block');">
                                                <i class="glyphicon glyphicon-check" aria-hidden="true"></i>
                                            </button>
                                        </td>
                                    </tr>--%>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                                <input type="text" class="form-control" style="width: 320px" name="planname" id="planName">
                            </div>
                        </div>

                        <div class="" id="data_5" style="margin: 10px auto;width: 600px;">
                            <div class="input-daterange input-group" id="datepicker">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                                <input type="text" class="form-control" name="start" value="2017-11-11"
                                       style="width: 320px" id="start"/>
                                <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间 :</label>
                                <input type="text" class="form-control" name="end"  value="2017-11-17"
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
    <div class="modal inmodal in" id="updatemySonPlanModal" tabindex="-1" role="dialog" aria-hidden="true"
             style="display: none; padding-right: 6px;">
            <div class="modal-dialog">
                <div class="modal-content animated bounceInRight">
                    <div class="modal-header">
                        <button type="button" class="close_all close" data-dismiss="modal"><span
                                aria-hidden="true">×</span><span class="sr-only">关闭</span>
                        </button>
                        <h4 class="modal-title">添加子任务</h4>
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
                                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M) :</label>
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
                                    <input class="form-control layer-date" style="width: 320px">
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
                        <button type="button" class="btn btn-primary update_level">添加</button>
                    </div>
                </div>
            </div>
        </div>
    <%--修改子任务task表弹出框结束--%>

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
                                <label class="col-sm-3 text-center control-label" style="margin-top: 15px">结束时间 :</label>
                                <input type="text" class="form-control" name="end"  value="2017-11-17"
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
                        <button type="button" class="close_all close" data-dismiss="modal"><span
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
                        <button type="button" class="close_all close" data-dismiss="modal"><span
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
                                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M) :</label>
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
    <jsp:include page="common/foot.jsp"/>
    <jsp:include page="common/head.jsp"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $.get("/teaching/viewJieduan",{},function (msg) {
                window.location.href="/page/jiaoan/jiaoxueplan_addjieduan";
                $.each(msg,function (i,each) {
                    $("#createlevelbtn").append('<div class="four steps" id="createlevel" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">\n' +
                        '        <span id="span_dbclick" class="active step">阶段:</span>\n' +
                        '        <div style="margin-top: 0px;display: none" id="s1">\n' +
                        '            <div class="row">\n' +
                        '                <div class="col-sm-12">\n' +
                        '                    <div class="ibox float-e-margins">\n' +
                        '                        <div class="ibox-title">\n' +
                        '                            <h5>任务</h5>\n' +
                        '                            <div class="ibox-tools">\n' +
                        '                                <%--添加一个任务--%>\n' +
                        '                                <button type="button" id="new_task" class="btn btn-outline btn-default" onclick="$(\'#mySontaskModal\').css(\'display\', \'block\');">\n' +
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
            })


/***********1.关闭所有弹窗*****************************/
            $(".close_all").click(function () {
                $("#mySonPlanModal").css('display', 'none');
                $("#updatemySonPlanModal").css('display', 'none');
                $("#mySontaskModal").css('display', 'none');
                $("#updatemySontaskModal").css('display', 'none');
                $("#checkmySonPlanModal").css('display', 'none');
            });
/***********2.保存保存阶段弹窗，生成一个新的阶段***************************/
            var count =2;
            var createtableid = null;
            $(".update_level").click(function () {
                $("#updatemySonPlanModal").css('display', 'none');
            });
/***********3.关闭添加任务的弹窗***********/
            $(".update_task").click(function () {
                $("#updatemySontaskModal").css('display', 'none');
            });
/***********4.关闭保存阶段的弹窗，追加一个新的阶段***********/
            $(".save_level").click(function () {
                $("#mySonPlanModal").css('display', 'none');
                var createid = "阶段" + count;
                createtableid = "任务" +count;
                count++;
                var form = $("form");
                var planname = form.find("#planName").val();
                var start = form.find("#start").val();
                var end = form.find("#end").val();
                var remarks = form.find("#remarks").val();
                var jihuaId = $("#createlevelbtn").attr("name");
                $.get("/teaching/insertJieduan",{jihuaId,planname,start,end,remarks},function (msg) {

                });
                });

                $("#createlevel").append(" <div class=\"four steps\" style=\"width: 100%;float: left;margin-right: 10%\">\n" +
                    "        <span id=\"span_dbclick\" class=\"active step\" ondblclick=\"\n" +
                    "            if($('#"+createid+"').css('display')=='none'){\n" +
                    "                $('#"+createid+"').slideDown();\n" +
                    "            }else{\n" +
                    "                $('#"+createid+"').slideUp();\n" +
                    "            }\n" +
                    "        \">"+createid+"</span>\n" +
                    "        <div style=\"margin-top: 0px;display: none\" id=\""+createid+"\">\n" +

                    "            <div class=\"row\">\n" +
                    "                <div class=\"col-sm-12\">\n" +
                    "                    <div class=\"ibox float-e-margins\">\n" +
                    "                        <div class=\"ibox-title\">\n" +
                    "                            <h5>任务</h5>\n" +
                    "                            <div class=\"ibox-tools\">\n" +
                    "                                <button type=\"button\" id=\"new_task\" class=\"btn btn-outline btn-default\" onclick=\"\n" +
                    "                                    $('#mySontaskModal').css('display', 'block');\n" +
                    "                                \">\n" +
                    "                                    <i class=\"fa fa-plus\"></i>\n" +
                    "                                </button>\n" +
                    "                                <a class=\"collapse-link\"><i class=\"fa fa-chevron-up\"></i></a>\n" +
                    "                                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"table_basic.html#\"><i\n" +
                    "                                        class=\"fa fa-wrench\"></i></a>\n" +
                    "                                <a class=\"close-link\"><i class=\"fa fa-times\"></i></a>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"ibox-content\">\n" +
                    "                            <div class=\"row\">\n" +
                    "                                <div class=\"col-sm-3\">\n" +
                    "                                    <div class=\"input-group\">\n" +
                    "                                        <input type=\"text\" placeholder=\"请输入关键词\" class=\"input-sm form-control\"> <span\n" +
                    "                                            class=\"input-group-btn\">\n" +
                    "                                        <button type=\"button\" class=\"btn btn-sm btn-primary\"> 搜索</button> </span>\n" +
                    "\n" +
                    "                                    </div>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "\n" +
                    "                            <div class=\"table-responsive\">\n" +
                    "                                <table id=\""+createtableid+"\"class=\"table table-striped\">\n" +
                    "                                    <thead>\n" +
                    "                                    <tr>\n" +
                    "                                        <th></th>\n" +
                    "                                        <th>任务描述</th>\n" +
                    "                                        <th>开始时间</th>\n" +
                    "                                        <th>结束时间</th>\n" +
                    "                                        <th>文件名</th>\n" +
                    "                                        <th>创建时间</th>\n" +
                    "                                        <th>创建人</th>\n" +
                    "                                        <th>备注说明</th>\n" +
                    "                                    </tr>\n" +
                    "                                    </thead>\n" +
                    "                                    //添加任务\n" +
                    "                                    <tbody >\n" +
                    "                                    </tbody>\n" +
                    "                                </table>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "        </div>\n" +
                    "    </div>");
            });
/***********5.关闭保存子任务的弹窗，更新到数据库中***********/
            $(".save_sonstask").click(function () {
                $("#checkmySonPlanModal").css('display', 'none');
            });
/***********6.关闭保存任务的弹窗，追加一排子任务表格***********/
            var taskcount = 2;
            $(".save_task").click(function () {
                $("#mySontaskModal").css('display', 'none');
                var mytask = "mission" + taskcount;
                taskcount++;
                $.get("/teaching/insertRenwu",{},function (msg) {
                    $.each(msg,function (i,each) {

                    })
                })
                /*$("#addtable").append("<tbody id=\"addtbody\">\n" +
                    "                                    <tr>\n" +
                    "                                        <td>\n" +
                    "                                            <input type=\"checkbox\" checked class=\"i-checks\" name=\"input[]\">\n" +
                    "                                        </td>\n" +
                    "                                        <td id=\"s2_a1\">需求分析</td>\n" +
                    "                                        <td>2017.11.11</td>\n" +
                    "                                        <td>2017.11.11</td>\n" +
                    "                                        <td>xxx.txt</td>\n" +
                    "                                        <td>2017.11.11</td>\n" +
                    "                                        <td>xxx</td>\n" +
                    "                                        <td>需求分析</td>\n" +
                    "                                        <%--子任务表操作--%>\n" +
                    "                                        <td style=\"text-align: center;width: 220px\">\n" +
                    "                                            <button type=\"button\" class=\"btn btn-outline btn-default\" id=\"updateleverl\" onclick=\"$('#updatemySonPlanModal').css('display', 'block');\">\n" +
                    "                                                <i class=\"glyphicon glyphicon-edit\" aria-hidden=\"true\"></i>\n" +
                    "                                            </button>\n" +
                    "                                            <button type=\"button\" class=\"btn btn-outline btn-default\" id=\"checkleverl\" onclick=\"$('#checkmySonPlanModal').css('display', 'block');\">\n" +
                    "                                                <i class=\"glyphicon glyphicon-check\" aria-hidden=\"true\"></i>\n" +
                    "                                            </button>\n" +
                    "                                        </td>\n" +
                    "                                    </tr>\n" +
                    "                                    </tbody>");
            });*/
/***********7.新建一个阶段弹窗***********/
            $("#new_jieduan").click(function () {
                $("#mySonPlanModal").css('display', 'block');
            });
        });

        /**
         * 双击阶段展开详细任务
         */
        var aaa = true;
        $(function () {
            $(".step").dblclick(function () {
                if($('#s1').css('display')=='none'){
                    $('#s1').slideDown();
                    $.each($('.steps'),function() {
                        var jieduanId = $(this).attr('name');
                        console.info(jieduanId);
                        $.get("/teaching/viewRenwu",{jieduanId},function (msg) {
                            $.each(msg,function (i,each) {
                                if(aaa){
                                    $("#addtbody").append(' <tr>\n' +
                                        '                                        <td>\n' +
                                        '                                            <input type="checkbox" checked class="i-checks" name="input[]">\n' +
                                        '                                        </td>\n' +
                                        '                                        <td>'+each['planname']+'</td>\n' +
                                        '                                        <td>'+each['startTime']+'</td>\n' +
                                        '                                        <td>'+each['endTime']+'</td>\n' +
                                        '                                        <td>'+each['creatTime']+'</td>\n' +
                                        '                                        <td>'+each['creatBy']+'</td>\n' +
                                        '                                        <td>'+each['remarks']+'</td>\n' +
                                        '                                        <%--子任务表操作--%>\n' +
                                        '                                        <td style="text-align: center">\n' +
                                        '                                            <button type="button" class="btn btn-outline btn-default" id="updateleverl" onclick="$(\'#updatemySonPlanModal\').css(\'display\', \'block\');">\n' +
                                        '                                                <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>\n' +
                                        '                                            </button>\n' +
                                        '                                            <button type="button" class="btn btn-outline btn-default" id="checkleverl" onclick="$(\'#checkmySonPlanModal\').css(\'display\', \'block\');">\n' +
                                        '                                                <i class="glyphicon glyphicon-check" aria-hidden="true"></i>\n' +
                                        '                                            </button>\n' +
                                        '                                        </td>\n' +
                                        '                                    </tr>')
                                }
                            })
                        })
                    })
                }else{
                    $('#s1').slideUp();
                    aaa = false;
                }
            })
        })



    </script>

    <script src="/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="/static/js/plugins/cropper/cropper.min.js"></script>
    <script src="/static/js/demo/form-advanced-demo.min.js"></script>
</div>
</body>
</html>
