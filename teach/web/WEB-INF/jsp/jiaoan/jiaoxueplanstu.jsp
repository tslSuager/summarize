<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="four steps" style="margin-left: 10%;margin-top: 50px;width: 80%;float: left;margin-right: 10%">
        <span class="active step" id="span1">起2月1日至2月7日</span>
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
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td >需求分析</td>
                                        </td>
                                        <td>20%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
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

    <div class="four steps" id="twois" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
        <span class="step"></span>
        <span class="active step" id="span2">起2月8日至2月14日</span>
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
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td>设计原型</td>
                                        </td>
                                        <td>40%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>

                                   <%-- <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试</td>
                                        </td>
                                        <td>18%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
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
                                    <%--<tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td >需求分析</td>
                                        </td>
                                        <td>20%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>--%>
                                    <%--<tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计原型</td>
                                        </td>
                                        <td>40%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>--%>
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
                                    <%--<tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试</td>
                                        </td>
                                        <td>18%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
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
                                   <%-- <tr>
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td >需求分析</td>
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
                                        </td>
                                        <td>75%</td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>--%>
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
    </div>
    <jsp:include page="common/foot.jsp"/>
    <jsp:include page="common/head.jsp"/>
    <script>
        $("#span1").dblclick(
            function(){
                if($("#s1").css("display")=='none'){
                    $("#s1").slideDown();
                }else{
                    $("#s1").slideUp();
                }
            });
        $("#span2").dblclick(
            function(){
                if($("#s2").css("display")=='none'){
                    $("#s2").slideDown();
                }else{
                    $("#s2").slideUp();
                }
            });
        $("#span3").dblclick(
            function(){
                if($("#s3").css("display")=='none'){
                    $("#s3").slideDown();
                }else{
                    $("#s3").slideUp();
                }
            });
        $("#span4").dblclick(
            function(){
                if($("#s4").css("display")=='none'){
                    $("#s4").slideDown();
                }else{
                    $("#s4").slideUp();
                }
            });
    </script>
</div>
</body>
</html>