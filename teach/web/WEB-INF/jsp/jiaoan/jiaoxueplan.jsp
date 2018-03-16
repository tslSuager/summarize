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

        .btn-xs{
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
    <div style="margin-left: 200px;margin-top: 30px"><span><h4>02班</h4></span></div>
    <div style="margin-left: 180px">
        <a href="#" id="datadel">批量删除</a>
        <a href="#">批量下载</a>
        <a href="#" class="pingding_piliang">批量评定</a>
    </div>
    <div class="four steps" style="margin-left: 10%;margin-top: 30px;width: 80%;float: left;margin-right: 10%">
        <%--<span class="active step" onclick="hidetext()" ondblclick="showtext()">起2月1日至2月7日</span>--%>
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

<%--
                        <div class="modal-content animated bounceInRight">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                                </button>
                                <i class="fa fa-laptop modal-icon"></i>
                                <h4 class="modal-title">窗口标题</h4>
                                <small class="font-bold">这里可以显示副标题。
                                </small></div><small class="font-bold">
                            <div class="modal-body">
                                <p><strong>H+</strong>
                                    是一个完全响应式，基于Bootstrap3.3.6最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术，她提供了诸多的强大的可以重新组合的UI组件，并集成了最新的jQuery版本(v2.1.1)，当然，也集成了很多功能强大，用途广泛的jQuery插件，她可以用于所有的Web应用程序，如网站管理后台，网站会员中心，CMS，CRM，OA等等，当然，您也可以对她进行深度定制，以做出更强系统。
                                </p>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" placeholder="请输入您的Email" class="form-control">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary">保存</button>
                            </div>
                        </small>
                        </div>--%>


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

                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="allChk" id="allChk">
                                        </td>
                                        <td id="s1_a1">需求分析<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        <td></td>
                                        <td style="color: lightskyblue">
                                            <small>规定时间:2018-03-11</small>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tbody id="s1_t1" style="display: none">
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>一组</td>
                                        <td>
                                            <small>2018-03-10<a href="" style="margin-left: 10px">下载</a></small>
                                        </td>
                                        <td>张三</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>二组</td>
                                        <td>
                                            <small>2018-03-10<a href="" style="margin-left: 10px">下载</a></small>
                                        </td>
                                        <td>李四</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>三组</td>
                                        <td style="color: red"><small>2018-03-12<a href="" style="margin-left: 10px">下载</a></small></td>
                                        <td>王五</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>四组</td>
                                        <td><small>2018-03-06<a href="" style="margin-left: 10px">下载</a></small></td>
                                        <td>赵六</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>五组</td>
                                        <td style="color: red"><small>2018-03-12<a href="" style="margin-left: 10px">下载</a></small></td>
                                        <td>王八</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="subChk">
                                        </td>
                                        <td></td>
                                        <td>六组</td>
                                        <td><small>2018-03-09<a href="" style="margin-left: 10px">下载</a></small></td>
                                        <td>明明</td>
                                        <td class="status"><i class="glyphicon glyphicon-remove text-warning">未阅</i>
                                        </td>
                                        <td class="btn-groups">
                                            <div class="btn-group">
                                                <button class="btn btn-primary btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'01')" href="javascript:;">优
                                                </button>
                                                <button class="btn btn-success btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'02')" href="javascript:;">良
                                                </button>
                                                <button class="btn btn-info btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'03')" href="javascript:;">中
                                                </button>
                                                <button class="btn btn-warning btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'04')" href="javascript:;">及格
                                                </button>
                                                <button class="btn btn-danger btn-xs " type="button"
                                                        onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>


                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td id="s1_a2">设计原型<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        <td></td>
                                        <td style="color: lightskyblue"><small>规定时间:2018-03-15</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tbody id="s1_t2" style="display: none">
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>一组</td>
                                        <td>2018-03-10</td>
                                        <td>张三</td>
                                        <td><a href="#"><i class="fa fa-check text-navy demo3"></i>已阅</a></td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        <td></td>
                                        <td>二组</td>
                                        <td>2018-03-10</td>
                                        <td>李四</td>
                                        <td><a href="/page/jiaoan/yemian1"><i
                                                class="glyphicon glyphicon-remove text-warning">
                                        </i>未阅</a>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td></td>
                                        <td>三组</td>
                                        <td style="color: red">2018-03-18</td>
                                        <td>王五</td>
                                        <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                        <td>C</td>
                                    </tr>
                                    </tbody>


                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>设计数据库<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        <td></td>
                                        <td style="color: lightskyblue"><small>规定时间:2018-03-20</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
                                        <td>编程测试<a href="" title="模版下载" style="margin-left: 30px">
                                            <small>模版下载</small>
                                        </a></td>
                                        <td></td>
                                        <td style="color: lightskyblue"><small>规定时间:2018-03-25</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
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

        })

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
            if (aa){
                /*if($(obj).parents("div").parents("td").find(":button").hasClass("btn-xs")){
                    $(obj).parent("div").parents("td").parents("tr").find(".status").find("button").remove();
                    $(obj).clone().appendTo(".status");
                }else {*/
                    var i =$("<i>").addClass("fa fa-check text-navy demo3").html("已阅");
//                '<i class="fa fa-check text-navy demo3">已阅</i>'
                   /* $(obj).parents("div").parents("td").parents("tr").find(".status").find("i").remove();
                    $(obj).parents("div").parents("td").parents("tr").find(".status").append(i);
                    $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));*/
//                    console.info($("#id"));
//                }

//                $(obj).parents("div").find(".btn-group").remove();
//                aa = false;
               /* console.info($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").html());
                console.info($(obj).html());*/
                if ($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").length){
                    if($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").html()==($(obj)).html()){
                        return
                    }else {
                        $(obj).parents("div").parents("td").parents("tr").find(".status").find(":button").remove();
                        $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
                    }
                } else {
                    $(obj).parents("div").parents("td").parents("tr").find(".status").find("i").remove();
                    $(obj).parents("div").parents("td").parents("tr").find(".status").append(i);
                    $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
                };

//                return false;
            }


            layer.open({
                type: 2,
                title: '成绩备注'+'&nbsp;&nbsp;&nbsp;&nbsp;'+'成绩为:'+$(obj).clone().html(),
                content: '/beizhu_chengji.jsp',
                btn: ['确定', '取消'],
                yes:function (index) {
                    layer.close(index);
                },
                btn2:function (index) {
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
                yes:function (index) {
                    layer.close(index);
                },
                btn2:function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['600px', '300px']
            })
        })
    </script>
</div>
</body>
</html>
