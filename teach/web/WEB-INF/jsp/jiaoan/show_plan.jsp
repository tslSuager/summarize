<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/7
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="common/head.jsp"/>
    <script src="${pageContext.request.contextPath}/static/js/plugins/chosen/chosen.jquery.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/clockpicker/clockpicker.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/cropper/cropper.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/jsKnob/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/jasny/jasny-bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/layer/layer.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/nouslider/jquery.nouislider.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/switchery/switchery.js"></script>

    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/static/js/demo/form-advanced-demo.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/hplus.min.js?v=4.1.0"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="/static/js/plugins/layer/layer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/contabs.min.js"></script>

    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>


    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Title</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/ionRangeSlider/ion.rangeSlider.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/plugins/fullcalendar/fullcalendar.print.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <style type="text/css">
        td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 教学管理 <span
        class="c-gray en">&gt;</span> 教学计划 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont" style="margin-right: 20px">&#xe68f;</i></a></nav>
<div class="ibox float-e-margins">
</div>

<div class="bars pull-left" style="margin-left: 20px;margin-bottom: 2px">
    <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
        <button type="button" id="new_plan" class="btn btn-outline btn-default">
            <i class="fa fa-plus"></i>
        </button>
        <button type="button" class="btn btn-outline btn-default">
            <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
        </button>

    </div>
