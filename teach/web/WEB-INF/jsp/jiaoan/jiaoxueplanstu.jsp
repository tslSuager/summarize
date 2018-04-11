<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学分管理</title>
    <style>
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

    <%--<div style="margin-left: 10%;margin-top: 2%"><span><h4></h4></span></div>--%>

    <%--教学计划开始--%>
    <%--<div class="four steps" style="margin-left: 10%;margin-top: 2%;width: 80%;float: left;margin-right: 10%">
        <span class="active step" id="span1">起2月1日至2月7日</span>
        <span class="step"></span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" id="s1">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>小组任务提交状况<a href="" title="提交任务" style="margin-left: 300px">
                                <small>提交任务</small>
                            </a></h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>

                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>任务</th>
                                        <th>小组名</th>
                                        <th>任务下发日期</th>
                                        <th>审阅状态</th>
                                        <th>任务提交时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td>需求分析<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        </td>
                                        <td>二组</td>
                                        <td>2017.11.11</td>
                                        <td class="status"><i class="glyphicon glyphicon-check text-success">已阅</i>
                                        </td>
                                        <td>2018.3.26</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <%--<div class="four steps" id="twois" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span class="step"></span>
        <span class="active step" id="span2">起2月8日至2月14日</span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" id="s2">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>小组任务完成状况</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>

                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>任务</th>
                                        <th>小组名</th>
                                        <th>任务下发日期</th>
                                        <th>审阅状态</th>
                                        <th>任务提交时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td>设计原型<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        </td>
                                        <td>二组</td>
                                        <td>2017.11.11</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td>2018.3.26<a href="" title="提交任务" style="margin-left: 30px">
                                            <small>提交任务</small>
                                        </a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>--%>
    <%--
