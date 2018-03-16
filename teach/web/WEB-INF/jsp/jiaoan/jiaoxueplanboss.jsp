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
        <%--<span class="active step" onclick="hidetext()" ondblclick="showtext()">起2月1日至2月7日</span>--%>
        <span  id="span1" class="active step">起2月1日至2月7日</span>
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

                                <%-- <div class="col-sm-4 m-b-xs">
                                     <div data-toggle="buttons" class="btn-group">
                                         <label class="btn btn-sm btn-white active">
                                             <input type="radio" id="option1" name="options">一班</label>
                                         <label class="btn btn-sm btn-white ">
                                             <input type="radio" id="option2" name="options">二班</label>
                                         <label class="btn btn-sm btn-white">
                                             <input type="radio" id="option3" name="options">三班</label>
                                     </div>
                                 </div>--%>
                                <%-- <div class="col-sm-5 m-b-xs">
                                     <select class="input-sm form-control input-s-sm inline"
                                             style="margin-bottom: 10px;padding-bottom: 5px;height: 37px">
                                         <option value="0">一组</option>
                                         <option value="1">二组</option>
                                         <option value="2">三组</option>
                                         <option value="3">四组</option>
                                     </select>
                                 </div>--%>

                                <div class="col-sm-3">
                                    <div class="input-group" >
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
                                        <th>班级</th>
                                        <th>小组</th>
                                        <th>结束日期</th>
                                        <th>审阅状态</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr >
                                        <td>
                                            <input type="checkbox" checked class="i-checks" name="input[]">
                                        </td>
                                        <td id="s1_a1">需求分析</td>
                                        <td></td>
                                        <td></td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i class=" ">
                                            <button class="  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>
                                    <tbody id="s1_t1" style="display: none">
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>二组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>二班</td>
                                        <td>二组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    </tbody>


                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td id="s1_a2">设计原型</td>
                                        <td></td>
                                        <td></td>
                                        <td>2017.11.11</td>
                                        <td><a href="#"><i>
                                            <button class="demo3  fa fa-check text-navy"></button>
                                        </i></a>
                                        </td>
                                    </tr>

                                    <tbody id="s1_t2" style="display: none">
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>二组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class=" ">
                                            <button class="demo3  glyphicon glyphicon-remove text-navy"></button>
                                        </i></a>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>2017.2.2</td>

                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>二班</td>
                                        <td>二组</td>
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

    <div class="four steps" id="twois" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
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
                                    <tr >
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
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr >
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
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
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
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>二组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>三组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>一班</td>
                                        <td>四组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>二班</td>
                                        <td>一组</td>
                                        <td>80%</td>
                                        <td>2017.2.2</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                    </tr>
                                    <tr >
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
        <span class="active step "id="span3">起2月15日至2月21日</span>
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
                                        <td><a href="#" >需求分析</a></td>

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
    </div>
    <jsp:include page="common/foot.jsp"/>
    <jsp:include page="common/head.jsp"/>

    <script>
        $(".demo3").click(function () {
            swal({
                title: "审阅通过",
                text: "霸气一点就通过了！！！",
                type: "success",
                class: "fa fa-check"
            })
        });

    </script>
    <script>
        $(document).ready(function () {
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
            $("#s1_a1").dblclick(
                function(){
                    if($("#s1_t1").css("display")=='none'){
                        $("#s1_t1").slideDown();
                    }else{
                        $("#s1_t1").slideUp();
                    }
                });
            $("#s1_a2").dblclick(
                function(){
                    if($("#s1_t2").css("display")=='none'){
                        $("#s1_t2").slideDown();
                    }else{
                        $("#s1_t2").slideUp();
                    }
                });

        })
    </script>
</div>
</body>
</html>
