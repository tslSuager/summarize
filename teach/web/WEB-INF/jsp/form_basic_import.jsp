<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>用户信息录入</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="/static/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="/static/plugins/fileUpload/css/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="/static/plugins/fileUpload/css/fileUpload.css" rel="stylesheet" type="text/css">
</head>
<body class="gray-bg">
<div style="margin-top: 100px"></div>
<div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-3">
        <div class="" style="margin-top: 25px">
            <form action="/user/downloadMingdanModel">
            <a class="btn btn-primary" style="margin-right: 20px" href="/page/form_basic">单人信息录入</a>

            <button class="btn btn-primary" type="submit">模板下载</button>
            </form>
        </div>
        <div style="margin-top: 25px">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>文件上传</h5>
                </div>
                    <div class="ibox-content">
                        <div id="fileUploadContent" class="fileUploadContent"></div>
                        <button class="btn btn-primary" onclick="testUpload()" >提交</button>
                    </div>

            </div>
        </div>

    </div>
    <div class="col-sm-5"></div>
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
<script type="text/javascript" src="/static/plugins/fileUpload/js/fileUpload.js"></script>
<script>
    $("#fileUploadContent").initUpload({
        "uploadUrl":"/user/uploadMingdanModel",//上传文件信息地址
        //"size":350,//文件大小限制，单位kb,默认不限制
        //"maxFileNumber":3,//文件个数限制，为整数
        //"filelSavePath":"",//文件上传地址，后台设置的根目录
        "beforeUpload":beforeUploadFun,//在上传前执行的函数
//        "onUpload":onUploadFun,//在上传后执行的函数
        //autoCommit:true,//文件是否自动上传
        "fileType":['xls','xlsx']//文件类型限制，默认不限制，注意写的是文件后缀
    });
    function beforeUploadFun(opt){
        opt.otherData =[{"name":"file","value":"zxm"}];
    }
    function onUploadFun(opt,data){
        alert(data);
        uploadTools.uploadError(opt);//显示上传错误
        uploadTools.uploadSuccess(opt);//显示上传成功
    }
    function testUpload(){
        var opt = uploadTools.getOpt("fileUploadContent");
        uploadEvent.uploadFileEvent(opt);
    }
    function download() {
        $("#download").click(function () {
            $.ajax({
                url:"/user/downloadMingdanModel",
                success:function () {

                }
            })
        })
    }
    $(function () {
        download();
    })
</script>




