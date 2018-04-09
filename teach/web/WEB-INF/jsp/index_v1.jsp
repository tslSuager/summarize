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
    <%--<link href="/static/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">--%>
    <link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script src="/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/js/pullListTree.js"></script>
    <script>

        $(function () {

            //初始化下拉框插件
            initPullListTree("/office/getAllArea",1, 2,function () {
                
            });//一个参数 开始的级别  第二参数 有几个下拉框

            /**
             *获得的该老师管理的所有当月创建的班级
             */
            $.get("/office/getAllClassByTeacherAndDate",function (msg) {
                var classes =msg['classes'];
                $.each(classes,function (i,each) {
                    $('.table').append('<tr id="'+each['id']+'">' +
                        '                                <td>'+each['name']+'</td>\n' +
                        '                                <td>'+each['createTime']+'</td>\n' +
                        '                                <td>'+each['parentId']+'</td>'+
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

            /**
             *点击日期区间旁的搜索按钮，获得该老师管理的所有在该时间段创建的班级
             */
            $("#selectByDate").click(function () {
                $(".table").find("tbody").find("tr").remove();
                var date1 = $("#startDate").val();
                var date2 = $("#endDate").val();
                $.get("/office/getAllClassByTeacherByDate",{date1,date2},function (msg) {
                    var classes = msg['classes'];
                    $.each(classes,function (i,each) {
                        $('.table').append('<tr id="'+each['id']+'">' +
                            '                                <td>'+each['name']+'</td>\n' +
                            '                                <td>'+each['createTime']+'</td>\n' +
                            '                                <td>'+each['parentId']+'</td>'+
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

            /**
             *点击区域下拉列表旁的搜索按钮，获得该老师管理的所有在该区域内的班级
             */
            $("#selectByArea").click(function () {
                $(".table").find("tbody").find("tr").remove();
                var pId = $("#pullListTree").data("selectAreaId");
               $.get("/office/getClassByTeacherByArea",{pId},function (msg) {
                   var classes = msg['classes'];
                   $.each(classes,function (i,each) {
                       $('.table').append('<tr id="'+each['id']+'">' +
                           '                                <td>'+each['name']+'</td>\n' +
                           '                                <td>'+each['createTime']+'</td>\n' +
                           '                                <td>'+each['parentId']+'</td>'+
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
               },"json") ;
            });

            /**
             * 点击删除班级按钮删除某班级
             */
            $('body').on("click",".deleteClass",function () {
                var classId = $(this).parent().parent().attr("id");
                layer.confirm('您确认要删除吗？', {
                    btn: ['是滴','再想想'] //按钮
                }, function(){
                    $.get("/office/deleteClass",{classId},function () {
                        layer.msg('删除成功', {icon: 1});
                        $("#"+classId+"").remove();
                    });
                }, function(){
                    layer.msg('也可以这样', {
                        time: 1000
                    });
                });
            });

            /**
             * 点击添加班级按钮添加一个班级
             */
            $('#addClass').click(function () {
                layer.open({
                    type: 2,
                    title: '添加班级',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['30%', '50%'],
                    content: '/addClass.jsp',
                    btn:['完成','算了'],
                    yes:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var school = body.find("#pullListTree").find("select").eq(1).val();
                        var name = body.find("#name").val();
                        console.info(body);
                        function p(s) {
                            return s < 10 ? '0' + s: s;
                        }

                        var myDate = new Date();//获取当前年
                        var year=myDate.getFullYear();//获取当前月
                        var month=myDate.getMonth()+1;//获取当前日
                        var date=myDate.getDate();
                        var h=myDate.getHours();       //获取当前小时数(0-23)
                        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                        var s=myDate.getSeconds();
                        var now=year+'-'+p(month)+"-"+p(date)+" "+p(h)+':'+p(m)+":"+p(s);

                        $.get("/office/addClass",{school,name},function () {
                            $('.table').append('<tr>\n' +
                                '                                <td>'+name+'</td>\n' +
                                '                                <td>'+now+'</td>\n' +
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
                                '                                           <option class="11">按学号</option>\n' +
                                '                                           <option class="22">按手机号</option>\n' +
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

            /**
             * 点击查看班级信息，跳转页面，可执行分班操作
             */
            $("body").on("click",".checkClassInfo",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '班级信息',
                    shadeClose: true,
                    shade: 0,
                    area: ['100%', '100%'],
                    content: '/classInfo.jsp?cid='+cid,
                    btn:['完成','算了'],
                    yes:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var stus1 = body.find("#right").find(".btn-success");
                        var stus2 = body.find("#left").find(".btn-success");
                        var num1 = stus1.length;
                        var num2 = stus2.length;
                        console.info(num1);
                        console.info(num2);
                        layer.confirm('确定修改吗',{
                            btn:['确定','再想想']
                        },function () {
                            if (num2>0){
                                for (var i = 0;i<num2;i++){
                                    var id = stus2[i].id;
                                    var gid = cid;
                                    $.get("/user/addStuToGroup",{id,gid},function (msg) {
                                    });
                                }
                            }
                            if (num1>0){
                                for (var i = 0;i<num1;i++){
                                    var id = stus1[i].id;
                                    var gid = cid;
                                    $.get("/user/deleteStuByGroup",{id,gid},function (msg) {
                                    });
                                }
                            }
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

            /**
             * 点击查看小组信息，跳转页面，可执行分组操作
             */
            $("body").on("click",".checkGroupInfo",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '小组信息',
                    shadeClose: true,
                    shade: 0,
                    area: ['100%', '100%'],
                    content: '/groupInfo.jsp?cid='+cid,
                    btn:['完成','算了'],
                    yes:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var stus1 = body.find("#right").find(".btn-success");
                        var stus2 = body.find("#left").find(".btn-success");
                        var num1 = stus1.length;
                        var num2 = stus2.length;
                        layer.confirm('确定修改吗',{
                            btn:['确定','再想想']
                        },function () {
                            if (num2>0){
                                for (var i = 0;i<num2;i++){
                                    var id = stus2[i].id;
                                    var gid = body.find("#"+id+"").parent().attr("id");
                                    $.get("/user/addStuToGroup",{id,gid},function (msg) {
                                    });
                                }
                            }
                            if (num1>0){
                                for (var i = 0;i<num1;i++){
                                    var id = stus1[i].id;
                                    var gid = stus1[i].name;
                                    $.get("/user/deleteStuByGroup",{id,gid},function (msg) {
                                    });
                                }
                            }
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

            /**
             * 点击匹配考勤规则按钮，跳转页面，分配改班级学生的考勤规则
             */
            $("body").on("click",".matchAttendance",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '匹配考勤规则',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['100%', '100%'],
                    content: '/matchClassAttendance.jsp?cid='+cid,
                    btn:['完成','算了'],
                    yes:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var stus1 = body.find("#right").find(".btn-success");
                        var stus2 = body.find("#left").find(".btn-success");
                        var num1 = stus1.length;
                        var num2 = stus2.length;
                        layer.confirm('确定修改吗',{
                            btn:['确定','再想想']
                        },function () {
                            if (num2>0){
                                for (var i = 0;i<num2;i++){
                                    var id = stus2[i].id;
                                    var rid = body.find("#"+id+"").parent().attr("id");
                                    $.get("/user/updateStuWithRule",{id,rid},function (msg) {
                                    });
                                }
                            }
                            if (num1>0){
                                for (var i = 0;i<num1;i++){
                                    var id = stus1[i].id;
                                    var rid =null;
                                    $.get("/user/updateStuWithRule",{id,rid},function (msg) {
                                    });
                                }
                            }
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

            /**
             * 点击修改班级按钮，可修改班级名称
             */
            $("body").on("click",".reviseClass",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '修改班级',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['30%', '50%'],
                    content: '/reviseClass.jsp',
                    btn:['确认修改','算了'],
                    btn1:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var name = body.find("input").val();
                        $.get("/office/reviseClassName",{name,cid},function () {
                        });
                        $("#"+cid+"").find("td").eq(0).text(name);
                        layer.msg('修改成功');
                    },
                    btn2:function (index,layero) {
                        layer.close(index);
                    }
                });
            });

            /**
             * 点击匹配教学计划按钮，跳转页面，可为该班级匹配教学计划
             */
            $("body").on("click",".matchTeachingPlan",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '教学计划',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['30%', '50%'],
                    content: '/mathcTeachingPlan.jsp?cid='+cid,
                    btn:['确认绑定','算了'],
                        yes:function (index,layero) {
                            var body = layer.getChildFrame('body', index);
                            layer.confirm('确定绑定吗',{
                                btn:['确定','再想想']
                            },function () {
                                var id = body.find("option:selected").attr("id");
                                $.get("/teaching/addTeachingToClass",{id,cid},function () {
                                });
                                layer.close(index);
                                layer.msg('绑定成功');
                            },function () {
                                layer.msg('好好想想');
                            });
                        },
                    btn2:function (index,layero) {
                        layer.close(index);
                    }
                });
            });

            /**
             * 点击增加教师按钮，为该班级添加老师
             */
            $("body").on("click",".addTeacher",function () {
                var cid = $(this).parent().parent().attr("id");
                layer.open({
                    type: 2,
                    title: '添加教师',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['30%', '50%'],
                    content: '/addTeacher.jsp?cid='+cid,
                    btn:['确认添加','算了'],
                    yes:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var teacher = body.find(".btn-warning");
                        var num = teacher.length;
                        for (var i=0;i<num;i++){
                            var id = teacher[i].id;
                            $.get("/user/addTeacherToClass",{id,cid},function (msg) {
                            });
                        }
                        console.info(num);
                        layer.close(index);
                        layer.msg('添加成功');
                    },
                    btn2:function (index,layero) {
                        layer.close(index);
                    }
                });
            });

            /**
             * 点击初始成绩按钮，为该班学生初始化平时成绩
             */
            $("body").on("click",".initialization",function () {
                var cid = $(this).parent().parent().attr("id");
                var t = $(this);
                console.info(t);
                layer.open({
                    type: 2,
                    title: '初始成绩',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['30%', '50%'],
                    content: '/Initialization.jsp',
                    btn:['确认','算了'],
                    btn1:function (index,layero) {
                        var body = layer.getChildFrame('body', index);
                        var Tgrade = body.find(".initScore").val();
                        var Cgrade = body.find(".subScore").val();
                        $.get("/user/InitGrade",{Tgrade,Cgrade,cid},function (msg) {
                            var message = msg['message'];
                            if (message=="success"){
                                layer.msg('初始成功');
                            }else {
                                layer.msg('该班已初始化过成绩');
                            }
                        });
                    },
                    btn2:function (index,layero) {
                        layer.close(index);
                    }
                });
            });

            /**
             * 点击创建账号为没有创建账号的学生创建账号
             */
            $("body").on("click",".createNumber",function () {
                var cid = $(this).parent().parent().parent().attr("id");
                var id = $("body").find("option:selected").eq(2).text();
                $.get("/user/createNum",{cid,id},function (msg) {
                    var message = msg['message'];
                    if (message=='success'){
                        parent.layer.msg('已注册成功');
                    }else if (message=='error'){
                        parent.layer.msg('该班所有成员已注册了账号无需注册');
                    }
                });
            });
        });
    </script>
</head>

<body class="gray-bg">
<div class="row  border-bottom white-bg dashboard-header">
    <div class="row">
        <div class="form-group col-sm-5">
            <div class="form-group col-sm-7" id="data_5">
                <div class="input-daterange input-group" id="datepicker">
                    <input type="text" class="input-sm form-control" name="start" value="2018-3-9" id="startDate"/>
                    <span class="input-group-addon">到</span>
                    <input type="text" class="input-sm form-control" name="end" value="2018-3-9" id="endDate"/>
                </div>
            </div>
            <div class="input-group col-sm-1">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary" id="selectByDate">搜索</button>
                    </span>
            </div>
            <div class="col-sm-4"></div>
        </div>
        <div class="form-group draggable col-sm-5">
            <div class="col-sm-9">
                <div id="pullListTree"></div>
            </div>
            <div class="input-group col-sm-1">
                <span class="input-group-btn">
                    <button type="button" class="btn btn-primary" id="selectByArea">搜索</button>
                </span>
            </div>
            <div class="col-sm-2"></div>
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
<%--<script src="/static/js/plugins/nouslider/jquery.nouislider.min.js"></script>--%>
<script src="/static/js/plugins/switchery/switchery.js"></script>
<script src="/static/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/static/js/plugins/cropper/cropper.min.js"></script>
<%--<script src="/static/js/demo/form-advanced-demo.min.js"></script>--%>


</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/index_v1.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:30 GMT -->
</html>
