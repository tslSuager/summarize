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
                    查看班级：
                    <select id="sel" class="form-control" style="width: 23%">
                    </select>
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
<script src="/static/js/pullListTree.js"></script>
<script>

    $(document).ready(function () {
        initdata("001001001","u007");
//        initPullListTree(3,1);
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
       /* $("#calendar").fullCalendar({
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
                start: '2018-03-13',
                color: "red",
            },
                /!*{
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
                },*!/
                {
                    id: '002',
                    title: '下午：   12:00:00 -- 迟到人员名单',
                    start: '2018-03-15',
                    color: 'red'
                }
            ]
        })*/
    });

    /**
     * 初始话页面的班级列表和查找某班今天以前的迟到人员
     * @param officeId  班级id
     * @param uId  教员id
     */
    function initdata(officeId,uId) {
        $.ajax({
            url: "/checking/viewKaoqin?officeId="+officeId+"&uId="+uId,
            dataType:"json",
            success: function(json){
                var offices = json["offices"];
                var sel = $("#sel");
                for (var i=0;i<offices.length;i++){
                    sel.append($("<option>").html(offices[i].name).val(offices[i].id));
                }
                //定义选择好了班级之后的事件
                sel.change(function () {
                    var officeId = $(this).val();
                    var  uId="u007";//!!!!!!!!!!!!!!!!!!!!!至于老师的ID 到时候应该是从Session里面取
                    $.ajax({
                        url: "/checking/viewKaoqin?officeId="+officeId,
                        dataType:"json",
                        success: jiexiJson(json)
                    })
                })
                jiexiJson(json);
            }
        });
    }

    /**
     * 将服务器响应的数据进行解析
     * @param json
     */
    function jiexiJson(json){
        $(this).data("kaoqinResultsVO",json);
        var kaoqinResults = json["kaoqinResults"];
        var events=[];
        var lateDates=[];
        var absenteeismDates=[];//矿工日期
        //取出考勤结果中迟到人员的日期存入dates数组和矿工日期
        for (var i=0;i<kaoqinResults.length;i++){
            if(kaoqinResults[i].status==0){
                var date = kaoqinResults[i].date;
                var split = date.trim().split(" ");
                lateDates.push(split[0]);
            }
            if(kaoqinResults[i].status==2){
                var date = kaoqinResults[i].date;
                var split = date.trim().split(" ");
                absenteeismDates.push(split[0]);
            }
        }
        //根据日期动态创建有迟到得人
        var groupOfLateDates = unique1(lateDates);
        for (var i=0;i<groupOfLateDates.length;i++){
             var e={
                id: i+"",
                title: groupOfLateDates[i]+' : 迟到人员名单',
                start: groupOfLateDates[i],
                color: "yellow"
            }
            events.push(e);
        }
        //根据日期动态创建有旷工得人
        var groupOfAbsenteeismDate=unique1(absenteeismDates)
        for (var i=0;i<groupOfAbsenteeismDate.length;i++){
            e={
                id: i+"",
                title: groupOfAbsenteeismDate[i]+' : 旷工人员名单',
                start: groupOfAbsenteeismDate[i],
                color: "red"
            }
            events.push(e);
        }
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
            eventClick: function () {
                var e = $(this);
                var title = e.find("span").eq(0).html();
                var date = title.trim().split(":")[0].trim();
               /* var mingdan=[];//该天迟到名单
                var mingdan2=[];//该天旷工名单*/
                var isAbsenteeism = (e.context.attributes[1].nodeValue.indexOf("border-color: red") != -1); //判断是否为旷工
/*                //筛选该天的名单
                for (var i=0;i<kaoqinResults.length;i++){
                    var d = kaoqinResults[i].date.split(" ")[0];
                    var s = kaoqinResults[i].status;
                    if (d==date && !isAbsenteeism && s==0 ){
                            mingdan.push({
                                id:kaoqinResults[i].userId,
                                name:kaoqinResults[i].username
                            })
                    }else {
                        mingdan.push({
                            id:kaoqinResults[i].userId,
                            name:kaoqinResults[i].username
                        })
                    }
                }*/
                layer.open({
                    type: 2,
                    title: '迟到人员名单',
                    content: '/checking/getMingDan?isAbsenteeism='+isAbsenteeism+"&officeId="+$("#sel").val()+"&date="+date,
                    btn: ['确定', '取消'],
                    yes: function (index, layero) {
                       /* layer.confirm('确定修改?', {icon: 3, title: '提示'}, function (index) {

                            layer.msg('已提交', {
                                time: 1000
                            });

                        });*/
//                        console.info(window[layero.find('iframe')[0]['name']].mingDan());//方法一
                        var mingDan = $(layero).find("iframe")[0].contentWindow.mingDan();//方法二
//                        console.info(JSON.stringify(mingDan))
                        $.ajax({
                            type: "POST",
                            url: "/checking/xiugaiKaoqin",
                            data: JSON.stringify(mingDan),
                            contentType:"application/json;charset=utf-8",
                            dataType:"json",
                            success: function(msg){
//                               layer.msg("修改成功",{time:5000});
                                alert("修改成功")
//                               sleep(1000);
                               window.location.href="/page/calendar";
                            }
                        });
                        layer.close(index);
                    },
                    btn2: function (index, layero) {
                        layer.close(index);
                    },
                    area: ['800px', '500px']
                })
            },
            events: events
        })
    }

    /**
     * 将日期进行装再一个数组里面，里面得元素不能重复
     * @param arr
     * @returns {Array}
     */
    function unique1(arr){
        var hash=[];
        for (var i = 0; i < arr.length; i++) {
            if(hash.indexOf(arr[i])==-1){
                hash.push(arr[i]);
            }
        }
        return hash;
    }

    function sleep(numberMillis) {
        var now = new Date();
        var exitTime = now.getTime() + numberMillis;
        while (true) {
            now = new Date();
            if (now.getTime() > exitTime)
                return;
        }
    }
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<%--<script src="" type="text/javascript" charset="utf-8"></script>--%>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:45 GMT -->

</html>