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

        .btn-xs {
            margin-right: 5px;
        }
    </style>
    <jsp:include page="common/head.jsp"/>
    <jsp:include page="common/foot.jsp"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">

</head>
<body>
<div class="Hui-article">
    <%--<div style="margin-left: 200px;margin-top: 30px"><span><h4>02班</h4></span></div>--%>
    <div style="margin-left: 180px">
        <a href="#" id="datadel">批量删除</a>
        <a href="#">批量下载</a>
        <a href="#" class="pingding_piliang">批量评定</a>
    </div>
    <%--<div class="four steps" style="margin-left: 10%;margin-top: 30px;width: 80%;float: left;margin-right: 10%">
        <span id="span1" class="active step">起2月1日至2月7日</span>
        <span class="step"></span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" id="s1">
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
                            <div class="row">


                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>

                                        <th></th>
                                        <th>任务名</th>
                                        <th>小组</th>
                                        <th>提交时间</th>
                                        <th>提交人</th>
                                        <th>审阅状态</th>
                                        <th>成绩评定</th>
                                    </tr>
                                    </thead>
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
        <span id="span2" class="active step test">起2月8日至2月14日</span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" id="s2">
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
                            <div class="row">


                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>

                                        <th></th>
                                        <th>任务名</th>
                                        <th>进度</th>
                                        <th>发布日期</th>
                                        <th>结束日期</th>
                                        <th>审阅状态</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td id="s2_a1">需求分析</td>
                                        <td><span class="pie">0.52/1.561</span>
                                        </td>
                                        <td>2017.11.11</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tbody id="s2_t1" style="display: none">
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>二组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>二组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    </tbody>


                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td id="s2_a2">设计原型</td>
                                        <td><span class="pie">6,9</span>
                                        </td>
                                        <td>40%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>

                                    <tbody id="s2_t2" style="display: none">
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>二组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>二组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    </tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计数据库</td>
                                        <td><span class="pie">3,1</span>
                                        </td>
                                        <td>75%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试</td>
                                        <td><span class="pie">4,9</span>
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
    </div>
    <div class="four steps" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span class="step"></span>
        <span class=" step"></span>
        <span class="active step " id="span3">起2月15日至2月21日</span>
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
                            <div class="row">

                                <div class="col-sm-4 m-b-xs">
                                    <div data-toggle="buttons" class="btn-group">
                                        <label class="btn btn-sm btn-white active">
                                            <input type="radio" id="option1" name="options">一班</label>
                                        <label class="btn btn-sm btn-white ">
                                            <input type="radio" id="option2" name="options">二班</label>
                                        <label class="btn btn-sm btn-white">
                                            <input type="radio" id="option3" name="options">三班</label>
                                    </div>
                                </div>
                                <div class="col-sm-5 m-b-xs">
                                    <select class="input-sm form-control input-s-sm inline"
                                            style="margin-bottom: 10px;padding-bottom: 5px;height: 37px">
                                        <option value="0">一组</option>
                                        <option value="1">二组</option>
                                        <option value="2">三组</option>
                                        <option value="3">四组</option>
                                    </select>
                                </div>

                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>

                                        <th></th>
                                        <th>任务</th>
                                        <th>进度</th>
                                        <th>已完成</th>
                                        <th>日期</th>
                                        <th>审阅状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td><a href="#">需求分析</a></td>

                                        <td><span class="pie">0.52/1.561</span>
                                        </td>
                                        <td>20%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                        </td>

                                    </tr>


                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计原型</td>
                                        <td><span class="pie">6,9</span>
                                        </td>
                                        <td>40%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计数据库</td>
                                        <td><span class="pie">3,1</span>
                                        </td>
                                        <td>75%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试</td>
                                        <td><span class="pie">4,9</span>
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
    </div>

    <div class="four steps" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span class=" step"></span>
        <span class=" step"></span>
        <span class=" step"></span>
        <span class="active step " id="span4">起2月22日至2月28日</span>
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
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                                            class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>任务</th>
                                        <th>进度</th>
                                        <th>已完成</th>
                                        <th>日期</th>
                                        <th>审阅状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td><a href="/page/yemian1">需求分析</a></td>
                                        <td><span class="pie">0.52/1.561</span>
                                        </td>
                                        <td>20%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计原型</td>
                                        <td><span class="pie">6,9</span>
                                        </td>
                                        <td>40%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计数据库</td>
                                        <td><span class="pie">3,1</span>
                                        </td>
                                        <td>75%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试</td>
                                        <td><span class="pie">4,9</span>
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
    <jsp:include page="common/foot.jsp"/>
    <jsp:include page="common/head.jsp"/>

    <script>
        $(document).ready(function () {


            $("#span1").dblclick(
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
            $("#s1_a1").dblclick(
                function () {
                    if ($("#s1_t1").css("display") == 'none') {
                        $("#s1_t1").slideDown();
                    } else {
                        $("#s1_t1").slideUp();
                    }
                });
            $("#s1_a2").dblclick(
                function () {
                    if ($("#s1_t2").css("display") == 'none') {
                        $("#s1_t2").slideDown();
                    } else {
                        $("#s1_t2").slideUp();
                    }
                });

        });

        /*批量删除*/
        // 全选
        $("#allChk").click(function () {
            $("input[name='subChk']").prop("checked", this.checked);
//        alert("AA");
        });
        // 单选
        var subChk = $("input[name='subChk']")
        subChk.click(function () {
            $("#allChk").prop("checked", subChk.length == subChk.filter(":checked").length ? true : false);
        });
        /* 批量删除 */
        $("#datadel").click(function () {
// 判断是否至少选择一项
            var checkedNum = $("input[name='subChk']:checked").length;
            if (checkedNum == 0) {
                alert("请选择至少一项！");
                return;
            }
// 批量选择
            if (confirm("确定要删除所选项目？")) {
                var checkedList = new Array();
                $("input[name='subChk']:checked").each(function () {
                    checkedList.push($(this).val());
                });
                /*$.ajax({
                    type: "POST",
                    url: "deletemore",
                    data: {'delitems':checkedList.toString()},
                    success: function(result) {
                        $("[name ='subChk']:checkbox").attr("checked", false);
                        window.location.reload();
                    }
                });*/
                $("[name ='subChk']:checkbox").attr("checked", false);
                window.location.reload();
            }
        });

        var aa = true;

        function dengji_pingding(obj, id) {
            if (aa) {
                var i = $("<i>").addClass("fa fa-check text-navy demo3").html("已阅");

                if ($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").length) {
                    if ($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").html() == ($(obj)).html()) {
                        return
                    } else {
                        $(obj).parents("div").parents("td").parents("tr").find(".status").find(":button").remove();
                        $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
                    }
                } else {
                    $(obj).parents("div").parents("td").parents("tr").find(".status").find("i").remove();
                    $(obj).parents("div").parents("td").parents("tr").find(".status").append(i);
                    $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
                }
                ;
            }


            layer.open({
                type: 2,
                title: '成绩备注' + '&nbsp;&nbsp;&nbsp;&nbsp;' + '成绩为:' + $(obj).clone().html(),
                content: '/beizhu_chengji.jsp',
                btn: ['确定', '取消'],
                yes: function (index) {
                    layer.close(index);
                },
                btn2: function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['600px', '300px']
            })
        }

        $(".pingding_piliang").click(function () {
            layer.open({
                type: 2,
                title: '批量评定成绩',
                content: '/beizhu_chengji_piliang.jsp',
                btn: ['确定', '取消'],
                yes: function (index) {
                    layer.close(index);
                },
                btn2: function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['600px', '300px']
            })
        });


        /**
         * 获取某个人的计划
         * /page/jiaoan/jiaoxueplan?jihuaId=1&officeName=2
         * @type {Array}
         */
        var url = location.search.split("&", 2);
        var jihuaId = url[0].substr(9, 1);
        var officeName = url[1].substr(11);
        var o2 = decodeURI(officeName);
        $.get("/teaching/viewJieduanByTeacher", {jihuaId}, function (msg) {
            console.info(msg['jieduans']);
            $(".Hui-article").append('<div style="margin-left: 10%;margin-top: 2%" id="banji"><span><h4>' + o2 + '</h4></span></div>');
            $.each(msg['jieduans'], function (i, each) {
                if (i === 0) {
                    $(".Hui-article").append('<div class="four steps" id="' + each['id'] + '" style="margin-left:10%;margin-top: 2%; width: 80%;float: left;margin-right: 10%"></div>');
                } else {
                    $(".Hui-article").append('<div class="four steps" id="' + each['id'] + '" style="margin-left:10%;width: 80%;float: left;margin-right: 10%"></div>');
                }
                var steps = $(".steps:eq(" + i + ")");
                for (var j = 0; j < msg['jieduans'].length; j++) {
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
                    '                            <h5>学生任务完成状况</h5>\n' +
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
                    '\n' +
                    '\n' +
                    '                        <div class="ibox-content">\n' +
                    '                            <div class="row">\n' +
                    '\n' +
                    '\n' +
                    '                                <div class="col-sm-3">\n' +
                    '                                    <div class="input-group">\n' +
                    '                                        <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span\n' +
                    '                                            class="input-group-btn">\n' +
                    '                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>\n' +
                    '                                    </div>\n' +
                    '                                </div>\n' +
                    '                            </div>\n' +
                    '                            <div class="table-responsive">\n' +
                    '                                <table class="table table-striped">\n' +
                    '                                    <thead>\n' +
                    '                                    <tr>\n' +
                    '\n' +
                    '                                        <th></th>\n' +
                    '                                        <th>任务名</th>\n' +
                    '                                        <th>小组</th>\n' +
                    '                                        <th>提交时间</th>\n' +
                    '                                        <th>提交人</th>\n' +
                    '                                        <th>审阅状态</th>\n' +
                    '                                        <th>成绩评定</th>\n' +
                    '                                    </tr>\n' +
                    '                                    </thead>\n' +
                    '                                    <tbody id="tbody">\n' +
                    '                                    </tbody>\n' +
                    '                                </table>\n' +
                    '                            </div>\n' +
                    '\n' +
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
                        $.get("/teaching/viewRenwu", {jieduanId}, function (renwus) {
                            console.info(renwus);
                            $.each(renwus, function (i, each) {
                                if (aa) {
                                    $("#tbody").append('<tr>\n' +
                                        '                                        <td>\n' +
                                        '                                            <input type="checkbox" class="i-checks" name="allChk" id="allChk">\n' +
                                        '                                        </td>\n' +
                                        '                                        <td class="s1_a1">' + each['planname'] + '<a href="" title="模版下载" style="margin-left: 30px">\n' +
                                        '                                            <small>模版下载</small>\n' +
                                        '                                        </a></td>\n' +
                                        '                                        <td></td>\n' +
                                        '                                        <td style="color: lightskyblue">\n' +
                                        '                                            <small>规定时间:' + each['endTime'] + '</small>\n' +
                                        '                                        </td>\n' +
                                        '                                        <td></td>\n' +
                                        '                                        <td></td>\n' +
                                        '                                        <td></td>\n' +
                                        '                                    </tr>');
                                }
                            });

                            /*$.each($(".s1_a1"),function () {
                                $(this).dblclick(function () {
                                    if ($(this).find(".s1_t1").css("display") == 'none') {
                                        $(this).find(".s1_t1").slideDown();
                                    }
                                    else {
                                        $(this).find(".s1_t1").slideUp();
                                    }
                                });
                            });*/

                            $.get("/teaching/viewTaskResultByJieduanId", {jieduanId}, function (msg) {
                                console.info(msg['taskResults']);
                                $.each(msg['taskResults'], function (i, each) {
                                    $("#tbody").after('<tbody class="s1_t1" style="display: none">\n' +
                                        '                                    <tr>\n' +
                                        '                                        <td>\n' +
                                        '                                            <input type="checkbox" class="i-checks" name="subChk">\n' +
                                        '                                        </td>\n' +
                                        '                                        <td></td>\n' +
                                        '                                        <td>' + each['groupName'] + '</td>\n' +
                                        '                                        <td>\n' +
                                        '                                            <small>' + each['submitTime'] + '<a href="" style="margin-left: 10px">下载</a></small>\n' +
                                        '                                        </td>\n' +
                                        '                                        <td>' + each['userId'] + '</td>\n' +
                                        '                                    </tr>');

                                    var s1_t1 = $(".s1_t1:eq(" + i + ")");
                                    if (each['checkStatus'] == 1) {
                                        s1_t1.append('<td class="status"><i class="glyphicon glyphicon-check text-success">已阅</i></td>');
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
                                    } else if (each['checkStatus'] == 0){
                                        s1_t1.append('<td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i></td>');
                                    }

                                    s1_t1.append('<td class="btn-groups">\n' +
                                        '                                            <div class="btn-group">\n' +
                                        '                                                <button class="btn btn-primary btn-xs " type="button"\n' +
                                        '                                                        onClick="dengji_pingding(this,\'01\')" href="javascript:;">优\n' +
                                        '                                                </button>\n' +
                                        '                                                <button class="btn btn-success btn-xs " type="button"\n' +
                                        '                                                        onClick="dengji_pingding(this,\'02\')" href="javascript:;">良\n' +
                                        '                                                </button>\n' +
                                        '                                                <button class="btn btn-info btn-xs " type="button"\n' +
                                        '                                                        onClick="dengji_pingding(this,\'03\')" href="javascript:;">中\n' +
                                        '                                                </button>\n' +
                                        '                                                <button class="btn btn-warning btn-xs " type="button"\n' +
                                        '                                                        onClick="dengji_pingding(this,\'04\')" href="javascript:;">及格\n' +
                                        '                                                </button>\n' +
                                        '                                                <button class="btn btn-danger btn-xs " type="button"\n' +
                                        '                                                        onClick="dengji_pingding(this,\'05\')" href="javascript:;">不及格\n' +
                                        '                                                </button>\n' +
                                        '                                            </div>\n' +
                                        '                                        </td>');

                                });

                            });

                        });
                    } else {
                        $(this).find("#s1").slideUp();
                        aa = false;
                    }

                });
            });

        });
    </script>
</div>
</body>
</html>
