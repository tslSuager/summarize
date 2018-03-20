<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/index_v1.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->


    <title>H+ 后台主题UI框架 - 主页示例</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="/static/css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="/static/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="/static/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">


    <script src="/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="/static/js/jquery.min.js"></script>

    <script>
        $(function () {
            $.get("/office/getAllClassByTeacherAndDate",function (msg) {
                var classes =msg['classes'];
                $.each(classes,function (i,each) {
                    $('.table').append('<tr>\n' +
                        '                                <td>'+asd+'</td>\n' +
                        '                                <td>'+dd+'</td>\n' +
                        '                                <td>'+ss+'</td>'+
                        '                                <td><button class="btn btn-outline btn-info checkClassInfo btn-xs" type="button" >查看班级信息</button></td>\n' +
                        '                                <td><button class="btn btn-outline btn-info checkGroupInfo btn-xs" type="button">查看小组信息</button></td>\n' +
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-success matchAttendance btn-xs" type="button" style="margin-right: 10px; ">匹配考勤规则</button>\n' +
                        '                                    <button class="btn btn-outline btn-success createAttendance btn-xs" type="button"><a href="/page/kaoqin_rule_detail">新建考勤规则</a></button>\n' +
                        '                                </td>\n' +
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-success matchTeachingPlan btn-xs" type="button" style="margin-right: 10px; ">匹配教学计划</button>\n' +
                        '                                    <button class="btn btn-outline btn-success createTeachingPlan btn-xs" type="button"><a href="/page/jiaoan/show_plan">新建教学计划</a></button></td>\n' +
                        '                                </td>\n' +
                        '                                <td>\n' +
                        '                                    <div class="col-sm-6">\n' +
                        '                                       <select class="form-control" name="select">\n' +
                        '                                           <option>按学号</option>\n' +
                        '                                           <option>按手机号</option>\n' +
                        '                                       </select>\n' +
                        '                                   </div>\n' +
                        '                                   <div class="col-sm-2"><button class="btn btn-outline btn-info createNumber btn-xs" type="button" style="margin-top: 4px">生成账号</button></div>\n' +
                        '                                <div class="col-sm-4"></div>\n'+
                        '                                </td>\n'+
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-info addTeacher btn-xs" type="button" style="margin-right: 10px; ">添加教师</button>\n' +
                        '                                    <button class="btn btn-outline btn-success initialization btn-xs" type="button" style="margin-right: 10px; ">初始成绩</button>'+
                        '                                    <button class="btn btn-outline btn-warning reviseClass btn-xs" type="button" style="margin-right: 10px; ">修改班级</button>\n' +
                        '                                    <button class="btn btn-outline btn-danger deleteClass btn-xs" type="button">删除班级</button>\n' +
                        '                                </td>\n' +
                        '                            </tr>');
                });
            },"json");
        });
    </script>

</head>

