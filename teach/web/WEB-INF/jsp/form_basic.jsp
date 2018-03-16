<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_basic.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>个人信息录入</h5>
                <div class="ibox-tools">
                    <a  class="btn btn-primary btn-xs" href="/page/form_basic_import">返回</a>
                </div>
            </div>
            <div class="ibox-content">
                <form class="form-horizontal" action="/user/addUser">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">姓名：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入姓名" class="form-control" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">性别：</label>
                        <div class="col-sm-8">
                            <select class="form-control m-b" name="sex">
                                <option>男</option>
                                <option>女</option>
                                <option>不男不女</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">身份证号码：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入身份证号码" class="form-control" name="personNo">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">大学：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入大学名字" class="form-control" name="daXue">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">学号：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入学生学号" class="form-control" name="personno">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">手机号码：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入手机号码" class="form-control" name="phone1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">大学专业：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="请输入专业" class="form-control" name="daxueZhuanye">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">实训专业技术：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="实训专业技术" class="form-control" name="shixunZhuanye">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">培训专业技术：</label>

                        <div class="col-sm-8">
                            <input type="text" placeholder="培训专业技术" class="form-control" name="peixunZhuanye">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-8">
                            <button class="btn btn-sm btn-white" type="submit">确认录入</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script>



</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_basic.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
</html>
