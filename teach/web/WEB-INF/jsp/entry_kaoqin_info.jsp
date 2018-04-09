<%--
  Created by IntelliJ IDEA.
  User: 15842
  Date: 2018/3/7
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:01 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 数据表格</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <%--<link href="/static/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">--%>
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

    <link href="/static/high_layer/layui.css" rel="stylesheet">
    <link href="/static/high_layer/layer.css" rel="stylesheet">

    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont.css" rel="stylesheet">
    <link href="/static/css/icon/iconfont_upload.css" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>个人考勤信息 <small>录入</small></h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="table_data_tables.html#">选项1</a>
                            </li>
                            <li><a href="table_data_tables.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                       <div id="exampleToolbar" role="group" >
                           <form action="/checking/downloadKaoqinNUmberFile" id="downForm">
                           <%--<div id="pullListTree" style="display: inline"></div>--%>
                               <label for="class">班级：</label>
                           <select id="class" class="form-control" name="officeId" style="display: inline;width: 150px">
                           </select>
                           <%--<button type="button" id="btn-add" class="btn btn-outline btn-default">
                               <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                           </button>
                           <button type="button" id="btn-update" class="btn btn-outline btn-default">
                               <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                           </button>
                           <button type="button" id="btn-del" class="btn btn-outline btn-default">
                               <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                           </button>--%>
                               <span style=" margin-top: 100px;display: inline">
                                        <i class="iconfont icon-xiazai" style="font-size: 30px;margin-left: 10px;" id="download"></i>
                                        <span class="icon-name" p-id="1019">
                                            <span p-id="1020">
                                                <i class="iconfont icon-shangchuan" style="font-size: 34px" id="upload"></i>
                                                <input type="file" class="form-control" id="file" style="width:150px;display:inline" >
                                            </span>
                                        </span>
                               </span>
                               </form>
                       </div>
                       <table id="exampleTableToolbar" data-mobile-responsive="true">
                           <thead>
                           <tr>
                               <th>用户ID</th>
                               <th>姓名</th>
                               <th>昵称</th>
                               <th>考勤工号</th>
                           </tr>
                           <tbody id="table_data">
                                <tr class="gradeA odd" hidden="hidden"><td>测试2</td><td>测试2</td><td>计科1班</td><td>测试2</td></tr>
                                <%--<tr class="gradeA odd"><td>测试2</td><td>测试2</td><td>计科2班</td><td>测试2</td></tr>
                                <tr class="gradeA odd"><td>测试2</td><td>测试2</td><td>计科3班</td><td>测试2</td></tr>--%>
                           </tbody>
                       </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script>

    function init() {
        for (var i = 0; i < 100; i++) {
//            $(".table-sort").append($("<tr>").addClass("text-c").add("even").attr("role", "row").append(  $("<td>").html("14101010210（测试数据）").addClass("sorting_1")  ).append($("<td>").html( "姓名（测试数据）")).append(  $("<td>").html("班级（测试数据）").addClass("sorting_1")  ).append(  $("<td>").html("四川野鸡大学（测试数据）").addClass("sorting_1")  ).append(  $("<td>").html(Math.floor(Math.random() * 1000)+"（测试数据）").addClass("sorting_1")  )  )
            $("#exampleTableToolbar").find("tbody:eq(0)").append($("<tr>").attr("class","gradeA odd").append($("<td>").html("测试"+(i+1 ))  ).append($("<td>").html("测试"+(i+1))  ).append($("<td>").html("测试"+(i+1))  ).append($("<td>").html("测试"+(i+1))  ) )
        }
    }
    function modify () {
        var $tbodyData = $("#table_data:eq(0) > tr");
//        console.info($tbodyData);
        //每一行
        var isdblclick=true;
        for (var i=0;i<$tbodyData.length;i++){
            var tds = $($tbodyData[i]).find("td");
            //每一个单元格
            for (var j=3;j<tds.length;j++){
                (function (jj) {
                    $(tds[jj]).dblclick(function () {
                        if (isdblclick){
                            isdblclick=false;
                            var td=$(this);
                            var v = td.html();
                            var $input = $("<input>");
                            td.html( $input.attr("class","form-control input-sm").css("width","150px").val(v)  );

                            $input.focus().blur(function () {
//                                console.info("失去");
                                var v = $(this).val();
                                td.html(v);
                                isdblclick=true;
                            });
                        }
                    });
                })(j);
            }
        }
    }
    function addbtn () {
//        $("#DataTables_Table_0_filter > label").eq(0).before("<button class='btn btn-sm btn-primary pull-right m-t-n-xs' style='margin-top: 0px;margin-left: 10px'>一键关联</button>");
    }
    function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};
    function initpage() {
        $.ajax({
            url: "some.php",
            data: "name=John&location=Boston",
            success: function(msg){
                alert( "Data Saved: " + msg );
            }
        });
    }
    $(function () {
        modify();
        initpage()
    })

