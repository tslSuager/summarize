<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:44 GMT -->

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>H+ 后台主题UI框架 - 日历</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="/static/css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="row animated fadeInDown">
        <div class="col-sm-9" style="width:80%;float:none;margin:0 auto">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>查看<select class="">
                        <option class="">01班</option>
                        <option class="">02班</option>
                    </select>考勤
                    </h5>

                    <div class="ibox-tools">
                        <a class="dropdown-toggle count-info" href="/page/table_bootstrap" style="text-decoration:none">
                            <i class="fa fa-envelope"></i><span class="badge badge-danger">4</span>
                        </a>
                        <span class="label label-danger radius" style="display: none" id="chulixinxi">未处理信息</span>
                    </div>
                </div>
                <div class="ibox-content">
                    <div id="calendar"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/jquery-ui.custom.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/fullcalendar/fullcalendar.min.js"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script>
    $(document).ready(function () {
        $(".fa-envelope").mousemove(function () {
            $("#chulixinxi").show();
        })

        $(".fa-envelope").mouseout(function () {
            $("#chulixinxi").css('display', 'none');
        })
        $(".i-checks").iCheck({
            checkboxClass: "icheckbox_square-green",
            radioClass: "iradio_square-green",
        });
        $("#external-events div.external-event").each(function () {
            var d = {
                title: $.trim($(this).text())
            };
            $(this).data("eventObject", d);
            $(this).draggable({
                zIndex: 999,
                revert: true,
                revertDuration: 0
            })
        });
        var b = new Date();
        var c = b.getDate();
        var a = b.getMonth();
        var e = b.getFullYear();
        $("#calendar").fullCalendar({
            header: {
                left: "prev,next",
                center: "title"
            },
            editable: true,
            droppable: true,
            drop: function (g, h) {
                var f = $(this).data("eventObject");
                var d = $.extend({}, f);
                d.start = g;
                d.allDay = h;
                $("#calendar").fullCalendar("renderEvent", d, true);
                if ($("#drop-remove").is(":checked")) {
                    $(this).remove()
                }
            },
            /*events: [{
                title: "日事件",
                start: new Date(e, a, 1)
            }, {
                title: "长事件",
                start: new Date(e, a, c - 5),
                end: new Date(e, a, c - 2),
            }, {
                id: 999,
                title: "重复事件",
                start: new Date(e, a, c - 3, 16, 0),
                allDay: false,
            }, {
                id: 999,
                title: "重复事件",
                start: new Date(e, a, c + 4, 16, 0),
                allDay: false
            }, {
                title: "会议",
                start: new Date(e, a, c, 10, 30),
                allDay: false
            }, {
                title: "午餐",
                start: new Date(e, a, c, 12, 0),
                end: new Date(e, a, c, 14, 0),
                allDay: false
            }, {
                title: "生日",
                start: new Date(e, a, c + 1, 19, 0),
                end: new Date(e, a, c + 1, 22, 30),
                allDay: false
            }, {
                title: "打开百度",
                start: new Date(e, a, 28),
                end: new Date(e, a, 29),
                url: "http://baidu.com/"
            }],*/
            /*eventMouseover: function(e, j, v) {
//						$(this).attr("id", "test1");
                if(e.color === "red") {
                    layer.tips('张三,李四',$(this));
                }
                console.info(e);
                console.info(j);
//						console.info(v);

            },
            eventMouseout: function(e, j, v) {
                $(this).removeAttr("id");
            },*/
            eventClick: function () {
                layer.open({
                    type: 2,
                    title: '迟到人员名单',
                    content: '/list_late.jsp',
                    btn: ['确定', '取消'],
                    yes: function (index, layero) {
                        layer.confirm('确定修改?', {icon: 3, title: '提示'}, function (index) {
                            layer.msg('已提交', {
                                time: 1000
                            });
                        });
                        layer.close(index);
                    },
                    btn2: function (index, layero) {
                        layer.close(index);
                    },
                    area: ['800px', '500px']

                })
            },
            events: [{
                id: '001',
                title: '上午：   12:00:00 -- 迟到人员名单',
                start: '2018-03-12',
                color: "red",
            },
                /*{
                    title: '下午：   12:00:00',
                    start: '2018-03-12'
                },
                {
                    title: '下午：   12:00:00',
                    start: '2018-03-13'
                },
                {
                    title: '上午：   12:00:00',
                    start: '2018-03-15',
                },*/
                {
                    id: '002',
                    title: '下午：   12:00:00 -- 迟到人员名单',
                    start: '2018-03-15',
                    color: 'red'
                }
            ]
        })
    });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="" type="text/javascript" charset="utf-8"></script>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:45 GMT -->

</html>