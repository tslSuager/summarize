<%--
  Created by IntelliJ IDEA.
  User: wuhan
  Date: 2018/3/18
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Initialization</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>
<div class="row">
    <div class="form-group">
        <label class="col-sm-3 control-label">初始分数:</label>
        <div class="col-sm-8">
            <input type="text" placeholder="分数" class="form-control" name="initScore">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">一次扣分数:</label>
        <div class="col-sm-8">
            <input type="text" placeholder="分数" class="form-control" name="subScore">
        </div>
    </div>
</div>
</body>

<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</html>