</div>
<div class="ibox-content">

    <div class="example-wrap">
        <div class="example">
            <div class="bootstrap-table">
                <div class="fixed-table-toolbar"></div>
                <div class="fixed-table-container" style="padding-bottom: 0px;">
                    <div class="fixed-table-header" style="display: none;">
                        <table></table>
                    </div>
                    <div class="fixed-table-body">
                        <div class="fixed-table-loading" style="top: 37px; display: none;">正在努力地加载数据中，请稍候……</div>
                        <table data-toggle="table" data-url="/static/js/demo/bootstrap_table_test2.json"
                               data-mobile-responsive="true" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">计划ID</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">计划名</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">班级</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">开始时间</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">结束时间</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">备注说明</div>
                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">状态</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">操作</div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="no-records-found planT" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="这里是提示内容">
                                <td style="text-align: center">001</td>
                                <td style="text-align: center">毁灭地球</td>
                                <td style="text-align: center">JAVA一班</td>
                                <td style="text-align: center">2018-2-5</td>
                                <td style="text-align: center">2018-3-8</td>
                                <td style="text-align: center">玩不动了</td>
                                <td style="text-align: center">未完成</td>
                                <td style="text-align: center;width: 220px">
                                   <%-- <button type="button" class="btn btn-outline btn-default" id="new_son_plan" value="添加阶段">
                                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                    </button>--%>
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline btn-default" onClick="delete_plan(this,'001')" href="javascript:;" title="删除">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
                                </td>
                            </tr>

                            <tr class="no-records-found planT" data-toggle="tooltip" data-placement="top" title=""
                                data-original-title="这里是提示内容">
                                <td style="text-align: center">002</td>
                                <td style="text-align: center">呵呵哒哒</td>
                                <td style="text-align: center">JAVA二班</td>
                                <td style="text-align: center">2018-2-5</td>
                                <td style="text-align: center">2018-3-8</td>
                                <td style="text-align: center">程序性撒打算</td>
                                <td style="text-align: center">未完成</td>
                                <td style="text-align: center;width: 220px">
                                    <%-- <button type="button" class="btn btn-outline btn-default" id="new_son_plan" value="添加阶段">
                                         <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                     </button>--%>
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline btn-default" onClick="delete_plan(this,'002')" href="javascript:;" title="删除">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                    </div>
                    <div class="fixed-table-footer" style="display: none;">
                        <table>
                            <tbody>
                            <tr></tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="fixed-table-pagination" style="display: none;"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <%--新建计划弹出框--%>
    <%--<div class="modal inmodal in flipInX" id="myModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close_this close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    &lt;%&ndash;  <i class="fa fa-laptop modal-icon"></i>&ndash;%&gt;
                    <h4 class="modal-title">新建计划</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label"
                                       style="margin-top: 5px;margin-bottom: 5px">班级 :</label>
                                <select class="form-control m-b" style="width: 320px" name="account">
                                    <option>JAVA一班</option>
                                    <option>JAVA二班</option>
                                    <option>android一班</option>
                                    <option>android二班</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">计划名 :</label>
                                <input type="text" class="form-control" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">开始时间 :</label>
                                <div class="input-group date">
                                    <input type="text" class="form-control" id="start" value="2014-11-11"
                                           style="width: 320px">
                                </div>
                            </div>
                        </div>
                        &lt;%&ndash;日期弹出框开始&ndash;%&gt;
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 41, 255);"><i
                                    style="top: 19.2157px; left: 59.7087px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 36.0434px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(83, 103, 206);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(83, 103, 206);">
                                <div style="background-color: rgb(83, 103, 206);"></div>
                            </div>
                        </div>
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 100px; left: 0px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 100px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(0, 0, 0);">
                                <div style="background-color: rgb(0, 0, 0);"></div>
                            </div>
                        </div>
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 100px; left: 0px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 100px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(0, 0, 0);">
                                <div style="background-color: rgb(0, 0, 0);"></div>
                            </div>
                        </div>
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 100px; left: 0px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 100px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(0, 0, 0);">
                                <div style="background-color: rgb(0, 0, 0);"></div>
                            </div>
                        </div>
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 100px; left: 0px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 100px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(0, 0, 0);">
                                <div style="background-color: rgb(0, 0, 0);"></div>
                            </div>
                        </div>
                        <div class="colorpicker dropdown-menu colorpicker-hidden">
                            <div class="colorpicker-saturation" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 100px; left: 0px;"><b></b></i></div>
                            <div class="colorpicker-hue"><i style="top: 100px;"></i></div>
                            <div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i
                                    style="top: 0px;"></i></div>
                            <div class="colorpicker-color" style="background-color: rgb(0, 0, 0);">
                                <div style="background-color: rgb(0, 0, 0);"></div>
                            </div>
                        </div>
                        <div class="showdate datepicker datepicker-dropdown dropdown-menu datepicker-orient-left datepicker-orient-top"
                             style="display: none; top: 220px; left: 150px; z-index: 10;">
                            <div class="datepicker-days showdate" style="display: none;">
                                <table class=" table-condensed">
                                    <thead>
                                    <tr>
                                        <th class="cw">&nbsp;</th>
                                        <th class="prev" style="visibility: visible;">«</th>
                                        <th colspan="5" class="datepicker-switch">三月 2018</th>
                                        <th class="next" style="visibility: visible;">»</th>
                                    </tr>
                                    <tr>
                                        <th class="cw">&nbsp;</th>
                                        <th class="dow">日</th>
                                        <th class="dow">一</th>
                                        <th class="dow">二</th>
                                        <th class="dow">三</th>
                                        <th class="dow">四</th>
                                        <th class="dow">五</th>
                                        <th class="dow">六</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="cw">9</td>
                                        <td class="old day" value="25">25</td>
                                        <td class="old day">26</td>
                                        <td class="old day">27</td>
                                        <td class="old day">28</td>
                                        <td class="day">1</td>
                                        <td class="day">2</td>
                                        <td class="day">3</td>
                                    </tr>
                                    <tr>
                                        <td class="cw">10</td>
                                        <td class="day">4</td>
                                        <td class="day">5</td>
                                        <td class="day">6</td>
                                        <td class="day">7</td>
                                        <td class="day">8</td>
                                        <td class="day">9</td>
                                        <td class="day">10</td>
                                    </tr>
                                    <tr>
                                        <td class="cw">11</td>
                                        <td class="day">11</td>
                                        <td class="day">12</td>
                                        <td class="day">13</td>
                                        <td class="active day">14</td>
                                        <td class="day">15</td>
                                        <td class="day">16</td>
                                        <td class="day">17</td>
                                    </tr>
                                    <tr>
                                        <td class="cw">12</td>
                                        <td class="day">18</td>
                                        <td class="day">19</td>
                                        <td class="day">20</td>
                                        <td class="day">21</td>
                                        <td class="day">22</td>
                                        <td class="day">23</td>
                                        <td class="day">24</td>
                                    </tr>
                                    <tr>
                                        <td class="cw">13</td>
                                        <td class="day">25</td>
                                        <td class="day">26</td>
                                        <td class="day">27</td>
                                        <td class="day">28</td>
                                        <td class="day">29</td>
                                        <td class="day">30</td>
                                        <td class="day">31</td>
                                    </tr>
                                    <tr>
                                        <td class="cw">14</td>
                                        <td class="new day">1</td>
                                        <td class="new day">2</td>
                                        <td class="new day">3</td>
                                        <td class="new day">4</td>
                                        <td class="new day">5</td>
                                        <td class="new day">6</td>
                                        <td class="new day">7</td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th colspan="8" id="today" class="today" style="display: table-cell;">今天</th>
                                    </tr>
                                    <tr>
                                        <th colspan="7" class="clear" style="display: none;">清空</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="datepicker-months" style="display: none;">
                                <table class="table-condensed">
                                    <thead>
                                    <tr>
                                        <th class="prev" style="visibility: visible;">«</th>
                                        <th colspan="5" class="datepicker-switch">2018</th>
                                        <th class="next" style="visibility: visible;">»</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td colspan="7"><span class="month">1</span><span class="month">2</span><span
                                                class="month active">3</span><span class="month">4</span><span
                                                class="month">5</span><span class="month">6</span><span
                                                class="month">7</span><span class="month">8</span><span
                                                class="month">9</span><span class="month">10</span><span class="month">11</span><span
                                                class="month">12</span></td>
                                    </tr>
                                    </tbody>
                                    &lt;%&ndash;<tfoot>
                                    <tr>
                                        <th colspan="8" class="today" id="today" style="display: table-cell;">今天</th>
                                    </tr>
                                    <tr>
                                        <th colspan="7" class="clear" style="display: none;">清空</th>
                                    </tr>
                                    </tfoot>&ndash;%&gt;
                                </table>
                            </div>
                            <div class="datepicker-years" style="display: none;">
                                <table class="table-condensed">
                                    <thead>
                                    <tr>
                                        <th class="prev" style="visibility: visible;">«</th>
                                        <th colspan="5" class="datepicker-switch">2010-2019</th>
                                        <th class="next" style="visibility: visible;">»</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span
                                                class="year">2011</span><span class="year">2012</span><span
                                                class="year">2013</span><span class="year">2014</span><span
                                                class="year">2015</span><span class="year">2016</span><span
                                                class="year">2017</span><span class="year active">2018</span><span
                                                class="year">2019</span><span class="year new">2020</span></td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th colspan="8" class="today" style="display: table-cell;">今天</th>
                                    </tr>
                                    <tr>
                                        <th colspan="7" class="clear" style="display: none;">清空</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>

                        &lt;%&ndash;日期弹出框结束&ndash;%&gt;
                        <div>
                            <div style="margin-top: 5px;margin-bottom: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">结束时间 :</label>
                                <input type="text" class="form-control" id="end" style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>

                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_this" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
            <small class="font-bold">
            </small>
        </div>
        <small class="font-bold">
        </small>
    </div>--%>
    <%--弹出框结束--%>


    <%--添加子任务弹出框开始--%>
    <%--<div class="modal inmodal in" id="mySonPlanModal" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none; padding-right: 6px;">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close_this close" data-dismiss="modal"><span
                            aria-hidden="true">×</span><span class="sr-only">关闭</span>
                    </button>
                    &lt;%&ndash;  <i class="fa fa-laptop modal-icon"></i>&ndash;%&gt;
                    <h4 class="modal-title">新建阶段内容</h4>
                </div>
                <form>
                    <small class="font-bold">
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">阶段描述 :</label>
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
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">模板路劲 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">创建时间 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">创建人 :</label>
                                <input class="form-control layer-date " style="width: 320px">
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 5px">
                                <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可提前提交
                                    :</label>
                                <label>
                                    <input type="radio" checked="" value="option1" id="optionsRadios1"
                                           name="optionsRadios">是</label>

                                <label>
                                    <input type="radio" value="option2" id="optionsRadios2"
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
                    </small>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white close_this" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
            <small class="font-bold">
            </small>
        </div>
        <small class="font-bold">
        </small>
    </div>--%>
    <%--添加子任务弹出框结束--%>

