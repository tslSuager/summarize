<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <jsp:include page="common/head.jsp"/>
    <script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="/static/js/plugins/layer/layer.min.js"></script>
    <script src="/static/js/hplus.min.js?v=4.1.0"></script>

    <script type="text/javascript" src="/static/js/contabs.min.js"></script>
    <script src="/static/js/plugins/pace/pace.min.js"></script>


    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script type="text/javascript" src="/static/js/H-ui.min.js"></script>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/laydate/laydate.css">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="/static/css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <title>资讯列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 教学管理 <span
        class="c-gray en">&gt;</span> 教学计划 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>

<div>
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInDown">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>计划类型</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="calendar.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                           <%-- <ul class="dropdown-menu dropdown-user">
                                <li><a href="calendar.html#">选项1</a>
                                </li>
                                <li><a href="calendar.html#">选项2</a>
                                </li>
                            </ul>--%>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="external-events">
                            <p>可拖动的活动</p>
                            <div class="external-event navy-bg ui-draggable" style="position: relative;">日计划</div>
                            <div class="external-event navy-bg ui-draggable"
                                 style="position: relative; z-index: auto; left: 0px; top: 0px;">周计划
                            </div>
                            <div class="external-event navy-bg ui-draggable" style="position: relative;">案例分享</div>
                            <div class="external-event navy-bg ui-draggable" style="position: relative;">xxx</div>
                            <p class="m-t">
                            <div class="icheckbox_square-green checked" style="position: relative;">
                            <input
                                    type="checkbox" id="drop-remove" class="i-checks" checked=""
                                    style="position: absolute; opacity: 0;">
                                <ins class="iCheck-helper"
                                     style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                            </div>
                            <label for="drop-remove">移动后删除</label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>FullCalendar示例 </h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="calendar.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                           <%-- <ul class="dropdown-menu dropdown-user">
                                <li><a href="calendar.html#">选项1</a>
                                </li>
                                <li><a href="calendar.html#">选项2</a>
                                </li>
                            </ul>--%>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
