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
        $.get("/checking/ShowAllRecordsByIdByDate", {"userId": "u001", "brushtime": new Date()}, function (msg) {
            $("body").data("userId", "u001");
            var allmsg = msg['user'];
            var experience = msg['experiences'];
            var result = msg['result'];
            var records = msg['records'];
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
            var dataevents = new Array();
            $.each(result, function (i, e) {
                if (e.kaoqinRemarkReqtime != null) {  //处理请假的数据（备注，请假）
                    dataevents[i] = new Object();
                    dataevents[i].start = e.date;
                    e.kaoqinRemarkReqtime = e.kaoqinRemarkReqtime.split(" ")[1];
                    if (e.kaoqinRemarkType == 1) {
                        if (e.kaoqinRemarkStatus == 0) {
                            dataevents[i].borderColor = "blue";
                            dataevents[i].title = "请假   待处理";
                            dataevents[i].type = "请假0";
                            dataevents[i].content = e.kaoqinRemarkContent;
                        } else if (e.kaoqinRemarkStatus == 1) {
                            dataevents[i].borderColor = "green";
                            dataevents[i].title = "请假";
                            dataevents[i].type = "请假1";
                            dataevents[i].content = e.kaoqinRemarkContent;
                        } else if (e.kaoqinRemarkStatus == 2) {
                            dataevents[i].borderColor = "blue";
                            dataevents[i].title = "请假";
                            dataevents[i].type = "请假2";
                            dataevents[i].content = e.kaoqinRemarkReply;
                        }
                    } else if (e.kaoqinRemarkType == 2) {
                        if (e.kaoqinRemarkStatus == 0) {
                            dataevents[i].borderColor = "blue";
                            dataevents[i].title = "备注   待处理";
                            dataevents[i].type = "备注0";
                            dataevents[i].content = e.kaoqinRemarkContent;
                        } else if (e.kaoqinRemarkStatus == 1) {
                            dataevents[i].borderColor = "green";
                            dataevents[i].title = "备注";
                            dataevents[i].type = "备注1";
                            dataevents[i].content = e.kaoqinRemarkContent;
                        } else if (e.kaoqinRemarkStatus == 2) {
                            dataevents[i].borderColor = "blue";
                            dataevents[i].title = "备注";
                            dataevents[i].type = "备注2";
                            dataevents[i].content = e.kaoqinRemarkReply;
                        }
                    }
                } else {
                    //处理考勤数据（迟到，矿工，申诉）
                    if (e.lastTime != null && e.status == 1) {
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "green";
                        dataevents[i].start = e.lastTime;
                        e.lastTime = e.lastTime.split(" ")[1];
                        dataevents[i].title = "打卡时间：" + e.lastTime;
                    } else if (e.lastTime != null && e.status == 0) {
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "red";
                        dataevents[i].start = e.lastTime;
                        e.lastTime = e.lastTime.split(" ")[1];
                        if (e.kaoqinShenshuStatus == 1) {//未申诉
                            dataevents[i].title = "打卡时间（迟到）：" + e.lastTime + "  申诉";
                            dataevents[i].type = "申诉1";
                            dataevents[i].content = e.kaoqinShenshuContent;
                        } else if (e.kaoqinShenshuStatus == 2) {//待申诉
                            dataevents[i].title = "打卡时间（迟到）：" + e.lastTime + "  待处理";
                            dataevents[i].type = "申诉2";
                            dataevents[i].content = e.kaoqinShenshuContent;
                        }
                        else if (e.kaoqinShenshuStatus == 3) {//申诉成功
                            dataevents[i].borderColor = "green";
                            dataevents[i].title = "打卡时间：" + e.lastTime;
                            dataevents[i].type = "申诉3";
                            dataevents[i].content = e.kaoqinShenshuReply;
                        } else if (e.kaoqinShenshuStatus == 4) {//申述失败
                            dataevents[i].title = "打卡时间（迟到）：" + e.lastTime + " 不同意";
                            dataevents[i].type = "申诉4";
                            dataevents[i].content = e.kaoqinShenshuReply;
                        }
                    } else if (e.lastTime != null && e.status == 2) {
                        dataevents[i] = new Object();
                        dataevents[i].borderColor = "red";
                        dataevents[i].start = e.lastTime;
                        e.lastTime = e.lastTime.split(" ")[1];
                        if (e.kaoqinShenshuStatus == 1) {
                            dataevents[i].title = "打卡时间（矿工）：" + e.lastTime + "  申诉";
                            dataevents[i].type = "申诉1";
                            dataevents[i].content = e.kaoqinShenshuContent;
                        } else if (e.kaoqinShenshuStatus == 2) {
                            dataevents[i].title = "打卡时间（矿工）：" + e.lastTime + "  待处理";
                            dataevents[i].type = "申诉1";
                            dataevents[i].content = e.kaoqinShenshuContent;
                        }
                        else if (e.kaoqinShenshuStatus == 3) {
                            dataevents[i].borderColor = "green";
                            dataevents[i].title = "打卡时间：" + e.lastTime;
                            dataevents[i].type = "申诉3";
                            dataevents[i].content = e.kaoqinShenshuReply;
                        } else if (e.kaoqinShenshuStatus == 4) {
                            dataevents[i].title = "打卡时间（矿工）：" + e.lastTime + " 不同意";
                            dataevents[i].type = "申诉4";
                            dataevents[i].content = e.kaoqinShenshuReply;
                        }
                    }
                }
            });

            //当天考情记录的数据处理
            $.each(records, function (i, e) {
                var current = i + dataevents.length - 1;
                dataevents[current] = new Object();
                dataevents[current].borderColor = "grey";
                dataevents[current].start = e.brushtime;
                dataevents[current].title = "打卡时间：" + e.brushtime.split(" ")[1];
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
                    console.info(g);
                    console.info(addDate(g,1));

                    if (g >= new Date()||(g <= new Date()&&addDate(g,1)>=new Date()&&f.title=="备注")) {
                        layer.open({
                            type: 2,
                            title: f.title + "理由",
                            area: ['500px', '300px'],
                            btn: ['提交', '算了'],
                            content: "/textarea.html",
                            yes: function (index, layero) {
                                e.start = g;
                                e.allDay = h;
                                //ajax 发请求存储 代码写在这
                                var checkingContent = $($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val();
                                var type = 2;
                                if (f.title == "请假") {
                                    type = 1;
                                }
                                console.info(type);
                                $.post("/checking/commitLeave", {
                                    userId: $("body").data("userId"),
                                    kaoqinRemarkContent: checkingContent,
                                    kaoqinRemarkType: type,
                                    kaoqinRemarkReqtime: new Date(),
                                    date: g
                                }, function (msg) {
                                    e.type = "备注0";
                                    if (f.title == "请假") {
                                        e.type = "请假0";
                                    }
                                    e.content = checkingContent;
                                    console.info(msg);
                                    layer.close(index);
                                }, "json");
                                $("#calendar").fullCalendar("renderEvent", e, true);
                            },
                            btn2: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    }

                },
                eventClick: function (e) {
                    if (e.type == "请假2") {
                        parent.layer.open({
                            type: 1,
                            title: "回复内容",
                            area: ['500px', '300px'],
                            btn: ['关闭'],
                            content: e.content,
                            btn1: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    } else if (e.type == "请假0") {
                        parent.layer.open({
                            type: 1,
                            title: "请假理由",
                            area: ['500px', '300px'],
                            btn: ['关闭'],
                            content: e.content,
                            btn1: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    } else if (e.type == "备注2") {
                        parent.layer.open({
                            type: 1,
                            title: "回复理由",
                            area: ['500px', '300px'],
                            btn: ['关闭'],
                            content: e.content,
                            btn1: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    } else if (e.type == "备注0") {
                        parent.layer.open({
                            type: 1,
                            title: "备注理由",
                            area: ['500px', '300px'],
                            btn: ['关闭'],
                            content: e.content,
                            btn1: function (index, layero) {
                                layer.close(index);
                            }
                        });
                    } else if (e.type == "申诉2") {
                        parent.layer.open({
                            type: 1,
                            title: "回复内容",
                            area: ['500px', '300px'],
                            btn: ['继续申诉', '算了'],
                            content: e.content,
                            yes: function (index, layero) {
                                //console.info();
                                //ajax 发请求存储 代码写在这
                                var checkingContent = $($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val();
                                $.post("/checking/commitChecking", {
                                    userId: $("body").data("userId"),
                                    data: checkingContent,
                                    kaoqinShenSuReqtime: new Date()
                                }, function (msg) {
                                    layer.close(index);
                                });
                            },
                            btn2: function (index, layero) {
                                layer.close(index);
                            }
                        });

                    } else if (e.type == "申诉0") {
                        parent.layer.open({
                            type: 1,
                            title: "申诉内容",
                            area: ['500px', '300px'],
                            btn: ['申诉', '算了'],
                            content: e.content,
                            yes: function (index, layero) {
                                //console.info();
                                //ajax 发请求存储 代码写在这
                                var checkingContent = $($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val();
                                $.post("/checking/commitChecking", {
                                    userId: $("body").data("userId"),
                                    data: checkingContent,
                                    kaoqinShenSuReqtime: new Date()
                                }, function (msg) {
                                    layer.close(index);
                                });
                            },
                            btn2: function (index, layero) {
                                layer.close(index);
                            }
                        });

                    } else if (e.type == "申诉1") {
                        parent.layer.open({
                            type: 1,
                            title: "申诉内容",
                            area: ['500px', '300px'],
                            btn: ['提交', '算了'],
                            content: e.content,
                            yes: function (index, layero) {
                                //console.info();
                                //ajax 发请求存储 代码写在这
                                var checkingContent = $($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val();
                                $.post("/checking/commitChecking", {
                                    userId: $("body").data("userId"),
                                    data: checkingContent
                                }, function (msg) {
                                    console.info(msg);
                                    layer.close(index);
                                });
                            },
                            btn2: function (index, layero) {
                                layer.close(index);
                            }
                        });

                    }
                },
                events: dataevents
            })

        }, "json");
        function addDate(date, days) {
            if (days == undefined || days == '') {
                days = 1;
            }
            var date = new Date(date);
            date.setDate(date.getDate() + days);
            return date;
        }
    });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>