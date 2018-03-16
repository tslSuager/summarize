<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<style>
    .btn{
     margin-right: 10px;
    }
</style>
<link rel="shortcut icon" href="favicon.ico">
<link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/static/css/animate.min.css" rel="stylesheet">
<link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">


<body>
<div class="btn-group" style="margin-left: 200px; margin-top: 10px;margin-bottom: 10px;width: 100%">
    <h5 style="margin-left:-110px ;">批量评定成绩为:</h5>
    <%--<button class="btn btn-primary " type="button" style="margin-left: -100px">优
    </button>--%>

    <button class="btn btn-primary " type="button"
            onClick="dengji_pingding(this,'01')" href="javascript:;">优
    </button>
    <button class="btn btn-success  " type="button"
            onClick="dengji_pingding(this,'02')" href="javascript:;">良
    </button>
    <button class="btn btn-info  " type="button"
            onClick="dengji_pingding(this,'03')" href="javascript:;">中
    </button>
    <button class="btn btn-warning" type="button"
            onClick="dengji_pingding(this,'04')" href="javascript:;">及格
    </button>
    <button class="btn btn-danger" type="button"
            onClick="dengji_pingding(this,'05')" href="javascript:;">不及格
    </button>

</div>

<div class="say">
    <textarea rows="7" cols="80"></textarea>
</div>

</body>
</html>

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

<script>

    function dengji_pingding(obj, id) {
//        console.info($(obj).parent("div").find("button").length);
//        <button class="btn btn-primary " type="button" style="margin-left: -100px">优</button>
        console.info($(obj).parent("div").find("button:eq(0)").html());
        if ($(obj).parent("div").find("button").length == 6) {
            if ($(obj).parent("div").find("button:eq(0)").html() == $(obj).html()) {
                return
            } else {
                $(obj).parent("div").find("button:eq(0)").remove();
                $(obj).clone().attr("style", "margin-left: -100px").insertAfter("h5");
            }
        } else {
            $(obj).clone().attr("style", "margin-left: -100px").insertAfter("h5");
        }

        /*if($(obj).parent("div").find("button").length==5){
            $(obj).clone().attr("style","margin-left: -100px").insertAfter("h5");
        }else if ($(obj).parent("div").find("button").length==6){
            if ($(obj).parent("div").find("button:eq(0)").html()==$(obj).html()){
                return
            }else {
                alert("11");
                $(obj).parent("div").find("button:eq(0)").remove();
                $(obj).clone().attr("style","margin-left: -100px").insertAfter("h5");
            }
        }*/
    }
</script>