<%--弹出框开始--%>
                    <div class="modal inmodal in" id="myModal" tabindex="-1" role="dialog" aria-hidden="true" style="display: none; padding-right: 6px;">
                        <div class="modal-dialog">
                            <div class="modal-content animated bounceInRight">
                                <div class="modal-header">
                                    <button type="button" class="close_this close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span>
                                    </button>
                                  <%--  <i class="fa fa-laptop modal-icon"></i>--%>
                                    <h4 class="modal-title">设置计划内容</h4>
                                   </div>
                                <small class="font-bold">
                                    <div class="fc-header-center">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <%--<label>时间</label>--%>
                                        <div class="col-sm-10">
                                            <input class="form-control layer-date" placeholder="YYYY-MM-DD hh:mm:ss" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                                            <label class="laydate-icon"></label>
                                        </div>
                                    </div><br>
                                    <div class="form-group">
                                        <label>任务</label>
                                        <input type="email" placeholder="请输入您的任务" class="form-control">
                                    </div>
                                </div>
                                    </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-white close_this"  data-dismiss="modal">关闭</button>
                                    <button type="button" class="btn btn-primary">保存</button>
                                </div>
                            </small></div><small class="font-bold">
                        </small></div><small class="font-bold">
                    </small>
                    </div>
                    <%--弹出框结束--%>
                    <div class="ibox-content">
                        <div id="calendar" class="fc fc-ltr">
                            <div class="fc-content" style="position: relative;">
                                <div class="fc-view fc-view-month fc-grid" style="position:relative" unselectable="on">
                                    <div class="fc-event-container" style="position:absolute;z-index:8;top:0;left:0">
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end ui-draggable"
                                             style="position: absolute; left: 679px; width: 164px; top: 40px;"
                                             unselectable="on">
                                            <div class="fc-event-inner"><span class="fc-event-title">日事件</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-end ui-draggable"
                                             style="position: absolute; left: 1px; width: 335px; top: 40px;"
                                             unselectable="on">
                                            <div class="fc-event-inner"><span class="fc-event-title">长事件</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                             style="position: absolute; left: 3px; width: 164px; top: 183px;">
                                            <div class="fc-event-inner"><span class="fc-event-time">4p</span><span
                                                    class="fc-event-title">重复事件</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                             style="position: absolute; left: 3px; width: 164px; top: 325px;">
                                            <div class="fc-event-inner"><span class="fc-event-time">4p</span><span
                                                    class="fc-event-title">重复事件</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                             style="position: absolute; left: 510px; width: 164px; top: 183px;">
                                            <div class="fc-event-inner"><span class="fc-event-time">10:30a</span><span
                                                    class="fc-event-title">会议</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                             style="position: absolute; left: 510px; width: 164px; top: 211px;">
                                            <div class="fc-event-inner"><span class="fc-event-time">12p</span><span
                                                    class="fc-event-title">午餐</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <div class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                             style="position: absolute; left: 679px; width: 164px; top: 183px;">
                                            <div class="fc-event-inner"><span class="fc-event-time">7p</span><span
                                                    class="fc-event-title">生日</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                        <a href="http://baidu.com/"
                                           class="fc-event fc-event-hori fc-event-draggable fc-event-start fc-event-end"
                                           style="position: absolute; left: 510px; width: 333px; top: 467px;">
                                            <div class="fc-event-inner"><span class="fc-event-title">打开百度</span></div>
                                            <div class="ui-resizable-handle ui-resizable-e">&nbsp;&nbsp;&nbsp;</div>
                                        </a>
                                    </div>




                                    <div id="laydate_box" class="laydate_box" name="laydate-v1.1" style="position: absolute; left: 173.656px; top: 315px; display: none;"><div class="laydate_top"><div class="laydate_ym laydate_y" id="laydate_YY"><a class="laydate_choose laydate_chprev laydate_tab"><cite></cite></a><input id="laydate_y" readonly=""><label></label><a class="laydate_choose laydate_chnext laydate_tab"><cite></cite></a><div class="laydate_yms"><a class="laydate_tab laydate_chtop"><cite></cite></a><ul id="laydate_ys"></ul><a class="laydate_tab laydate_chdown"><cite></cite></a></div></div><div class="laydate_ym laydate_m" id="laydate_MM"><a class="laydate_choose laydate_chprev laydate_tab"><cite></cite></a><input id="laydate_m" readonly=""><label></label><a class="laydate_choose laydate_chnext laydate_tab"><cite></cite></a><div class="laydate_yms" id="laydate_ms"><span m="0">01月</span><span m="1">02月</span><span m="2" class="laydate_click">03月</span><span m="3">04月</span><span m="4">05月</span><span m="5">06月</span><span m="6">07月</span><span m="7">08月</span><span m="8">09月</span><span m="9">10月</span><span m="10">11月</span><span m="11">12月</span></div></div></div><table class="laydate_table" id="laydate_table"><thead><tr><th>日</th><th>一</th><th>二</th><th>三</th><th>四</th><th>五</th><th>六</th></tr></thead><tbody><tr><td class="laydate_nothis" y="2018" m="2" d="25">25</td><td class="laydate_nothis" y="2018" m="2" d="26">26</td><td class="laydate_nothis" y="2018" m="2" d="27">27</td><td class="laydate_nothis" y="2018" m="2" d="28">28</td><td class="" y="2018" m="3" d="1">1</td><td class="" y="2018" m="3" d="2">2</td><td class="" y="2018" m="3" d="3">3</td></tr><tr><td class="" y="2018" m="3" d="4">4</td><td class="" y="2018" m="3" d="5">5</td><td class="" y="2018" m="3" d="6">6</td><td class="" y="2018" m="3" d="7">7</td><td class="laydate_click" y="2018" m="3" d="8">8</td><td class="" y="2018" m="3" d="9">9</td><td class="" y="2018" m="3" d="10">10</td></tr><tr><td class="" y="2018" m="3" d="11">11</td><td class="" y="2018" m="3" d="12">12</td><td class="" y="2018" m="3" d="13">13</td><td class="" y="2018" m="3" d="14">14</td><td class="" y="2018" m="3" d="15">15</td><td class="" y="2018" m="3" d="16">16</td><td class="" y="2018" m="3" d="17">17</td></tr><tr><td class="" y="2018" m="3" d="18">18</td><td class="" y="2018" m="3" d="19">19</td><td class="" y="2018" m="3" d="20">20</td><td class="" y="2018" m="3" d="21">21</td><td class="" y="2018" m="3" d="22">22</td><td class="" y="2018" m="3" d="23">23</td><td class="" y="2018" m="3" d="24">24</td></tr><tr><td class="" y="2018" m="3" d="25">25</td><td class="" y="2018" m="3" d="26">26</td><td class="" y="2018" m="3" d="27">27</td><td class="" y="2018" m="3" d="28">28</td><td class="" y="2018" m="3" d="29">29</td><td class="" y="2018" m="3" d="30">30</td><td class="" y="2018" m="3" d="31">31</td></tr><tr><td class="laydate_nothis" y="2018" m="4" d="1">1</td><td class="laydate_nothis" y="2018" m="4" d="2">2</td><td class="laydate_nothis" y="2018" m="4" d="3">3</td><td class="laydate_nothis" y="2018" m="4" d="4">4</td><td class="laydate_nothis" y="2018" m="4" d="5">5</td><td class="laydate_nothis" y="2018" m="4" d="6">6</td><td class="laydate_nothis" y="2018" m="4" d="7">7</td></tr></tbody></table><div class="laydate_bottom"><ul id="laydate_hms" style="display: block;"><li class="laydate_sj">时间</li><li><input readonly="">:</li><li><input readonly="">:</li><li><input readonly=""></li></ul><div class="laydate_time" id="laydate_time"></div><div class="laydate_btn"><a id="laydate_clear" style="display: block;">清空</a><a id="laydate_today" style="display: block;">今天</a><a id="laydate_ok" style="display: block;">确认</a></div></div></div>
                                    <div class="fc-cell-overlay"
                                         style="position: absolute; z-index: 3; top: 162px; left: 0px; width: 338px; height: 142px; display: none;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/jquery-ui.custom.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/fullcalendar/fullcalendar.min.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script src="/static/js/laydate/laydate.js"></script>

