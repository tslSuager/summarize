<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="row  border-bottom white-bg dashboard-header">
    <div class="text-center">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-1 m-b-xs">
                <select class=" form-control input-s-sm inline text-center">
                    <option value="0">学号</option>
                    <option value="1">姓名</option>
                </select>
            </div>
            <div class="col-sm-6 "></div>
            <div class="col-sm-3">
                <div class="input-group">
                    <input type="text" placeholder="请输入关键词" class="input-sm form-control"> <span
                        class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary" id="soushuo"> 搜索</button> </span>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
            <table class="table table-bordered table-hover text-center">
                <thead>
                <tr>
                    <th class="text-center">学号</th>
                    <th class="text-center">姓名</th>
                    <th class="text-center">班级</th>
                    <th class="text-center">专业</th>
                </tr>
                </thead>
                <c:forEach items="${users}" var="u">
                <tr class="" name="${u.id}">
                    <td>${u.stuNumber}</td>
                    <td>${u.name}</td>
                    <td>${u.shixunZhuanye}</td>
                    <td>${u.daxueZhuanye}</td>
                </tr>
                </c:forEach>
            </table>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
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
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    $(function () {
        $.each($("tr:not(':first')"), function () {
            $(this).click(function () {
                var id = $(this).attr("name");
                window.location.href="${pageContext.request.contextPath}/experience/userExperience?userId="+id;
            })
        })

        $("#soushuo").click(function () {
            window.location.href="${pageContext.request.contextPath}/user/getClassUser";
        })
    })


</script>