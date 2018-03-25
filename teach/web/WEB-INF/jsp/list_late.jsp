<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->


    <title>添加班级</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

    <style type="text/css">
        .buttonCss {
            margin: 10px;
        }

        #addStu {
            margin-top: 30px;
        }

        #deleteStu {
            margin-top: 200px;
        }

    </style>
</head>
<body>
<div class="row">
    <div class="col-sm-7 border">
        <div class="ibox float-e-margins">
            <div class="ibox-content" style="width: 800px;margin: 0 auto">
                    <button class="btn btn-outline btn-info chooseAll btn-xs buttonCss" type="button" name="">
                        全选
                    </button>
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content" id="data">
                            <c:forEach items="${mingdan}" varStatus="i" var="item" >
                                <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="" id="${item.id}">
                                    ${item.username}
                                </button>
                            </c:forEach>
                            <%--<button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>
                            <button class="btn btn-outline btn-info chooseStu btn-xs buttonCss" type="button" name="">
                                即可夜壶
                            </button>--%>
                        </div>
                        <hr/>
                        <div>
                            <h5 id="aa">备注:修改被选中学生考勤为正常.</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script id="welcome-template" type="text/x-handlebars-template"></script>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/content.min.js"></script>
<script src="/static/js/welcome.min.js"></script>
<script type="text/javascript">
    $(function () {
        initInfo();
//        parent.$('#data').html();
    });
    function initInfo() {
        $(".chooseStu").click(function () {
            if ($(this).hasClass("btn-info")) {
                $(this).removeClass("btn-info").addClass("btn-warning");
            } else if ($(this).hasClass("btn-warning")) {
                $(this).removeClass("btn-warning").addClass("btn-info");
            }
        });
        $(".chooseAll").click(function () {
            /*if ($(this).hasClass("btn-info")) {
                $(this).removeClass("btn-info").addClass("btn-warning").attr("id", Math.random());
            } else if ($(this).hasClass("btn-warning")) {
                $(this).removeClass("btn-warning").addClass("btn-info").removeAttr("id");
            }*/
            if($(":button").hasClass("btn-info")){
                $(":button").removeClass("btn-info").addClass("btn-warning").attr("id", Math.random());
            } else if ($(":button").hasClass("btn-warning")){
                $(":button").removeClass("btn-warning").addClass("btn-info").removeAttr("id");
            }
        });
    }
    function mingDan() {
        var buttons = $("#data").find("button");
        var  data=[];
        for (var i=0;i<buttons.length;i++){
            var btn = $(buttons[i]);
            if (btn.hasClass("btn-warning")){
                data.push(btn.attr("id"))
            }
        }
        return data;
    }
</script>
</body>
</html>
