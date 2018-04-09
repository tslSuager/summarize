<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:17:47 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 个人资料</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/css/icon/iconfont_school.css">
    <link rel="stylesheet" type="text/css" href="/static/css/icon/iconfont_line.css">
    <link rel="stylesheet" type="text/css" href="/static/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/css/layer.css">
    <link rel="stylesheet" type="text/css" href="/static/css/plugins/iCheck/custom.css">

    <style>

    </style>
</head>

<body>
<div class="ibox-title">
    <div style="width: 150px;margin: 10px auto">
        <h2><strong>组织的建立</strong></h2>
    </div>
    <hr/>
    <div class="ibox-tools" style="width: 100%;margin: 10px auto">
        <form class="form-horizontal" action="/office/createOffice">
            <div class="form-group">
                <label class="col-sm-3 control-label">选择区域类型：</label>

                <div class="col-sm-8">
                    <div class="col-sm-10">
                        <label class="checkbox-inline i-checks">
                            <div class="icheckbox_square-green checked" style="position: relative;"><input
                                    type="checkbox" value="option1" style="position: absolute; opacity: 0;">
                                <ins class="iCheck-helper"
                                     style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                            </div>
                            区域</label>
                        <label class="checkbox-inline i-checks">
                            <div class="icheckbox_square-green " style="position: relative;"><input
                                    type="checkbox" value="option2" style="position: absolute; opacity: 0;">
                                <ins class="iCheck-helper"
                                     style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                            </div>
                            学校</label>
                    </div>
                </div>
            </div>
            <div class="form-group quyu">
                <label class="col-sm-3 control-label">区域：</label>

                <div class="col-sm-8">
                    <input name="name" placeholder="区域名"
                           class="form-control quyu2"> <%--<span class="help-block m-b-none">请输入您新增组织的区域名</span>--%>
                </div>
            </div>
            <div class="form-group   xuexiao">
                <label class="col-sm-3 control-label">区域：</label>

                <div class="col-sm-8">
                    <div id="pullListTree"></div>
                </div>
            </div>
            <div class="form-group  xuexiao">
                <label class="col-sm-3 control-label">学校：</label>

                <div class="col-sm-8">
                    <input name="name" placeholder="学校名"
                           class="form-control xuexiao2"> <%--<span class="help-block m-b-none">请输入您新增组织的区域名</span>--%>
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-3 control-label">主要负责人：</label>

                <div class="col-sm-8">
                    <input name="master" placeholder="主要负责人" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">电话号码：</label>

                <div class="col-sm-8">
                    <input name="phone" placeholder="电话号码" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-8">
                    <button class="btn btn-sm btn-white tijiao">建立组织</button>
                </div>
            </div>
        </form>
    </div>
</div>


<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/peity/jquery.peity.min.js"></script>
<script src="/static/js/demo/peity-demo.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script src="/static/js/layer.js"></script>
<script src="/static/js/pullListTree.js"></script>
<script>
    $(document).ready(function () {

        //初始化下拉框插件
        initPullListTree("/office/getAllArea",1, 1,function () {

        });//一个参数 开始的级别  第二参数 有几个下拉框

        $(".xuexiao").hide();
        var $checkbox = $(".checkbox-inline .icheckbox_square-green");
        console.info($checkbox.eq(1));
        console.info($checkbox.eq(0));
        $checkbox.eq(1).click(function () {
            if ($(this).hasClass("checked")) {
                $checkbox.eq(0).addClass("checked");
                $(this).removeClass("checked");
                $(".quyu").show();
                $(".xuexiao").hide();
            } else {
                $checkbox.eq(0).removeClass("checked");
                $(this).addClass("checked");
                $(".quyu").hide();
                $(".xuexiao").show();

                if ($(".parentId").data("aa") == null) {
                    $(".parentId").data("aa", "ok");
                    $.ajax({
                        url: "/office/getArea",
                        success: function (msg) {
                            $.each( msg.allArea, function (k, v) {
                                $(".parentId").append($("<option>").css("value",v.name).html(v.name));
                            });
                        }
                    });
                }
            }
            return false;
        });
        $checkbox.eq(0).click(function () {
            if ($(this).hasClass("checked")) {
                $checkbox.eq(1).addClass("checked");
                $(this).removeClass("checked");
                $(".quyu").hide();
                $(".xuexiao").show();
                if ($(".parentId").data("aa") == null) {
                    $(".parentId").data("aa", "ok");
                    $.get("/office/getArea",{},function (msg) {

                        $.each( msg.allArea, function (k, v) {
                            $(".parentId").append($("<option>").css("value",v.parentId).html(v.name));
                        });
                    });
                }
            } else {
                $checkbox.eq(1).removeClass("checked");
                $(this).addClass("checked");
                $(".quyu").show();
                $(".xuexiao").hide();
            }
            return false;
        });

//        $checkbox.click(function () {
//            console.info($(this).hasClass("checked"));
//            if ($(this).hasClass("checked")) {
//                $(this).removeClass("checked");
//            } else {
//                $(this).addClass("checked");
//            }
//            return false;
//        });
        $(".tijiao").click(function () {

            if ($checkbox.eq(0).hasClass("checked")) {
                $(".xuexiao2").val(null);
                $(".parentId").val(null);
            } else {
                $(".quyu2").val(null);

            }
            $("from").submit();
        });
    });
</script>

</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:21 GMT -->
</html>