<body class="gray-bg">
<div class="row  border-bottom white-bg dashboard-header">
    <div class="row">
        <div class="form-group col-sm-5">
            <div class="form-group col-sm-7" id="data_5">
                <div class="input-daterange input-group" id="datepicker">
                    <input type="text" class="input-sm form-control" name="start" value="2018-3-9" />
                    <span class="input-group-addon">到</span>
                    <input type="text" class="input-sm form-control" name="end" value="2018-3-9" />
                </div>
            </div>
            <div class="input-group col-sm-1">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary">搜索</button>
                    </span>
            </div>
            <div class="col-sm-4"></div>
        </div>
        <div class="form-group draggable col-sm-5">
            <div class="col-sm-5">
                <label class="col-sm-3 control-label" style="margin-top: 8px">地区</label>
                <div class="col-sm-9">
                    <select class="form-control" name="">
                        <option>四川</option>
                        <option>重庆</option>
                        <option>新疆</option>
                    </select>
                </div>
            </div>
            <div class="col-sm-5">
                <label class="col-sm-3 control-label" style="margin-top: 8px">学校</label>
                <div class="col-sm-9">
                    <select class="form-control" name="">
                        <option>四川科技大学</option>
                        <option>四川大学</option>
                        <option>新疆大学</option>
                    </select>
                </div>
            </div>
            <div class="input-group col-sm-2">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary">搜索</button>
                    </span>
            </div>
        </div>
        <div  class="nav navbar-right col-sm-2">
            <button id="addClass" class="btn btn-info" type="button">
                <i class="fa fa-paste"></i>
                "添加班级"
            </button>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>班级名称</th>
                            <th>创建时间</th>
                            <th>学校</th>
                            <th>查看本班信息</th>
                            <th>查看本班小组信息</th>
                            <th>考勤规则</th>
                            <th>教学计划</th>
                            <th>生成账号</th>
                            <th>其他操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%--<tr id="1">
                            <td>Java</td>
                            <td>2018-3-19</td>
                            <td>四川理工学院</td>
                            <td><button class="btn btn-outline btn-info checkClassInfo btn-xs" type="button" id="button">查看班级信息</button></td>
                            <td><button class="btn btn-outline btn-info checkGroupInfo btn-xs" type="button">查看小组信息</button></td>
                            <td>
                                <button class="btn btn-outline btn-success matchAttendance btn-xs" type="button" style="margin-right: 10px; ">匹配考勤规则</button>
                                <button class="btn btn-outline btn-success createAttendance btn-xs" type="button"><a href="/page/kaoqin_rule_detail">新建考勤规则</a></button>
                            </td>
                            <td>
                                <button class="btn btn-outline btn-success matchTeachingPlan btn-xs" type="button" style="margin-right: 10px; ">匹配教学计划</button>
                                <button class="btn btn-outline btn-success createTeachingPlan btn-xs" type="button" ><a href="/page/jiaoan/show_plan">新建教学计划</a></button></td>
                            </td>
                            <td>
                                <div class="col-sm-6">
                                    <select class="form-control" name="select">
                                        <option>按学号</option>
                                        <option>按手机号</option>
                                    </select>
                                </div>
                                <div class="col-sm-2"><button class="btn btn-outline btn-info createNumber btn-xs" type="button" style="margin-top: 4px">生成账号</button></div>
                                <div class="col-sm-4"></div>
                            </td>
                            <td>
                                <button class="btn btn-outline btn-info addTeacher btn-xs" type="button" style="margin-right: 10px; ">添加教师</button>
                                <button class="btn btn-outline btn-success initialization btn-xs" type="button" style="margin-right: 10px; ">初始成绩</button>
                                <button class="btn btn-outline btn-warning reviseClass btn-xs" type="button" style="margin-right: 10px; ">修改班级</button>
                                <button class="btn btn-outline btn-danger deleteClass btn-xs" type="button">删除班级</button>
                            </td>
                        </tr>--%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script id="welcome-template" type="text/x-handlebars-template">
    </script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/content.min.js"></script>
