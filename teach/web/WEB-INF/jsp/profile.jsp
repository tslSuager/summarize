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
    <link rel="stylesheet" type="text/css" href="/static/high_layer/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/high_layer/layer.css">
    <link rel="stylesheet" type="text/css" href="/static/css/icon/iconfont_xiangshang.css">
    <style>
        .marginleft{
             margin-left: 200px;
            width: 400px;
            height: 45px;
         }
        .marginleft2{
            margin-left: 80px;
            width: 400px;
            height: 45px;
        }
    </style>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInRight">
            <div class="col-sm-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>个人资料</h5>
                    </div>
                    <div>
                        <div class="ibox-content no-padding border-left-right "<%-- style="width: 530px;height: 400px"--%>>
                            <img alt="image" class="img-responsive" src="/static/img/timg.jpg">
                        </div>
                        <div class="ibox-content profile-content">
                            <h4><strong id="stuName">何润强</strong></h4>
                            <p><i class="fa fa-map-marker"></i> <span id="homeAddress">家庭地址加载失败........</span></p>
                            <p><i class="iconfont icon-xuexiao"></i><span id="daxueAddress">学校地址未加载........</span>  </p>
                            <h5>
                                    关于我
                                </h5>
                            <p id="remarks">
                               备注加载失败........
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>详细信息</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="profile.jsp#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="profile.jsp#">选项1</a>
                                </li>
                                <li><a href="profile.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div>
                            <div>
                            </div>
                            <form id="form1">
                                <input name="id" type="text" value="" hidden>
                                <input name="loginname" type="text" value="" hidden>
                                <input name="password" type="text" value="" hidden>
                                <input name="niname" type="text" value="" hidden>
                                <input name="sex" type="text" value="" hidden>
                                <input name="phone1" type="text" value="" hidden>
                                <input name="email" type="text" value="" hidden>
                                <input name="personno" type="text" value="" hidden>
                                <input name="daxue" type="text" value="" hidden>
                                <input name="stuNumber" type="text" value="" hidden>
                                <input name="daxueZhuanye" type="text" value="" hidden>
                                <input name="shixunZhuanye" type="text" value="" hidden>
                                <input name="peixunZhuanye" type="text" value="" hidden>
                                <input name="col1" type="text" value="" hidden>
                                <div class="feed-activity-list">
                                    <table>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >登录名</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2" >正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >密码</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >昵称</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >性别</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >电话号码</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >电子邮箱</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >身份证号码</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >大学名称</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >学号</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >大学专业</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >实训专业技术</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >培训技术专业</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                        <tr class="feed-element text-center">
                                            <td class="marginleft" >宿舍号</td>
                                            <td><i class=" iconfont icon-vertical_line"></i></td>
                                            <td class="marginleft2">正在加载........</td>
                                        </tr>
                                    </table>
                                </div>
                            </form>
                            <button id="submit" class="btn btn-primary btn-block m"><i class="iconfont icon-jiantou-copy"></i> 提交修改</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="/static/js/content.min.js?v=1.0.0"></script>
    <script src="/static/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="/static/js/demo/peity-demo.min.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script src="/static/high_layer/layer.js"></script>
    <script>
        //初始话页面数据
        $(function () {
            $.ajax({
                type:"GET",
                url: "/user/getUserById?id=14101010603",
                data: "",
                dataType: "json",
                success: function(json){

                    var row = $(".feed-element");
                    //将id 等数据暂存
                    $("input[name=id]").eq(0).val(json["id"]);

                    $(row[0]).find("td").eq(2).html(json["loginname"]);
                    $("input[name=loginname]").eq(0).val($(row[0]).find("td").eq(2).html());

                    $(row[1]).find("td").eq(2).html(json["password"]);
                    $("input[name=password]").eq(0).val($(row[1]).find("td").eq(2).html());

                    $(row[2]).find("td").eq(2).html(json["niname"]);
                    $("input[name=niname]").eq(0).val($(row[2]).find("td").eq(2).html());

                    $(row[3]).find("td").eq(2).html(json["sex"]);
                    $("input[name=sex]").eq(0).val($(row[3]).find("td").eq(2).html());

                    $(row[4]).find("td").eq(2).html(json["phone1"]);
                    $("input[name=phone1]").eq(0).val($(row[4]).find("td").eq(2).html());

                    $(row[5]).find("td").eq(2).html(json["email"]);
                    $("input[name=email]").eq(0).val($(row[5]).find("td").eq(2).html());

                    $(row[6]).find("td").eq(2).html(json["personno"]);
                    $("input[name=personno]").eq(0).val($(row[6]).find("td").eq(2).html());

                    $(row[7]).find("td").eq(2).html(json["daxue"]);
                    $("input[name=daxue]").eq(0).val($(row[7]).find("td").eq(2).html());

                    $(row[8]).find("td").eq(2).html(json["stuNumber"]);
                    $("input[name=stuNumber]").eq(0).val($(row[8]).find("td").eq(2).html());

                    $(row[9]).find("td").eq(2).html(json["daxueZhuanye"]);
                    $("input[name=daxueZhuanye]").eq(0).val($(row[9]).find("td").eq(2).html());

                    $(row[10]).find("td").eq(2).html(json["shixunZhuanye"]);
                    $("input[name=shixunZhuanye]").eq(0).val($(row[10]).find("td").eq(2).html());

                    $(row[11]).find("td").eq(2).html(json["peixunZhuanye"]);
                    $("input[name=peixunZhuanye]").eq(0).val($(row[11]).find("td").eq(2).html());

                    $(row[12]).find("td").eq(2).html(json["col1"]);
                    $("input[name=col1]").eq(0).val($(row[12]).find("td").eq(2).html());
                    //不能修改，以后修改再此处添加
                    $("#homeAddress").html(json["homeAddress"]);
                    $("#daxueAddress").html(json["daxueAddress"]);
                    $("#remarks").html(json["remarks"]);
                    $("#stuName").html(json["name"]);

                }
            });
//            submitClick();//提交事件
        });
       /* function submitClick() {
            $("button[type='submit']").eq(0).click(function () {
                var row = $(".feed-element");
                $("input[name=loginname]").eq(0).val($(row[0]).find("td").eq(2).html());

               /!* $(row[1]).find("td").eq(2).html(json["password"]);
                $(row[2]).find("td").eq(2).html(json["niname"]);
                $(row[3]).find("td").eq(2).html(json["sex"]);
                $(row[4]).find("td").eq(2).html(json["phone1"]);
                $(row[5]).find("td").eq(2).html(json["email"]);
                $(row[6]).find("td").eq(2).html(json["personno"]);
                $(row[7]).find("td").eq(2).html(json["daxue"]);
                $(row[8]).find("td").eq(2).html(json["stuNumber"]);
                $(row[9]).find("td").eq(2).html(json["daxueZhuanye"]);
                $(row[10]).find("td").eq(2).html(json["shixunZhuanye"]);
                $(row[11]).find("td").eq(2).html(json["peixunZhuanye"]);
                $(row[12]).find("td").eq(2).html(json["col1"]);*!/
            })
        }*/

    </script>
