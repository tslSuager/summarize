<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/7
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <table data-toggle="table" data-mobile-responsive="true"
                               class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">计划ID</div>

                                </th>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">计划名(点击计划名可进入评分界面，未完全实现)</div>

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
                                <%-- <th style="text-align: center" data-field="name" tabindex="0">
                                     <div class="th-inner ">状态</div>

                                 </th>--%>
                                <th style="text-align: center" data-field="name" tabindex="0">
                                    <div class="th-inner ">操作</div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${teachings}" var="t" varStatus="px">
                                <tr class="no-records-found planT" data-toggle="tooltip" data-placement="top" title=""
                                    data-original-title="这里是提示内容">
                                    <td style="text-align: center">${px.count}</td>
                                    <td class="planname" name="${t.id}" id="${t.officeName}" style="text-align: center">${t.planname}</td>
                                    <td style="text-align: center">${t.officeName}</td>
                                    <td style="text-align: center">${t.startTime}</td>
                                    <td style="text-align: center">${t.endTime}</td>
                                    <td style="text-align: center">${t.remarks}</td>
                                        <%--<td style="text-align: center">未完成</td>--%>
                                    <td style="text-align: center;width: 220px">
                                        <button type="button" class="btn btn-outline btn-default updateplan"
                                                name="${t.id}" id="${t.planname}">
                                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>
                                        </button>
                                        </button>
                                        <button type="button" class="btn btn-outline btn-default viewplan"
                                                name="${t.id}">
                                            <i class="glyphicon glyphicon-check" aria-hidden="true"></i>
                                        </button>
                                        <button type="button" class="btn btn-outline btn-default deleteplan"
                                                title="删除"
                                                name="${t.id}" id="${t.planname}">
                                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>


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


</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
//        tr:not(':first')
        /**
         * 点击查看某条计划
         */
        $.each($(".viewplan"), function () {
            $(this).click(function () {
                var jihuaId = $(this).attr("name");
                //此处写跳转到具体计划的详细阶段与任务界面
                <%--window.location.href="${pageContext.request.contextPath}/teaching/toviewJieduan?jihuaId="+jihuaId;--%>
                window.location.href="/jiaoxueplan_addjieduan.jsp?jihuaId="+jihuaId;

            });
        });

        /**
         * 点击计划名字进入评分界面
         */
        $.each($(".planname"),function () {
            $(this).click(function () {
                var jihuaId = $(this).attr("name");
                var officeName = $(this).attr("id");
                window.location.href="/page/jiaoan/jiaoxueplan?jihuaId="+jihuaId+"&officeName="+officeName;
            });

        });

        /**
         * 点击修改某条计划内容
         */
        $.each($(".updateplan"),function () {
            $(this).click(function () {
                var jihuaId = $(this).attr("name");
                var planName = $(this).attr("id");
                layer.open({
                    type: 2,
                    title: '修改计划：'+'&nbsp;&nbsp;&nbsp;&nbsp;'+planName,
                    content: '/update_plan.jsp',
                    btn: ['完成', '取消'],
                    yes: function (index) {
                        /**
                         *点击“完成”按钮，为某个班级修改一条教学计划
                         */
                        var body = layer.getChildFrame("body",index);
                        var planName = body.find("#planName").val();
                        var starttime = body.find("#start").val();
                        var endtime = body.find("#end").val();
                        var remarks = body.find("#remarks").val();
                        $.get("/teaching/updateTeaching?jihuaId="+jihuaId, {planName, starttime, endtime, remarks}, function (msg) {
                            window.location.href = "/teaching/viewTeaching";
                        });
                    },
                    btn2: function (index) {
                        layer.close(index);
                    },
                    shade: false,
                    area: ['800px', '600px']
                })
            });
        });

        /**
         * 点击删除某条计划（逻辑删除）
         */
        $.each($(".deleteplan"),function () {
            $(this).click(function () {
                var jihuaId = $(this).attr("name");
                var planName = $(this).attr("id");
                layer.confirm('确认要删除计划'+'"'+planName+'"'+'吗？', function (index) {
                    $.get("/teaching/deleteTeaching",{jihuaId}, function (msg) {
                        window.location.href = "/teaching/viewTeaching";
                    });
                    layer.msg('已删除', {icon: 1, time: 1000});
                });
            });
        });

        $("#new_plan").click(function () {
            layer.open({
                type: 2,
                title: '新建计划',
                content: '/plan_new.jsp',
                btn: ['完成', '取消'],
                yes: function (index) {
                    /**
                     *点击“完成”按钮，为某个班级添加一条新的教学计划
                     */
                    var body = layer.getChildFrame('body', index);
                    var planName = body.find("#planName").val();
                    var banji = body.find("#pullListTree").find("select").val();
                    var start = body.find("#start").val();
                    var end = body.find("#end").val();
                    var remarks = body.find("#remarks").val();
                    $.get("/teaching/insertTeaching", {planName, banji, start, end, remarks}, function (msg) {
                        window.location.href = "/teaching/viewTeaching";
                    });

                },
                btn2: function (index) {
                    layer.close(index);
                },
                shade: false,
                area: ['800px', '600px']
            })
        });


    });

</script>
</body>

</html>
