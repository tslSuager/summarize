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

        .btn-xs {
            margin-right: 5px;
        }
    </style>
    <jsp:include page="/WEB-INF/jsp/jiaoan/common/head.jsp"/>
    <jsp:include page="/WEB-INF/jsp/jiaoan/common/foot.jsp"/>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/icon/iconfont_add.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont_modify.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont_del.css" rel="stylesheet">

</head>
<body>
<div class="Hui-article">
    <div style="margin-left: 45%;margin-top: 30px"><span><h3>拓思爱诺考勤规则</h3></span></div>

    <div class="four steps second" style="margin-left: 10%;margin-top: 30px;width: 80%;float: left;margin-right: 10%"
         hidden>
        <span class="active step title">Java2班考勤规则</span>
        <span class="step"></span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" class="display" hidden>
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>规则详细情况</h5>
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
                            <div class="table-responsive">
                                <form action="/checking/addKaoqinDetail">
                                    <input type="text" name="id" hidden>
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>

                                            <th>日期</th>
                                            <th colspan="8" class="text-center">打卡时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr hidden>
                                            <td>星期一</td>
                                            <td>第一次</td>
                                            <td><span style="color: #0e9aef">17点11分</span>—<span style="color: #0e9aef">17点11分</span>&nbsp;&nbsp;
                                                (<span style="color: #0e9aef">(30)</span>)
                                            </td>
                                            <td>第二次</td>
                                            <td><span style="color: #0e9aef">17点11分</span>—<span style="color: #0e9aef">17点11分</span>&nbsp;&nbsp;
                                                (<span style="color: #0e9aef">(30)</span>)
                                            </td>
                                            <td hidden>第三次</td>
                                            <td hidden><span style="color: #0e9aef">17点11分</span>—<span
                                                    style="color: #0e9aef">17点11分</span>&nbsp;&nbsp; (<span
                                                    style="color: #0e9aef">(30)</span>)
                                            </td>
                                            <td hidden>第四次</td>
                                            <td hidden><span style="color: #0e9aef">17点11分</span>—<span
                                                    style="color: #0e9aef">17点11分</span>&nbsp;&nbsp;( <span
                                                    style="color: #0e9aef">(30)</span>)
                                            </td>
                                            <td><i class="iconfont  icon-xiugai"></i>&nbsp;&nbsp;<i
                                                    class="iconfont icon-ai-delete"></i></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <%--<div class="four steps" id="twois" style="margin-left: 10%;margin-top: 10px;width: 80%;float: left;margin-right: 10%">
        <span class="step"></span>
        <span id="span2" class="active step test">web前端考勤规则</span>
        <span class=" step"></span>
        <span class=" step"></span>
        <div style="margin-top: 0px;display: none" id="s2">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>考勤规则详细情况</h5>
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
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>

                                        <th>日期</th>
                                        <th colspan="4" class="text-center">打卡时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <td>星期一</td>
                                    <td>第一次</td>
                                    <td>17点11分——17点11分</td>
                                    <td>第二次</td>
                                    <td>17点11分——17点11分</td>
                                    <td>编辑删除</td>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>--%>


    <%-- <div class="four steps" style="margin-left: 10%;width: 80%;float: left;margin-right: 10%">
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
     </div>--%>

</div>
</body>
</html>
<jsp:include page="/WEB-INF/jsp/jiaoan/common/foot.jsp"/>
<jsp:include page="/WEB-INF/jsp/jiaoan/common/head.jsp"/>
<script src="/static/js/plugins/layer/laydate/laydate.js"></script>