</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/profile.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:21 GMT -->
</html>
<script>
    function modify (tds) {
//        console.info(tds.length)
            var isdblclick=true;
            //每一个单元格
            for (var j=0;j<tds.length;j++){
                (function (jj) {
                    $(tds[jj]).dblclick(function () {
                        if (isdblclick){
                            isdblclick=false;
                            var td=$(this);
                            var v = td.html();
                            var $input = $("<input>");
                            td.html( $input.attr("class","form-control input-sm text-center").css("width","150px").css("height","30px").css("margin-left","110px").val(v)  );
                            $input.focus().blur(function () {
                                var v = $(this).val();
                                td.html(v);
                                isdblclick=true;
                                if (jj==0){
                                    $("input[name=loginname]").eq(0).val(v);
                                }else if (jj==1){
                                    $("input[name=password]").eq(0).val(v);
                                }else if (jj==2){
                                    $("input[name=niname]").eq(0).val(v);
                                }else if (jj==3){
                                    $("input[name=sex]").eq(0).val(v);
                                }else if (jj==4){
                                    $("input[name=phone1]").eq(0).val(v);
                                }else if (jj==5){
                                    $("input[name=email]").eq(0).val(v);
                                }else if (jj==6){
                                    $("input[name=personno]").eq(0).val(v);
                                }else if (jj==7){
                                    $("input[name=daxue]").eq(0).val(v);
                                }else if (jj==8){
                                    $("input[name=stuNumber]").eq(0).val(v);
                                }else if (jj==9){
                                    $("input[name=daxueZhuanye]").eq(0).val(v);
                                }else if (jj==10){
                                    $("input[name=shixunZhuanye]").eq(0).val(v);
                                }else if (jj==11){
                                    $("input[name=peixunZhuanye]").eq(0).val(v);
                                }else if (jj==12){
                                    $("input[name=col1]").eq(0).val(v);
                                }

                            });
                        }
                    });
                })(j);
            }
    }
    function submitClick () {
    /*<input name="id" type="text" value="" hidden>
        <input name="loginname" type="text" value="" hidden>
        <input name="password" type="text" value="" hidden>
        <input name="niname" type="text" value="" hidden>
        <input name="sex" type="text" value="" hidden>
        <input name="phone1" type="text" value="" hidden>
        <input name="email" type="text" value="" hidden>
        <input name="personno" type="text" value="" hidden>
        <input name="daxue" type="text" value="" hidden>
        <input name="stuNumber" type="text" value="" hidden>
        <input name="daxueZhuanye" type="text" value="" hidden>
        <input name="shixunZhuanye" type="text" value="" hidden>
        <input name="peixunZhuanye" type="text" value="" hidden>
        <input name="col1" type="text" value="" hidden>*/
        /*var userObj={
             'id':$("input[name=id]").eq(0).val(),
             'loginname':$("input[name=loginname]").eq(0).val(),
             'password':$("input[name=password]").eq(0).val(),
             'niname':$("input[name=niname]").eq(0).val(),
             'sex':$("input[name=sex]").eq(0).val(),
             'phone1':$("input[name=phone1]").eq(0).val(),
             'email':$("input[name=email]").eq(0).val(),
             'personno':$("input[name=personno]").eq(0).val(),
             'daxue':$("input[name=daxue]").eq(0).val(),
             'stuNumber':$("input[name=stuNumber]").eq(0).val(),
             'daxueZhuanye':$("input[name=daxueZhuanye]").eq(0).val(),
             'shixunZhuanye':$("input[name=shixunZhuanye]").eq(0).val(),
             'peixunZhuanye':$("input[name=peixunZhuanye]").eq(0).val(),
             'col1':$("input[name=col1]").eq(0).val()
        }*/

        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/user/modifyUser" ,//url
            //方法一感觉很挫
            /*data:'id='+$('input[name=id]').eq(0).val()+
            '&loginname='+$('input[name=loginname]').eq(0).val()+
            '&password='+$('input[name=password]').eq(0).val()+
            '&niname='+$('input[name=niname]').eq(0).val()+
            '&sex='+$('input[name=sex]').eq(0).val()+
            '&phone1='+$('input[name=phone1]').eq(0).val()+
            '&email='+$('input[name=email]').eq(0).val()+
            '&personno='+$('input[name=personno]').eq(0).val()+
            '&daxue='+$('input[name=daxue]').eq(0).val()+
            '&stuNumber='+$('input[name=stuNumber]').eq(0).val()+
            '&daxueZhuanye='+$('input[name=daxueZhuanye]').eq(0).val()+
            '&shixunZhuanye='+$('input[name=shixunZhuanye]').eq(0).val()+
            '&peixunZhuanye='+$('input[name=peixunZhuanye]').eq(0).val()+
            '&col1='+$('input[name=col1]').eq(0).val(),*/
            data: $('#form1').serialize(),
            success: function (result) {
                layer.msg("修改成功");
                console.info("修改成功")
            },
            error:function () {
                layer.msg("失败！")
            }
        });
    }
    $(function () {
        modify($(".marginleft2"));
        $("#submit").click(submitClick);
    })
</script>