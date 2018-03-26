<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:44 GMT -->

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>考勤签到情况</title>
    <!--<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">-->

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
        <div class="col-sm-2">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>拖拽添加活动</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div id='external-events'>
                        <div class='external-event navy-bg'>请假</div>
                        <div class='external-event navy-bg'>备注</div>
                    </div>
                </div>
            </div>
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>表现分数</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content" id="ibox-content1">
                    <div class='external-event navy-bg' id="grade"></div>
                </div>
            </div>
        </div>
        <div class="col-sm-10">
            <div class="ibox float-e-margins">

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
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/jquery-ui.custom.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/fullcalendar/fullcalendar.min.js"></script>
<script>
    $(document).ready(function () {
        //获取页面所有数据
        $.get("/checking/ShowAllRecordsByIdByDate", {"user_id":"u001"}, function (msg) {
            var allmsg = msg['user'];
            var experience = msg['experiences'];
            var result = msg['result'];


            //个人经历的页面加载
            $("#grade").html('分数：' + allmsg['grade'] + '分');
            if (experience != null) {
                experience.forEach(function (value) {
                    $("#ibox-content1").append("<div class='external-event navy-bg aaa'</div>");
                    $(".aaa").html('扣除：' + allmsg['cutGrade'] + '分');
                    $("#ibox-content1").append("<div class='external-event navy-bg bbb'</div>");
                    //这里有个BUG 后面的event会把前面的覆盖  未解决
                    $(".bbb").html('原因：' + value['event']);
                })
            }



            //考勤结果的数据处理，转换成事件对象
            var dataevents=new Array();
            $.each(result, function (i, e) {
                if(e.kaoqinRemarkDisposetime!=null)
                {  //处理请假的数据（备注，请假）
                    dataevents[i] = new Object();
                    if(e.kaoqinRemarkType==1) {
                        if (e.kaoqinRemarkStatus==1) {

                        }else  if (e.kaoqinRemarkStatus==1) {

                        }else  if (e.kaoqinRemarkStatus==1) {

                        }
                        dataevents[i].borderColor = "blue";
                        dataevents[i].title = "请假";
                        dataevents[i].start = e.kaoqinRemarkDisposetime;
                        dataevents[i].type = "请假";
                        dataevents[i].content = e.kaoqinRemarkContent;
                    }else if (e.kaoqinRemarkType==2) {
                        dataevents[i].borderColor = "blue";
                        dataevents[i].title = "备注";
                        dataevents[i].start = e.kaoqinRemarkDisposetime;
                        dataevents[i].type = "备注";
                        dataevents[i].content = e.kaoqinRemarkContent;
                    }
                }else {
                    //处理考勤数据（迟到，矿工，申诉）
                    if (e.lastTime!=null&&e.status==1) {
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "green";
                        dataevents[i].start = e.lastTime;
                        dataevents[i].title = "打卡时间：" +e.lastTime;
                    }else if (e.lastTime!=null&&e.status==0) {
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "red";
                        dataevents[i].start = e.lastTime;
                        if (e.kaoqinShenshuStatus==1) {
                            dataevents[i].title = "打卡时间（迟到）：" +e.lastTime+"  申诉";
                        }else if (e.kaoqinShenshuStatus==2) {
                            dataevents[i].title = "打卡时间（迟到）：" +e.lastTime+"  待处理";
                        }
                        else if (e.kaoqinShenshuStatus==3) {
                            dataevents[i].borderColor = "green";
                        }else if (e.kaoqinShenshuStatus==4) {
                            dataevents[i].title = "打卡时间（迟到）：" +e.lastTime+" 不同意";
                        }
                    }else if (e.lastTime!=null&&e.status==2){
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "red";
                        dataevents[i].start = e.lastTime;
                        if (e.kaoqinShenshuStatus==1) {
                            dataevents[i].title = "打卡时间（矿工）：" +e.lastTime+"  申诉";
                        }else if (e.kaoqinShenshuStatus==2) {
                            dataevents[i].title = "打卡时间（矿工）：" +e.lastTime+"  待处理";
                        }
                        else if (e.kaoqinShenshuStatus==3) {
                            dataevents[i].borderColor = "green";
                        }else if (e.kaoqinShenshuStatus==4) {
                            dataevents[i].title = "打卡时间（矿工）：" +e.lastTime+" 不同意";
                        }
                    }
                }
            });




            //考勤页面的数据加载
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
            $("#calendar").fullCalendar({
                header: {
                    left: "prev,next",
                    center: "title",
                    right: "today"
                },
                editable: true,
                droppable: true,
                //g:年月日,即坐标
                drop: function (g, h) {
                    var f = $(this).data("eventObject");
                    var e = $.extend({}, f);//事件就是一个{}
                    if (g >= new Date()) {
                        layer.open({
                            type: 2,
                            title: "申述内容",
                            area: ['500px', '300px'],
                            btn: ['提交', '算了'],
                            content: "/textarea.html",
                            yes: function (index, layero) {
                                //									console.info($($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val());

                                e.start = g;
                                e.allDay = h;
                                $("#calendar").fullCalendar("renderEvent", e, true);
                                //ajax 发请求存储 代码写在这
                                layer.close(index);
                            },
                            btn2: function (index, layero) {

                                layer.close(index);
                            }
                        });
                    }

                },

                eventClick: function (e) {
                    if (e.type == "请假") {
                        parent.layer.open({
                            type: 1,
                            title: "请假理由",
                            area: ['500px', '300px'],
                            btn: ['提交', '算了'],
                            content: e.content,
                            yes: function (index, layero) {
                                //console.info($($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val());
                                layer.close(index);
                            },
                            btn2: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    }
                },
                events:dataevents


            })

        }, "json");
    });


</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>