</script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<%--<script src="/static/js/demo/layer-demo.min.js"></script>--%>
<%--<script src="/static/js/pullListTree.js"></script>--%>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",});
        initData();
        //    选中某个班未关联考勤工号的人
    });
    function initData(){
        $.ajax({
            url: "/office/getClass",
            dataType: "json",
            success: function(json){
                //解析json数据
                var allClass = json["allClass"];
                var $class = $("#class");
                for(var i=0;i<allClass.length;i++){
                    var id = allClass[i].id;
                    var name = allClass[i].name;
                    $class.append($("<option>").attr("value",id).html(name) )
                }
                //设置选择班级时候的事件
                $class.change(function () {
                    $.ajax({
                        url: "/user/getUserByClassIdNoKaoqinNum?id="+$(this).val(),
                        dataType: "json",
                        success: function(json){
                            //解析每个班未关联考勤工号的人
                            var tableData = $("#table_data");
                            tableData.html("").var;//
                            for (var i=0;i<json.length;i++){
                                var id = json[i].id;
                                var name = json[i].name;
                                var niname = json[i].niname;
                                var kaoqinCode = json[i].kaoqinCode;
                                tableData.append($("<tr>").append($("<td>").html(id)).append($("<td>").html(name)).append($("<td>").html(niname)).append($("<td>").html(kaoqinCode)) )
                            }
                        }
                    });
                })
            }
        });
    }
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
<script src="/static/high_layer/layer.js"></script>
<script>
//    $(". btn-group:eq(0)").append("<button class='btn btn-w-m btn-primary' style='margin-left: 935px; margin-top:10px;'>一键关联</button>")
//    $(".btn-group:eq(1)").append($("<button>").attr("class","btn btn-outline btn-default").html("一键关联").css("margin-left","10px"));
    $(".btn-group:eq(1)").append($("<button>").attr("class","btn btn-outline btn-default").attr("href","javascript:;").html("按班级录入").css("margin-left","10px").on('click',function(){
        layer.prompt(function(val, index){
                layer.msg('得到了'+val);
                layer.close(index);
        });
        $(".layui-layer-title:eq(0)").html("请输入班级");
//        $("#table_data").find("tr:eq(0)").hide();
    }));
    $(function () {
        $("#file").hide();
        downloadClick();
        uploadClick();
    })
    //下载操作
    function downloadClick() {
        $("#download").click(function () {
            $("#downForm").submit();
        })
    }
    //上传操作
    function uploadClick() {
        $("#upload").click(function () {
            $("#file").show();
            var file = document.getElementById("file").files[0];
            if (typeof (file) == "undefined" || file.size <= 0) {
                layer.msg("请选择文件");
                return;
            }
            var formFile = new FormData();
            formFile.append("action", "/checking/uploadKaoqinNUmberFile");
            formFile.append("file", file); //加入文件对象
            $.ajax({
                url: "/checking/uploadKaoqinNUmberFile",
                data: formFile,
                type: "Post",
                dataType: "json",
                cache: false,//上传文件无需缓存
                processData: false,//用于对data参数进行序列化处理 这里必须false
                contentType: false, //必须
                success: function (result) {
                    $("#file").hide();
                    alert("上传完成!");
                },
            })
        })
    }
</script>