</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        /*var jieduan = function () {
            layer.open({
                type: 2,
                title: '添加阶段内容',
                content: '/plan_new_jieduan.jsp',
                btn: ['继续添加','完成', '取消'],
                yes:function () {
//                    无限循环
//                    layer.close();
//                    jieduan();
                },
                btn2:function (index) {
                    layer.close(index);
                },
                btn3:function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['800px', '600px']
            })
        }*/

        $("#new_plan").click(function () {
            layer.open({
                type: 2,
                title: '新建计划',
                content: '/plan_new.jsp',
                btn: ['添加阶段','完成', '取消'],
                yes:function (index) {
                    window.location.href = "/page/jiaoan/jiaoxueplan_addjieduan";
                },
                btn2:function (index) {
                    layer.close(index);
                },
                btn3:function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['800px', '600px']
            })
        });

        function delete_plan(obj, id) {
            alert("111");
            layer.confirm('确认要删除吗？', function (index) {
                /*$.ajax({
                    type: 'POST',
                    url: '',
                    dataType: 'json',
                    success: function(data){
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});
                    },
                    error:function(data) {
                        console.log(data.msg);
                    },
                });*/
                $(obj).parents("tr").remove();
                layer.msg('已删除', {icon: 1, time: 1000});
            });
        }

        /*$(".close_this").click(function () {
            $("#myModal").css('display', 'none');
            $("#mySonPlanModal").css('display', 'none')
        });

        $("#new_son_plan").click(function () {
            $("#mySonPlanModal").css('display', 'block')
        });
        $("#find").click(function () {
            $("#plan1").css('display', 'block')
        })

        $("#start").click(function () {
            $(".showdate").css('display','block');
        })
        $("#start").blur(function () {
            $(".showdate").css('display','none');
        })
        $(".day").mouseover(function () {
            $("#start").val($(this).html());

        })
        $("#today").mouseover(function () {
            var date=new Date();
            var nian=date.getFullYear();
            var yue=date.getMonth()+1;
            var tian=date.getDay()+4;
            $("#start").val(nian+"-"+yue+"-"+tian);

        })*/
/*js*/
    })

</script>
</body>

</html>