<script>
    laydate({elem:"#hello",event:"focus"});var start={elem:"#start",format:"YYYY/MM/DD hh:mm:ss",min:laydate.now(),max:"2099-06-16 23:59:59",istime:true,istoday:false,choose:function(datas){end.min=datas;end.start=datas}};var end={elem:"#end",format:"YYYY/MM/DD hh:mm:ss",min:laydate.now(),max:"2099-06-16 23:59:59",istime:true,istoday:false,choose:function(datas){start.max=datas}};laydate(start);laydate(end);
</script>



<script>

    $(document).ready(function () {

        $(".i-checks").iCheck({checkboxClass:"icheckbox_square-green", radioClass: "iradio_square-green"});
        $("#external-events div.external-event").each(function () {
            var d = {title: $.trim($(this).text())};
            $(this).data("eventObject", d);
            $(this).draggable({zIndex: 999, revert: true, revertDuration: 0})
        });
        var b = new Date();
        var c = b.getDate();
        var a = b.getMonth();
        var e = b.getFullYear();
        $(".close_this").click(function () {
           $("#myModal").css('display','none')
        });
        $("#calendar").fullCalendar({
            header: {left: "prev,next", center: "title", right: "month,agendaWeek,agendaDay"},
            editable: true,
            droppable: true,
            drop:function (g, h) {
                var f = $(this).data("eventObject");
                var d = $.extend({}, f);
                var m=$("#myModal");
                m.css('display','block');
                d.start = g;
                d.allDay = h;
                $("#calendar").fullCalendar("renderEvent", d, true);
                if ($("#drop-remove").is(":checked")) {
                    $(this).remove()
                }
            },
            events: [{title: "日事件",
                start: new Date(e, a, 1)}, {
                title: "长事件",
                start: new Date(e, a, c - 5),
                end: new Date(e, a, c - 2),
            }, {
                id: 999, title: "重复事件",
                start: new Date(e, a, c - 3, 16, 0), allDay: false,
            },
                {id: 999, title: "重复事件", start: new Date(e, a, c + 4, 16, 0), allDay: false},
                {title: "会议", start: new Date(e, a, c, 10, 30), allDay: false}, {
                    title: "午餐", start: new Date(e, a, c, 12, 0),
                    end: new Date(e, a, c, 14, 0),
                    allDay: false
                }, {
                    title: "生日", start: new Date(e, a, c + 1, 19, 0),
                    end: new Date(e, a, c + 1, 22, 30), allDay: false
                },
                {
                    /*title: "打开百度", start: new Date(e, a, 28), end: new Date(e, a, 29),
                    url: "http://baidu.com/"*/
                }],
        })
    });
</script>
</body>
</html>