<script src="/static/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/static/js/plugins/jsKnob/jquery.knob.js"></script>
<script src="/static/js/plugins/jasny/jasny-bootstrap.min.js"></script>
<script src="/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="/static/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
<script src="/static/js/plugins/nouslider/jquery.nouislider.min.js"></script>
<script src="/static/js/plugins/switchery/switchery.js"></script>
<script src="/static/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/static/js/plugins/cropper/cropper.min.js"></script>
<script src="/static/js/demo/form-advanced-demo.min.js"></script>
<script src="/static/js/welcome.min.js"></script>
<script type="text/javascript">
    $('body').on("click",".deleteClass",function () {
        layer.confirm('您确认要删除吗？', {
            btn: ['是滴','再想想'] //按钮
        }, function(){
            layer.msg('删除成功', {icon: 1});
        }, function(){
            layer.msg('也可以这样', {
                time: 1000
            });
        });
    });
    $('#addClass').click(function () {
        layer.open({
            type: 2,
            title: '添加班级',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '70%'],
            content: '/addClass.jsp',
            btn:['完成','算了'],
            yes:function (index,layero) {
                var body = layer.getChildFrame('body', index);
                var area = body.find("#area").val();
                var school = body.find("#school").val();
                var name = body.find("#name").val();
                $.get("/office/addClass",{school,name},function () {
                    $('.table').append('<tr>\n' +
                        '                                <td>'+name+'</td>\n' +
                        '                                <td>2018-3-20</td>\n' +
                        '                                <td>'+school+'</td>'+
                        '                                <td><button class="btn btn-outline btn-info checkClassInfo btn-xs" type="button" >查看班级信息</button></td>\n' +
                        '                                <td><button class="btn btn-outline btn-info checkGroupInfo btn-xs" type="button">查看小组信息</button></td>\n' +
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-success matchAttendance btn-xs" type="button" style="margin-right: 10px; ">匹配考勤规则</button>\n' +
                        '                                    <button class="btn btn-outline btn-success createAttendance btn-xs" type="button"><a href="/page/kaoqin_rule_detail">新建考勤规则</a></button>\n' +
                        '                                </td>\n' +
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-success matchTeachingPlan btn-xs" type="button" style="margin-right: 10px; ">匹配教学计划</button>\n' +
                        '                                    <button class="btn btn-outline btn-success createTeachingPlan btn-xs" type="button"><a href="/page/jiaoan/show_plan">新建教学计划</a></button></td>\n' +
                        '                                </td>\n' +
                        '                                <td>\n' +
                        '                                    <div class="col-sm-6">\n' +
                        '                                       <select class="form-control" name="select">\n' +
                        '                                           <option>按学号</option>\n' +
                        '                                           <option>按手机号</option>\n' +
                        '                                       </select>\n' +
                        '                                   </div>\n' +
                        '                                   <div class="col-sm-2"><button class="btn btn-outline btn-info createNumber btn-xs" type="button" style="margin-top: 4px">生成账号</button></div>\n' +
                        '                                <div class="col-sm-4"></div>\n'+
                        '                                </td>\n'+
                        '                                <td>\n' +
                        '                                    <button class="btn btn-outline btn-info addTeacher btn-xs" type="button" style="margin-right: 10px; ">添加教师</button>\n' +
                        '                                    <button class="btn btn-outline btn-success initialization btn-xs" type="button" style="margin-right: 10px; ">初始成绩</button>'+
                        '                                    <button class="btn btn-outline btn-warning reviseClass btn-xs" type="button" style="margin-right: 10px; ">修改班级</button>\n' +
                        '                                    <button class="btn btn-outline btn-danger deleteClass btn-xs" type="button">删除班级</button>\n' +
                        '                                </td>\n' +
                        '                            </tr>');
                });
                layer.close(index);
                layer.msg('添加成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });
    $("body").on("click",".checkGroupInfo",function () {
        layer.open({
            type: 2,
            title: '班级信息',
            shadeClose: true,
            shade: 0,
            area: ['100%', '100%'],
            content: '/groupInfo.jsp',
            btn:['完成','算了'],
            yes:function (index,layero) {
                layer.confirm('确定修改吗',{
                    btn:['确定','再想想']
                },function () {
                    layer.close(index);
                    layer.msg('修改成功');
                },function () {
                    layer.msg('好好想想');
                });
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });
    $("body").on("click",".matchAttendance",function () {
        layer.open({
            type: 2,
            title: '匹配考勤规则',
            shadeClose: true,
            shade: 0.8,
            area: ['100%', '100%'],
            content: '/matchClassAttendance.jsp',
            btn:['完成','算了'],
            btn1:function (index,layero) {
                layer.msg('添加成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });

    $("body").on("click",".reviseClass",function () {
        layer.open({
            type: 2,
            title: '修改班级',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '50%'],
            content: '/reviseClass.jsp',
            btn:['确认绑定','算了'],
            btn1:function (index,layero) {
                layer.msg('绑定成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });

    $("body").on("click",".matchTeachingPlan",function () {
        layer.open({
            type: 2,
            title: '教学计划',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '50%'],
            content: '/mathcTeachingPlan.jsp',
            btn:['确认绑定','算了'],
            btn1:function (index,layero) {
                layer.msg('绑定成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });

    $("body").on("click",".addTeacher",function () {
        layer.open({
            type: 2,
            title: '添加教师',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '50%'],
            content: '/page/addTeacher',
            btn:['确认添加','算了'],
            btn1:function (index,layero) {
                layer.msg('添加成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });

    $("body").on("click",".initialization",function () {
        layer.open({
            type: 2,
            title: '初始成绩',
            shadeClose: true,
            shade: 0.8,
            area: ['30%', '50%'],
            content: '/Initialization.jsp',
            btn:['确认','算了'],
            btn1:function (index,layero) {
                layer.msg('初始成功');
            },
            btn2:function (index,layero) {
                layer.close(index);
            }
        });
    });
</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/index_v1.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:30 GMT -->
</html>
