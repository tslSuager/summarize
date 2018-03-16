<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:16:41 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title>H+ 后台主题UI框架 - 主页</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">

    <div id="page-wrapper" class="gray-bg dashbard-1" >
        <div class="container m-t-md" >
            <video id="my-video" class="video-js" controls preload="auto" width="1000px" height="700px"
                   poster="/static/images/m.png" data-setup="{}">
                <source src="/static/video/jq22-sp.mp4" type="video/mp4">
            </video>
            <div class="panel panel-default m-t">
                <div class="panel-header">视频相关</div>
                <div class="panel-body">
                    <p class="f-16 mt-20" >&nbsp;&nbsp;&nbsp;&nbsp;拓思爱诺教育不管你是Java小白，还是Java零基础， 没关系，学完我们的教程，你会对Java的核心知识体系有清晰的理解，你将会站在高处鸟瞰Java，为接下来的学习打下坚实的基础。 本教程的每一个细节都经过精心专研，完全针对Java初学者。真正做到让零基础轻松入门，直到掌握java SE的高级部分。</p>
                    <%--table关于资料--%>

                    <table class="table table-border table-bordered table-hover mt-20">
                        <thead class="text-c">
                        <tr>
                            <th class="f-14">相关资料</th>
                            <th class="f-14">文件名</th>
                        </tr>
                        </thead>
                        <tbody class="text-c">
                        <tr>
                            <td>ppt</td>
                            <td><a href="javascript:void (0);">java基础.ppt</a></td>
                        </tr>
                        <tr>
                            <td>源代码</td>
                            <td><a href="javascript:void (0);">java源码.rar</a></td>
                        </tr>
                        <tr>
                            <td>文档</td>
                            <td><a href="javascript:void (0);">java基础.txt</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>



<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/static/js/plugins/layer/layer.min.js"></script>
<script src="/static/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="/static/js/contabs.min.js"></script>
<script src="/static/js/plugins/pace/pace.min.js"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:11 GMT -->
</html>
<script type="text/javascript" src="/static/video-js/video.min.js"></script>

<script type="text/javascript">
    var myPlayer = videojs('my-video');
    videojs("my-video").ready(function(){
        var myPlayer = this;
        myPlayer.play();
    });

</script>