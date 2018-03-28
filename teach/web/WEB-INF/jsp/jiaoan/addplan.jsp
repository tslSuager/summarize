<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/mail_compose.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:10 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 写信</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="/static/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content" style="margin-left: 300px">
    <div class="row">
        <div class="col-sm-9 animated fadeInRight">
            <div class="mail-box-header">
                <h2>
                    添加作业
                </h2>
            </div>
            <div class="mail-box">
                <div class="mail-body">
                    <form class="form-horizontal" method="post" action="">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">发布人</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="张三">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">简介</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="mail-text h-200">
                    <div class="summernote">
                        <h2>1、最佳实践中，通常一个Xml映射文件，都会写一个Dao接口与之对应，请问，这个Dao接口的工作原理是什么？Dao接口里的方法，参数不同时，方法能重载吗？</h2>
                        <p>
                            答：Dao接口，就是人们常说的Mapper接口，接口的全限名，就是映射文件中的namespace的值，接口的方法名，就是映射文件中MappedStatement的id值，接口方法内的参数，就是传递给sql的参数。Mapper接口是没有实现类的，当调用接口方法时，接口全限名+方法名拼接字符串作为key值，可唯一定位一个MappedStatement，举例：com.mybatis3.mappers.StudentDao.findStudentById，可以唯一找到namespace为com.mybatis3.mappers.StudentDao下面id
                            = findStudentById的MappedStatement。
                            在Mybatis中，每一个select、insert、update、delete标签，都会被解析为一个MappedStatement对象。
                            Dao接口里的方法，是不能重载的，因为是全限名+方法名的保存和寻找策略。
                            Dao接口的工作原理是JDK动态代理，Mybatis运行时会使用JDK动态代理为Dao接口生成代理proxy对象，代理对象proxy会拦截接口方法，转而执行MappedStatement所代表的sql，然后将sql执行结果返回。
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="ibox-content">
                    <div id="file-pretty">
                        <div class="form-group" id="add_zuoye">
                            <label class="font-noraml">文件选择</label>

                            <input type="file" multiple="multiple" class="form-control">
                        </div>
                    </div>
                    <button class="btn btn-success btn-xs">继续添加</button>
                </div>
                <div class="mail-body text-right tooltip-demo">
                    <button class="btn btn-success btn-sm demo2">保存</button>
                    <button class="btn btn-warning btn-sm demo3">放弃</button>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/summernote/summernote.min.js"></script>
<script src="/static/js/plugins/summernote/summernote-zh-CN.js"></script>
<script>
    $(document).ready(function () {
        $(".demo2").click(function () {
            swal({title: "太帅了", text: "小手一抖就打开了一个框", type: "success"})
        });
        $(".demo3").click(function () {
            swal({
                    title: "您确定要删除这条信息吗",
                    text: "删除后将无法恢复，请谨慎操作！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "删除",
                    closeOnConfirm: false
                },
                function () {
                    swal("删除成功！", "您已经永久删除了这条信息。", "success")
                })
        })
    });
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",});
        $(".summernote").summernote({lang: "zh-CN"});
    });

    var edit = function () {
        $(".click2edit").summernote({focus: true})
    };
    var save = function () {
        var aHTML = $(".click2edit").code();
        $(".click2edit").destroy()
    };

    //继续添加文件
    $(function () {
        $(".btn-xs").click(function () {
            $("#add_zuoye").append('<input type="file" multiple="multiple" class="form-control">');
        })
    })();

</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