<div class="four steps" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
    <span class="step"></span>
    <span class=" step"></span>
    <span class="active step" id="span3">起2月15日至2月21日</span>
    <span class=" step"></span>
    <div style="margin-top: 0px;display: none" id="s3">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>学生任务完成状况</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>

                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>

                                    <th></th>
                                    <th>任务</th>
                                    <th>进度</th>
                                    <th>日期</th>
                                    <th>审阅状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="i-checks" checked name="input[]">
                                    </td>
                                    <td>设计数据库</td>
                                    </td>
                                    <td>75%</td>
                                    <td>2017.11.11</td>
                                    <td><a href="#"><i>
                                        <button class="demo3  fa fa-check text-navy"></button>
                                    </i></a>
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
<div class="four steps" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
    <span class=" step"></span>
    <span class=" step"></span>
    <span class=" step"></span>
    <span class="active step" id="span4">起2月22日至2月28日</span>
    <div style="margin-top: 0px;display: none" id="s4">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>学生任务完成状况</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>

                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>

                                    <th></th>
                                    <th>任务</th>
                                    <th>进度</th>
                                    <th>日期</th>
                                    <th>审阅状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="i-checks" checked name="input[]">
                                    </td>
                                    <td>编程测试</td>
                                    </td>
                                    <td>18%</td>
                                    <td>2017.11.11</td>
                                    <td><a href="#"><i>
                                        <button class="demo3  fa fa-check text-navy"></button>
                                    </i></a>
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
</div>--%>

    <%--教学计划完成--%>


    <jsp:include page="common/foot.jsp"/>
    <jsp:include page="common/head.jsp"/>
    <script>
        $(document).ready(function () {
            /*$("#span1").dblclick(
                function () {
                    if ($("#s1").css("display") == 'none') {
                        $("#s1").slideDown();
                    } else {
                        $("#s1").slideUp();
                    }
                });
            $("#span2").dblclick(
                function () {
                    if ($("#s2").css("display") == 'none') {
                        $("#s2").slideDown();
                    } else {
                        $("#s2").slideUp();
                    }
                });
            $("#span3").dblclick(
                function () {
                    if ($("#s3").css("display") == 'none') {
                        $("#s3").slideDown();
                    } else {
                        $("#s3").slideUp();
                    }
                });
            $("#span4").dblclick(
                function () {
                    if ($("#s4").css("display") == 'none') {
                        $("#s4").slideDown();
                    } else {
                        $("#s4").slideUp();
                    }
                });*/
            /**
             * 获取某个人的计划
             * @type {Array}
             */
            /*var url = location.search.split("userId=", 2);
            var userId = url[1];
            console.info(userId);*/
            $.get("/teaching/viewTeachingByUserId", {/*userId*/}, function (msg) {
                console.info(msg['teachingVOS']);
                $.each(msg['teachingVOS'], function (i, each) {
                    $(".Hui-article").append('<div style="margin-left: 10%;margin-top: 2%" class="' + each['id'] + '" id="banji"><span><h4>' + each['officeName'] + '</h4></span></div>');

                });

                /**
                 * 获取某个计划的所有阶段
                 * @type {*|jQuery}
                 */
                var jihuaId = $("#banji").attr("class");
                $.get("/teaching/viewJieduan", {jihuaId}, function (msg) {
                    console.info(msg['jieduans']);
                    var length = msg['jieduans'].length;
                    console.info(length);
                    $.each(msg['jieduans'], function (i, each) {
                        if (i === 0) {
                            $(".Hui-article").append('<div class="four steps" id="' + each['id'] + '" style="margin-left:10%;margin-top: 2%; width: 80%;float: left;margin-right: 10%"></div>');
                        } else {
                            $(".Hui-article").append('<div class="four steps" id="' + each['id'] + '" style="margin-left:10%;width: 80%;float: left;margin-right: 10%"></div>');
                        }
                        var steps = $(".steps:eq(" + i + ")");
                        for (var j = 0; j < length; j++) {
                            if (i == j) {
                                steps.append($("<span>").addClass("active step").html('起' + each['startTime'] + '至' + each['endTime']));
                            } else {
                                steps.append($("<span>").addClass("step"));
                            }
                        }
                        steps.append('<div style="margin-top: 0px;display: none" id="s1">\n' +
                            '            <div class="row">\n' +
                            '                <div class="col-sm-12">\n' +
                            '                    <div class="ibox float-e-margins">\n' +
                            '                        <div class="ibox-title">\n' +
                            '                            <h5>小组任务提交状况<a href="" title="提交任务" style="margin-left: 300px">\n' +
                            '                                <small>提交任务</small>\n' +
                            '                            </a></h5>\n' +
                            '                            <div class="ibox-tools">\n' +
                            '                                <a class="collapse-link">\n' +
                            '                                    <i class="fa fa-chevron-up"></i>\n' +
                            '                                </a>\n' +
                            '                                <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">\n' +
                            '                                    <i class="fa fa-wrench"></i>\n' +
                            '                                </a>\n' +
                            '\n' +
                            '                                <a class="close-link">\n' +
                            '                                    <i class="fa fa-times"></i>\n' +
                            '                                </a>\n' +
                            '                            </div>\n' +
                            '                        </div>\n' +
                            '                        <div class="ibox-content">\n' +
                            '                            <div class="table-responsive">\n' +
                            '                                <table class="table table-striped">\n' +
                            '                                    <thead>\n' +
                            '                                    <tr>\n' +
                            '                                        <th></th>\n' +
                            '                                        <th>任务</th>\n' +
                            '                                        <th>小组名</th>\n' +
                            '                                        <th>任务下发日期</th>\n' +
                            '                                        <th>任务提交人</th>\n' +
                            '                                        <th>任务提交时间</th>\n' +
                            '                                        <th>审阅状态</th>\n' +
                            '                                    </tr>\n' +
                            '                                    </thead>\n' +
                            '                                    <tbody id="tbody"></tbody>\n' +
                            '                                </table>\n' +
                            '                            </div>\n' +
                            '                        </div>\n' +
                            '                    </div>\n' +
                            '                </div>\n' +
                            '            </div>\n' +
                            '        </div>');


                    });
                    /**
                     * 获取每个阶段的双击展开事件
                     */
                    var aa = true;
                    $.each($(".steps"), function () {
                        $(this).dblclick(function () {
                            if ($(this).find("#s1").css("display") == 'none') {
                                $(this).find("#s1").slideDown();
                                var jieduanId = $(this).attr("id");
                                console.info(jieduanId);
                                $.get("/teaching/viewTaskResultByJieduanId", {jieduanId}, function (msg) {
                                    console.info(msg['taskResults']);
//                                    console.info($("tbody").attr("id"));
                                    $.each(msg['taskResults'], function (i, each) {
                                        if (aa) {
                                            $("#tbody").append('<tr class="addtd">\n' +
                                                '                                        <td>\n' +
                                                '                                            <input type="checkbox" checked class="i-checks" name="input[]">\n' +
                                                '                                        </td>\n' +
                                                '                                        <td>' + each['renwuName'] + '<a href="" title="模版下载" style="margin-left: 30px">\n' +
                                                '                                            <small>模版下载</small>\n' +
                                                '                                        </a></td>\n' +
                                                '                                        </td>\n' +
                                                '                                        <td>' + each['groupName'] + '</td>\n' +
                                                '                                        <td>' + each['taskCreateTime'] + '</td>\n' +
                                                '                                    </tr>');
                                            var addtd = $(".addtd:eq(" + i + ")");
                                            if (each['checkStatus'] == 1) {
                                                addtd.append('<td>' + each['userId'] + '</td><td>' + each['submitTime'] + '</td><td class="status"><i class="glyphicon glyphicon-check text-success">已阅</i></td>');
                                                var status = $(".status:eq(" + i + ")");
                                                if (each['checkResult'] == 1) {
                                                    status.append('<button class="btn btn-primary btn-xs " type="button">优 </button>');
                                                }
                                                if (each['checkResult'] == 2) {
                                                    status.append('<button class="btn btn-success btn-xs " type="button">良 </button>');
                                                }
                                                if (each['checkResult'] == 3) {
                                                    status.append('<button class="btn btn-info btn-xs " type="button">中 </button>');
                                                }
                                                if (each['checkResult'] == 4) {
                                                    status.append('<button class="btn btn-warning btn-xs " type="button">及格 </button>');
                                                }
                                                if (each['checkResult'] == 5) {
                                                    status.append('<button class="btn btn-danger btn-xs " type="button">不及格 </button>');
                                                }
                                            }
                                            if (each['checkStatus'] == 0) {
                                                addtd.append('<td>' + each['userId'] + '</td><td>' + each['submitTime'] + '</td><td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i></td>');
                                            }
                                            addtd.find(".btn-xs").click(function () {
                                                layer.confirm("" + each['checkMarks2'] + "",
                                                    {
                                                        title: '成绩备注',
                                                        area: ['400px', '300px'],
                                                        yes: function (index) {
                                                            layer.close(index);
                                                        },
                                                        btn2:function (index) {
                                                            layer.close(index);
                                                        }
                                                    });
                                            });
                                        }

                                    });
                                })
                            } else {
                                $(this).find("#s1").slideUp();
                                aa = false;
                            }
                        });
                    });
                });
            });
        });
    </script>
</div>
</body>
</html>