<script>
    $(document).ready(function () {
        initInfo();
        dbClick();
    })

    function initInfo() {
        $.ajax({
            url: "/checking/getKaoqinAllRules",
            dataType: "json",
            success: function (json) {
                var HuiDiv = $(".Hui-article:eq(0)");
                for (var i = 0; i < json.length; i++) {
                    var rule = json[i];
                    var ruleDiv = $(".second:eq(0)").clone();
                    ruleDiv.data("ruleType", rule.ruleType);
                    var input = ruleDiv.find("form").eq(0).find("input").eq(0);
                    input.val(rule.id);
                    ruleDiv.find("div").eq(0).show();
                    var tbody = ruleDiv.find("tbody").eq(0);
                    //设置考勤详情
                    for (var j = 0; j < rule["kaoqinRuleDetails"].length; j++) {

                        var tr = tbody.find("tr").eq(0).clone();
                        tr.show();
                        tr.find("td").eq(0).data("id", rule["kaoqinRuleDetails"][j].id).html((rule["kaoqinRuleDetails"][j].date == null || rule["kaoqinRuleDetails"][j].date == "") ? formatWeekday(rule["kaoqinRuleDetails"][j].weekDay) : formatDate(rule["kaoqinRuleDetails"][j].date))
                        //设置一次打卡时间
                        tr.find("td").eq(2).find("span").eq(0).html(formatTime(rule["kaoqinRuleDetails"][j].brushStarttime1));
                        tr.find("td").eq(2).find("span").eq(1).html(formatTime(rule["kaoqinRuleDetails"][j].brushEndtime1));
                        tr.find("td").eq(2).find("span").eq(2).html(rule["kaoqinRuleDetails"][j].time1Wucha);
                        //设置二次打卡时间
                        tr.find("td").eq(4).find("span").eq(0).html(formatTime(rule["kaoqinRuleDetails"][j].brushStarttime2));
                        tr.find("td").eq(4).find("span").eq(1).html(formatTime(rule["kaoqinRuleDetails"][j].brushEndtime2));
                        tr.find("td").eq(4).find("span").eq(2).html(rule["kaoqinRuleDetails"][j].time1Wucha2);
                        //设置三四打卡次时间
                        if (rule["ruleType"] == 2 || rule["ruleType"] == 4) {
                            tr.find("td").eq(6).show().find("span").eq(0).html(formatTime(rule["kaoqinRuleDetails"][j].brushStarttime3));
                            tr.find("td").eq(6).show().find("span").eq(1).html(formatTime(rule["kaoqinRuleDetails"][j].brushEndtime3));
                            tr.find("td").eq(6).show().find("span").eq(2).html(rule["kaoqinRuleDetails"][j].time1Wucha3);
                            tr.find("td").eq(5).show()


                            tr.find("td").eq(8).show().find("span").eq(0).html(formatTime(rule["kaoqinRuleDetails"][j].brushStarttime3));
                            tr.find("td").eq(8).show().find("span").eq(1).html(formatTime(rule["kaoqinRuleDetails"][j].brushEndtime3));
                            tr.find("td").eq(8).show().find("span").eq(2).html(rule["kaoqinRuleDetails"][j].time1Wucha3);
                            tr.find("td").eq(7).show()
                        }//主要是为了展示好看些 要不然没有对其
                        else if (rule["ruleType"] == 1 || rule["ruleType"] == 3) {
                            tr.find("td").eq(9).before($("<td>")).before($("<td>")).before($("<td>")).before($("<td>"));
                        }
                        tbody.append(tr);
                    }
//                    tbody.append($("<i>").attr("class","iconfont icon-msnui-add-line add").css("font-size","30px").css("color","#73CDEF").click(addClick));//添加按钮
                    if (ruleDiv.data("ruleType") == 1 || ruleDiv.data("ruleType") == 3) {
                        tbody.append($("<tr>").append($("<td>").attr("colspan", "14").append($("<i>").attr("class", "iconfont icon-msnui-add-line add").css("font-size", "25px").css("color", "#73CDEF").css("margin-left", "94%").click(addClick))));//添加按钮
                    } else if (ruleDiv.data("ruleType") == 2 || ruleDiv.data("ruleType") == 4) {
                        tbody.append($("<tr>").append($("<td>").attr("colspan", "14").append($("<i>").attr("class", "iconfont icon-msnui-add-line add").css("font-size", "25px").css("color", "#73CDEF").css("margin-left", "97%").click(addClick))));//添加按钮
                    }
                    //设置标题
                    ruleDiv.show().find("span:eq(0)").html((rule["rulename"] == null || rule["rulename"] == "" ) ? '规则名为空' : rule["rulename"]).on("dblclick", function () {
                        var detail = $($(this).siblings(".display").eq(0));
                        if (detail.css("display") == 'none') {
                            detail.slideDown();
                        } else {
                            detail.slideUp();
                        }
                    });
                    HuiDiv.append(ruleDiv);


                }
                dbModify();
                subModifyAndDel();

            }
        });
    }

    //定义双击修改事件
    function dbModify() {
        var span=$("td >span");
        var isdblclick = true;
        for (var j = 3; j < span.length; j++) {
            (function (jj) {
                $(span[jj]).dblclick(function () {
                    if (isdblclick) {
                        isdblclick = false;
                        var td = $(this);
                        var v = td.html();
                        var $input = $("<input>");
                        td.html($input.attr("class", "form-control input-sm").css("width", "50px").val(v));
                        $input.focus().blur(function () {
//                                console.info("失去");
                            var v = $(this).val();
                            td.html(v);
                            isdblclick = true;
                        });
                    }
                });
            })(j);
        }

    }

    //定义提交修改和删除事件
    function subModifyAndDel() {
        var mo = $(".icon-xiugai");
        var del = $(".icon-ai-delete");
        for (var i = 0; i < mo.length; i++) {
            (function (i) {
                $(mo[i]).on("click", function () {
                    var kaoqinDetailId = $(this).parents("tr:eq(0)").find("td:eq(0)").data("id");
                    var span = $(this).parents("tr").eq(0).find("td >span");
                    var ruleType = $(this).parents("div .second").eq(0).data("ruleType");
                    var kaoqinDetail={
                        id:'',
                        weekDay:'',
                        date:'',
                        brushStarttime1:'',
                        brushEndtime1:'',
                        time1Wucha:'',
                        brushStarttime2:'',
                        brushEndtime2:'',
                        time1Wucha2:'',
                        brushStarttime3:'',
                        brushEndtime3:'',
                        time1Wucha3:'',
                        brushStarttime4:'',
                        brushEndtime4:'',
                        time1Wucha4:''
                    }
                    //初始化详情得打卡时间
                    for(var i=0;i<span.length;i++){
                        if (!$(span[i]).parents("td:eq(0)").is(":hidden")){
                            switch (i){
                                case 0:
                                    kaoqinDetail['brushStarttime1']=$(span[i]).html();break;
                                case 1:
                                    kaoqinDetail['brushEndtime1']=$(span[i]).html();break;
                                case 2:
                                    kaoqinDetail['time1Wucha']=$(span[i]).html();break;
                                case 3:
                                    kaoqinDetail['brushStarttime2']=$(span[i]).html();break;
                                case 4:
                                    kaoqinDetail['brushEndtime2']=$(span[i]).html();break;
                                case 5:
                                    kaoqinDetail['time1Wucha2']=$(span[i]).html();break;
                                case 6:
                                    kaoqinDetail['brushStarttime3']=$(span[i]).html();break;
                                case 7:
                                    kaoqinDetail['brushEndtime3']=$(span[i]).html();break;
                                case 8:
                                    kaoqinDetail['time1Wucha3']=$(span[i]).html();break;
                                case 9:
                                    kaoqinDetail['brushStarttime4']=$(span[i]).html();break;
                                case 10:
                                    kaoqinDetail['brushEndtime4']=$(span[i]).html();break;
                                case 11:
                                    kaoqinDetail['time1Wucha4']=$(span[i]).html();break;
                            }


                        }
                    }
                    //初始化id
                    kaoqinDetail["id"]=$(this).parents("tr:eq(0)").find("td:eq(0)").data("id");
                    $.ajax({
                        type:"post",
                        url: "/checking/updateKaoqinDetail",
                        data: kaoqinDetail,
                        success: function(msg){
                            layer.msg("修改成功！",{time:800});
                        }
                    });
                })
            })(i);
            //定义删除,逻辑删除
            (function (i) {
                $(del[i]).on("click", function () {
                    var kaoqinDetailId = $(this).parents("tr:eq(0)").find("td:eq(0)").data("id");
                    var kaoqinDetail={
                        id:kaoqinDetailId,
                        isDel:0
                    };
                    $.ajax({
                        type:"post",
                        url: "/checking/updateKaoqinDetail",
                        data:kaoqinDetail ,
                        success: function(msg){
                            layer.msg("删除成功！",{time:800});
                        }
                    });
                    $(this).parents("tr:eq(0)").remove();
                })
            })(i)
        }
    }

    //定义添加详情页面
    function addClick() {
        var last = $(this).parents("tr:eq(0)").siblings("tr").length;
        var tr = $(this).parents("tr:eq(0)").siblings("tr").eq(last - 1)
        var ruleType = $(this).parents("div .second").eq(0).data("ruleType");
        var newtr = tr.clone();

        newtr.find("td").eq(0).html($("<input class='form-control layer-date' id='dd' name='" + ((ruleType == 1 || ruleType == 2) ? 'kaoqinRuleDetails[0].weekDay' : 'kaoqinRuleDetails[0].date' ) + "' placeholder='请输入日期' style='width: 90px'>"));
        newtr.find("td").eq(2).find("span").eq(0).css("display", "inline-block").html($("<input class='form-control' placeholder='始'   name='kaoqinRuleDetails[0].brushStarttime1'  style='width: 40px'>"));
        newtr.find("td").eq(2).find("span").eq(1).css("display", "inline-block").html($("<input class='form-control' placeholder='终'   name='kaoqinRuleDetails[0].brushEndtime1'  style='width: 40px'>"));
        newtr.find("td").eq(2).find("span").eq(2).css("display", "inline-block").html($("<input class='form-control' placeholder='误差' name='kaoqinRuleDetails[0].time1Wucha'  style='width: 40px'>"));

        newtr.find("td").eq(4).find("span").eq(0).css("display", "inline-block").html($("<input class='form-control' placeholder='始'     name='kaoqinRuleDetails[0].brushStarttime2'  style='width: 40px'>"));
        newtr.find("td").eq(4).find("span").eq(1).css("display", "inline-block").html($("<input class='form-control' placeholder='终'     name='kaoqinRuleDetails[0].brushEndtime2'  style='width: 40px'>"));
        newtr.find("td").eq(4).find("span").eq(2).css("display", "inline-block").html($("<input class='form-control' placeholder='误差'   name='kaoqinRuleDetails[0].time1Wucha2'  style='width: 40px'>"));

        newtr.find("td").eq(6).find("span").eq(0).css("display", "inline-block").html($("<input class='form-control' placeholder='始'   name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].brushStarttime3' : '' ) + "'   style='width: 40px'>"));
        newtr.find("td").eq(6).find("span").eq(1).css("display", "inline-block").html($("<input class='form-control' placeholder='终'   name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].brushEndtime3' : '' ) + "'   style='width: 40px'>"));
        newtr.find("td").eq(6).find("span").eq(2).css("display", "inline-block").html($("<input class='form-control' placeholder='误差' name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].time1Wucha3' : '' ) + "'   style='width: 40px'>"));

        newtr.find("td").eq(8).find("span").eq(0).css("display", "inline-block").html($("<input class='form-control' placeholder='始'   name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].brushStarttime4' : '' ) + "' style='width: 40px'>"));
        newtr.find("td").eq(8).find("span").eq(1).css("display", "inline-block").html($("<input class='form-control' placeholder='终'   name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].brushEndtime4' : '' ) + "'   style='width: 40px'>"));
        newtr.find("td").eq(8).find("span").eq(2).css("display", "inline-block").html($("<input class='form-control' placeholder='误差' name='" + ((ruleType == 2 || ruleType == 4) ? 'kaoqinRuleDetails[0].time1Wucha4' : '' ) + "' style='width: 40px'>"));
        var length = newtr.find("td").length;
        if (length == 10) {
            newtr.find("td").eq(9).html("<button class='btn btn-sm btn-primary pull-center m-t-n-xs submit' type='submit' style='width:43px;margin-top: 3px '>提交</button>&nbsp;<button class='btn btn-sm btn-default pull-center m-t-n-xs cancle' style='width:43px;margin-top: 3px '>取消</button>")
        } else if (length == 14) {
            newtr.find("td").eq(13).html("<button class='btn btn-sm btn-primary pull-center m-t-n-xs submit' type='submit' style='width:45px;margin-top: 3px '>提交</button>&nbsp;<button class='btn btn-sm btn-default pull-center m-t-n-xs cancle' style='width:45px;margin-top: 3px '>取消</button>")
        }
        tr.after(newtr);
        cancleClick();
        /*laydate({
            elem: '#dd', //需显示日期的元素选择器
            event: 'click' //触发事件
        });*/
    }

    //定义取消事件
    function cancleClick() {
        var cancle = $(".cancle");
        for (var i = 0; i < cancle.length; i++) {
            (function (i) {
                $(cancle[i]).on("click", function () {
                    $(this).parents("tr:eq(0)").remove();
                })
            })(i)
        }
    }

    //定义双击事件
    function dbClick() {
        var title = $(".title");
        for (var i = 0; i < title.length; i++) {
            (function (i) {
                $(title[i]).dblclick(function () {
                    var detail = $($(this).siblings(".display").eq(0));
                    if (detail.css("display") == 'none') {
                        detail.slideDown();
                    } else {
                        detail.slideUp();
                    }
                });
            })(i)
        }
    }

    function formatWeekday(num) {
        switch (num) {
            case 1:
                return "星期一";
            case 2:
                return "星期二";
            case 3:
                return "星期三";
            case 4:
                return "星期四";
            case 5:
                return "星期五";
            case 6:
                return "星期六";
            case 7:
                return "星期日";
        }
    }

    function formatDate(str) {
        return str.split(" ")[0]
    }

    function formatTime(str) {
        return str.split(" ")[1].split(":")[0] + ":" + str.split(" ")[1].split(":")[1];
    }

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
        if (aa) {
            /*if($(obj).parents("div").parents("td").find(":button").hasClass("btn-xs")){
                $(obj).parent("div").parents("td").parents("tr").find(".status").find("button").remove();
                $(obj).clone().appendTo(".status");
            }else {*/
            var i = $("<i>").addClass("fa fa-check text-navy demo3").html("已阅");
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
            if ($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").length) {
                if ($(obj).parents("div").parents("td").parents("tr").find(".status:eq(0)").find(".btn-xs").html() == ($(obj)).html()) {
                    return
                } else {
                    $(obj).parents("div").parents("td").parents("tr").find(".status").find(":button").remove();
                    $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
                }
            } else {
                $(obj).parents("div").parents("td").parents("tr").find(".status").find("i").remove();
                $(obj).parents("div").parents("td").parents("tr").find(".status").append(i);
                $(obj).clone().appendTo($(obj).parents("div").parents("td").parents("tr").find(".status"));
            }
            ;

//                return false;
        }


        layer.open({
            type: 2,
            title: '成绩备注' + '&nbsp;&nbsp;&nbsp;&nbsp;' + '成绩为:' + $(obj).clone().html(),
            content: '/beizhu_chengji.jsp',
            btn: ['确定', '取消'],
            yes: function (index) {
                layer.close(index);
            },
            btn2: function (index) {
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
            yes: function (index) {
                layer.close(index);
            },
            btn2: function (index) {
                layer.close(index);
            },
            shade: false,
            area: ['600px', '300px']
        })
    })
</script>

<script>

</script>