<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>
<div>
    <div class="ibox-content">
        <div>
            <button id="reset1" class="btn btn-primary">返回</button>
        </div>
        <h2 class="text-center">XXX的个人经历</h2>
        <table class="table table-bordered text-center">
            <thead>
            <tr>
                <th class="text-center">呵呵呵</th>
                <th class="text-center">事件</th>
                <th class="text-center">时间</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>10001</td>
                <td>拉多了</td>
                <td>2018-1-1</td>
            </tr>
            <tr>
                <td>10001</td>
                <td>吃多了</td>
                <td>2018-1-1</td>
            </tr>
            <tr>
                <td>10001</td>
                <td>吐没了</td>
                <td>2018-1-1</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/peity/jquery.peity.min.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/demo/peity-demo.min.js"></script>
<script src="/static/js/plugins/jeditable/jquery.jeditable.js"></script>
<script src="/static/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script>
    $(function () {
        $("#reset1").click(function () {
            window.location.href = "page/student_find_jingli";
        })
    })
</script>