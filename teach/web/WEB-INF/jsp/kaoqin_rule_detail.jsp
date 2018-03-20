<%--
  Created by IntelliJ IDEA.
  User: 15842
  Date: 2018/3/7
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_validate.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 表单验证 jQuery Validation</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <%--<link href="/static/css/layui.css" rel="stylesheet">--%>
    <style>
        .form_bb {

        }

        .labelright {
            margin-right: 10px;
        }

        .labelleft {
            margin-left: 10px;
        }

        .spanleft {
            margin-left: 50px;
        }

        tr {
            height: 50px;
        }
        input{
            margin-left: 15px;
        }
        .four > td {
            padding-left: 0px;
        }
    </style>
</head>

<body class="gray-bg">

<%--<button type="button" id="check-minutes">Check the minutes</button>--%>


<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">

        <div class="col-sm-pull-1">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>考勤规则录入</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="form_basic.html#">选项1</a>
                            </li>
                            <li><a href="form_basic.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" style="margin-left: 400px">规则方案名称：</label>
                            <div class="col-sm-4">
                                <div class="radio i-checks" id="ruleradio">
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input checked=""
                                                                                                            value="option1"
                                                                                                            name="a"
                                                                                                            style="position: absolute; opacity: 0;"
                                                                                                            type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案一
                                    </label>
                                    <label class="">
                                        <div class="iradio_square-green " style="position: relative;"><input
                                                value="option2"
                                                name="a"
                                                style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案二</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案三</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案四</label>
                                </div>
                            </div>
                        </div>
                    </form>
                    <%--方案一--%>
                    <form class="form-horizontal m-t form_bb" action="/checking/addKaoQinRule">
                        <div class="form-group" style="margin-left:5px;">
                            <label class=" " style="">规则名称：</label>
                            <input placeholder="请输入规则名称" class="form-control" name="rulename"  style="width: 200px; display: inline;">
                            <label class="" style="">规则备注：</label>
                            <input placeholder="请输入规则备注" class="form-control" name="remarks" style="width: 400px;display: inline;">
                            <%--<div class="col-sm-4">
                               &lt;%&ndash; <div class="radio i-checks" >
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input checked=""
                                                                                                            value="option1"
                                                                                                            name="a"
                                                                                                            style="position: absolute; opacity: 0;"
                                                                                                            type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案一
                                    </label>
                                    <label class="">
                                        <div class="iradio_square-green " style="position: relative;"><input
                                                value="option2"
                                                name="a"
                                                style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案二</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案三</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案四</label>
                                </div>&ndash;%&gt;
                            </div>--%>
                            <input type="text" hidden name="ruleType" value="1">
                        </div>

                        <div style="overflow-x: scroll ;">
                            <table class="table-bordered " >
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期一：</label>
                                        <input type="text" name="krd[0].weekDay" hidden value="1">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[0].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[0].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[0].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[0].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[0].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[0].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td>
                                        <label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期二：</label>
                                        <input type="text" name="krd[1].weekDay" hidden value="2">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[1].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[1].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[1].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[1].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[1].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[1].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期三：</label>
                                        <input type="text" name="krd[2].weekDay" hidden value="3">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[2].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[2].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[2].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[2].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[2].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[2].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期四：</label>
                                        <input type="text" name="krd[3].weekDay" hidden value="4">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[3].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[3].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[3].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[3].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[3].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[3].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期五：</label>
                                        <input type="text" name="krd[4].weekDay" hidden value="5">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[4].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[4].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[4].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[4].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[4].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[4].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期六：</label>
                                        <input type="text" name="krd[5].weekDay" hidden value="6">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[5].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[5].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[5].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[5].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[5].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[5].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr >
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;" >星期日：</label>
                                        <input type="text" name="krd[6].weekDay" hidden value="7">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td>
                                        <label class=" labelleft control-label" style="width: 120px;">
                                            第一次打卡时间：</label>
                                    </td>
                                    <td ><input style="width: 100px;" class="form-control layer-date labelright single-input" name="krd[6].brushStarttime1"
                                                value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[6].brushEndtime1" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[6].time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[6].brushStarttime2" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               value="" name="krd[6].brushEndtime2" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="krd[6].time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="hr-line-dashed col-sm-8 "></div>
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                    <%--方案二--%>
                    <form action="/checking/addKaoQinRule" class="form-horizontal m-t form_bb" style="display: none;">
                        <div class="form-group" style="margin-left:5px;">
                            <label class=" " style="">规则名称：</label>
                            <input placeholder="请输入规则名称" class="form-control" name="rulename"  style="width: 200px; display: inline;">
                            <label class="" style="">规则备注：</label>
                            <input placeholder="请输入规则备注" class="form-control" name="remarks" style="width: 400px;display: inline;">
                            <%--<div class="col-sm-4">
                               &lt;%&ndash; <div class="radio i-checks" >
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input checked=""
                                                                                                            value="option1"
                                                                                                            name="a"
                                                                                                            style="position: absolute; opacity: 0;"
                                                                                                            type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案一
                                    </label>
                                    <label class="">
                                        <div class="iradio_square-green " style="position: relative;"><input
                                                value="option2"
                                                name="a"
                                                style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案二</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案三</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案四</label>
                                </div>&ndash;%&gt;
                            </div>--%>
                            <input type="text" hidden name="ruleType" value="2">
                        </div>
                        <div style="overflow-x: scroll">
                            <table class="table-bordered " style="width:2100px;">
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                        <input type="text" name="weekDay" hidden value="1">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期二：</label>
                                        <input type="text" name="weekDay" hidden value="2">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期三：</label>
                                        <input type="text" name="weekDay" hidden value="3">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期四：</label>
                                        <input type="text" name="weekDay" hidden value="4">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期五：</label>
                                        <input type="text" name="weekDay" hidden value="5">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期六：</label>
                                        <input type="text" name="weekDay" hidden value="6">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr>
                                    <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期日：</label>
                                        <input type="text" name="weekDay" hidden value="7">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                style="position: absolute; opacity: 0;"
                                                                                                                type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value=""  placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1" value=""  placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " value="" name="time1Wucha" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha3"  value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright "  name="time1Wucha4"  value="" placeholder="矿工标准"></td>
                                </tr>
                                <%-- <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>
                                 <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>
                                 <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>
                                 <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>
                                 <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>
                                 <tr>
                                     <td><label class="col-sm-1 control-label labelleft" style="width: 100px;">星期一：</label>
                                     </td>
                                     <td><span class="checkbox i-checks">
                                         <label class="">
                                         <div class="icheckbox_square-green " style="position: relative;"><input value=""
                                                                                                                 style="position: absolute; opacity: 0;"
                                                                                                                 type="checkbox"><ins
                                                 class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                      </span></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                     <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                     <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="起始时间">
                                     </td>
                                     <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                                value="" placeholder="结束时间"></td>
                                     <td><input style="width: 85px;" class="form-control  labelright " value="" placeholder="矿工标准"></td>
                                 </tr>--%>
                            </table>
                        </div>
                        <div class="hr-line-dashed col-sm-8 "></div>
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                    <%--方案三--%>
                    <form action="/checking/addKaoQinRule" class="form-horizontal m-t form_bb" style="display: none;">
                        <div class="form-group" style="margin-left: 350px">
                            <label class="col-sm-2 control-label">开始日期：</label>
                            <input readonly="" placeholder="请选择开始日期" class="form-control layer-date" id="hello1">
                            <label class="laydate-icon inline demoicon"
                                   onclick="laydate({elem: '#hello1'});"></label>
                            <label class="labelleft control-label">结束日期：</label>
                            <input placeholder="请选择结束日期" class="form-control layer-date" id="myhello">
                            <label class="laydate-icon inline demoicon"
                                   onclick="laydate({elem: '#myhello'});"></label>
                        </div>
                        <div class="form-group hi" hidden style="margin-left:5px;">
                            <label class=" " style="">规则名称：</label>
                            <input placeholder="请输入规则名称" class="form-control" name="rulename"  style="width: 200px; display: inline;">
                            <label class="" style="">规则备注：</label>
                            <input placeholder="请输入规则备注" class="form-control" name="remarks" style="width: 400px;display: inline;">
                            <%--<div class="col-sm-4">
                               &lt;%&ndash; <div class="radio i-checks" >
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input checked=""
                                                                                                            value="option1"
                                                                                                            name="a"
                                                                                                            style="position: absolute; opacity: 0;"
                                                                                                            type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案一
                                    </label>
                                    <label class="">
                                        <div class="iradio_square-green " style="position: relative;"><input
                                                value="option2"
                                                name="a"
                                                style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案二</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案三</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案四</label>
                                </div>&ndash;%&gt;
                            </div>--%>
                            <input type="text" hidden name="ruleType" value="3">
                        </div>
                        <div style="overflow-x: scroll">
                            <table class="table-bordered ">
                                <tr class="three"  hidden>
                                    <td>
                                        <label class="col-sm-1 control-label labelleft" style="width: 100px;">日期:</label>
                                        <input type="text" name="date" hidden value="">
                                    </td>
                                    <td>
                                    <span class="checkbox i-checks">
                                        <label class="haha">
                                        <div  class="icheckbox_square-green test3 " style="position: relative;">
                                            <input value=""
                                                   style="position: absolute; opacity: 0;"
                                                   type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>

                                    <td>
                                        <div class="isdisplay"><label class=" labelleft control-label"
                                                                      style="width: 120px;">第一次打卡时间：</label></div>
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               name="brushStarttime1" value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               name="brushEndtime1" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">&nbsp;&nbsp;
                                    </td>
                                    <td><input style="width: 100px;" class="form-control layer-date labelright single-input"
                                               name="brushEndtime2" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                </tr>

                                <tr id="three_line" hidden></tr>
                            </table>
                        </div>
                        <%--<div class=" three form-group" hidden>
                            <label class="col-sm-1 control-label">2018年3月8日：</label>
                            &lt;%&ndash;一行&ndash;%&gt;
                            <span class="spanleft"><label class=" labelleft control-label">第一次打卡时间：</label>  <input
                                    style="width: 200px;"
                                    class="form-control layer-date" placeholder="YYYY-MM-DD hh:mm:ss"
                                    onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                                <label class="laydate-icon labelright"></label>
                                <label class="labelleft control-label">第二次打卡时间：</label>  <input style="width: 200px;"
                                                                                                class="form-control layer-date"
                                                                                                placeholder="YYYY-MM-DD hh:mm:ss"
                                                                                                onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                                </span>
                        </div>--%>
                        <div style="margin-left: 400px">
                            <div class="hr-line-dashed col-sm-8 "></div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <%--方案四--%>
                    <form action="/checking/addKaoQinRule" class="form-horizontal m-t form_bb" style="display: none;">
                        <div class="form-group" style="margin-left: 350px">
                            <label class="col-sm-2 control-label">开始日期：</label>
                            <input readonly="" placeholder="请选择开始日期" class="form-control layer-date" id="hello4">
                            <label class="laydate-icon inline demoicon"
                                   onclick="laydate({elem: '#hello4'});"></label>
                            <label class="labelleft control-label">结束日期：</label>
                            <input placeholder="请选择结束日期" class="form-control layer-date" id="myhello4">
                            <label class="laydate-icon inline demoicon"
                                   onclick="laydate({elem: '#myhello4'});"></label>
                        </div>
                        <div class="form-group hi" hidden style="margin-left:5px;">
                            <label class=" " style="">规则名称：</label>
                            <input placeholder="请输入规则名称" class="form-control" name="rulename"  style="width: 200px; display: inline;">
                            <label class="" style="">规则备注：</label>
                            <input placeholder="请输入规则备注" class="form-control" name="remarks" style="width: 400px;display: inline;">
                            <%--<div class="col-sm-4">
                               &lt;%&ndash; <div class="radio i-checks" >
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input checked=""
                                                                                                            value="option1"
                                                                                                            name="a"
                                                                                                            style="position: absolute; opacity: 0;"
                                                                                                            type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案一
                                    </label>
                                    <label class="">
                                        <div class="iradio_square-green " style="position: relative;"><input
                                                value="option2"
                                                name="a"
                                                style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案二</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案三</label>
                                    <label>
                                        <div class="iradio_square-green" style="position: relative;"><input
                                                value="option1" name="a" style="position: absolute; opacity: 0;"
                                                type="radio">
                                            <ins class="iCheck-helper"
                                                 style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins>
                                        </div>
                                        <i></i> 方案四</label>
                                </div>&ndash;%&gt;
                            </div>--%>
                            <input type="text" hidden name="ruleType" value="4">
                        </div>
                        <div style="overflow-x: scroll">
                            <table class="table-bordered " style="width: 2100px">
                                <tr class="four" hidden>
                                    <td><label class="col-sm-1 control-label" <%--style="width: 100px;"--%>>日期</label>
                                        <input type="text" hidden name="date" value="">
                                    </td>
                                    <td><span class="checkbox i-checks">
                                        <label class="">
                                        <div class="icheckbox_square-green test4" style="position: relative;"><input value=""
                                                                                                                     style="position: absolute; opacity: 0;"
                                                                                                                     type="checkbox"><ins
                                                class="iCheck-helper"
                                                style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;"></ins></div> <i></i> 不打卡</label>
                                     </span></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第一次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime1" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime1"  value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第二次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime2" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime2"  value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha2" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第三次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime3" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime3"  value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha3" value="" placeholder="矿工标准"></td>
                                    <td><label class=" labelleft control-label" style="width: 120px;">第四次打卡时间：</label></td>
                                    <td><input style="margin-left:4px; margin-right:4px; width: 100px;" class="form-control layer-date  single-input"
                                               name="brushStarttime4" value="" placeholder="起始时间">
                                    </td>
                                    <td><input style="margin-left:4px; margin-right:4px;width: 100px;" class="form-control layer-date  single-input"
                                               name="brushEndtime4" value="" placeholder="结束时间"></td>
                                    <td><input style="width: 85px;" class="form-control  labelright " name="time1Wucha4" value="" placeholder="矿工标准"></td>
                                </tr>
                                <tr id="four_line" hidden></tr>
                            </table>
                        </div>
                        <div style="margin-left: 400px">
                            <div class="hr-line-dashed col-sm-8 "></div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script src="/static/js/plugins/layer/laydate/laydate.js"></script>
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/static/js/plugins/clockpicker/clockpicker.js"></script>
<script type="text/javascript">
    var $single = $(".single-input");
    for (var i = 0; i < $single.length; i++) {
        var input = $($single[i]).clockpicker({
            placement: 'bottom',
            align: 'left',
            autoclose: true,
            'default': 'now'
        });
    }
    // Manually toggle to the minutes view
    $('#check-minutes').click(function (e) {
        // Have to stop propagation here
        e.stopPropagation();
        input.clockpicker('show')
            .clockpicker('toggleView', 'minutes');
    });
</script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>
<script>
    laydate({elem: "#hello", event: "focus"});
    var start = {
        elem: "#start",
        format: "YYYY/MM/DD hh:mm:ss",
        min: laydate.now(),
        max: "2099-06-16 23:59:59",
        istime: true,
        istoday: false,
        choose: function (datas) {
            end.min = datas;
            end.start = datas
        }
    };
    var end = {
        elem: "#end",
        format: "YYYY/MM/DD hh:mm:ss",
        min: laydate.now(),
        max: "2099-06-16 23:59:59",
        istime: true,
        istoday: false,
        choose: function (datas) {
            start.max = datas
        }
    };
    laydate(start);
    laydate(end);
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>


</body>
</html>
<script>
    $(function () {
        var labels = $("#ruleradio").find("label");
        for (var i = 0; i < labels.length; i++) {
            (function (ii) {
                $(labels[ii]).find("div").click(function () {
                    setForm(ii);
                })
            })(i);
        }
        var end = {
            elem: '#myhello', //需显示日期的元素选择器<br/>
            choose: function (dates) { //选择好日期的回调<br/>
                cleanRow(".three");
                var day = countDay($("#hello1").val(), dates);
                var st = $("#hello1").val().replace(/-/g, '');
                var startnum = parseInt(st);
                var arr = new Array();
                for (var i = 0; i < day; i++) {
                    var edate = toString(startnum.toString());//得到每个日期
                    arr.push(edate);
                    ($("#three_line").before($(".three:eq(0)").clone().show()));
                    startnum++;
                }
                setdate(arr, ".three");
                var icheckboxSquares = $(".test3");
                for (var i = 0; i < icheckboxSquares.length; i++) {
                    (function (i) {
                        $(icheckboxSquares[i]).data("isChecked", false);
                        $(icheckboxSquares[i])/*.off("click")*/.on("click", check);
                    })(i)
                }
                $(".hi:eq(0)").show();

            }
        }
        var start = {
            elem: '#hello1'
        }
        laydate(start);
        laydate(end);

        //four

        var end2 = {
            elem: '#myhello4', //需显示日期的元素选择器<br/>
            choose: function (dates) { //选择好日期的回调<br/>
                cleanRow(".four");
                var day = countDay($("#hello4").val(), dates);
                var st = $("#hello4").val().replace(/-/g, '');
                var startnum = parseInt(st);
                var arr = new Array();
                for (var i = 0; i < day; i++) {
                    var edate = toString(startnum.toString());//得到每个日期
                    arr.push(edate);
                    ($("#four_line").before($(".four:eq(0)").clone().show()));
                    startnum++;
                }
                setdate(arr, ".four");

                var icheckboxSquares = $(".test4");
                for (var i = 0; i < icheckboxSquares.length; i++) {
                    (function (i) {
                        $(icheckboxSquares[i]).data("isChecked", false);
                        $(icheckboxSquares[i])/*.off("click")*/.on("click", check);
                    })(i)
                }
                $(".hi:eq(1)").show();
            }
        }
        var start2 = {
            elem: '#hello4'
        }
        laydate(start2);
        laydate(end2);
        checkClick();
    })

    function checkClick() {
        var icheckboxSquares = $(".icheckbox_square-green");
        for (var i = 0; i < icheckboxSquares.length; i++) {
            (function (i) {
                $(icheckboxSquares[i]).data("isChecked", false);
                $(icheckboxSquares[i]).on("click", check);
            })(i);
        }
    }

    function check() {
        var tds = $(this).parents("tr:eq(0)").find("td");
        var input = $(this).parents("tr").find("td:eq(0)").find("input:eq(0)");
        if (!$(this).data("isChecked")) {
            $(this).addClass("checked");
            $(this).data("isChecked", true);
            $(this).data("input",input.attr("name"));
            input.attr("name","")
            for (var i = 2; i < tds.length; i++) {
                $(tds[i]).hide();
                var tdInputName = $(tds[i]).find("input:eq(0)").attr("name");
                $(this).data("tds["+i+"]",tdInputName);
                $(tds[i]).find("input:eq(0)").attr("name","");
            }
        } else {
            $(this).removeClass("checked");
            $(this).data("isChecked", false);
            input.attr("name",$(this).data("input"));
            for (var i = 2; i < tds.length; i++) {
                $(tds[i]).show();
                var tdInputName = $(this).data("tds["+i+"]");
                $(tds[i]).find("input:eq(0)").attr("name",tdInputName);
            }
        }
        return false;
    }
    //修改未来元素
    function setdate(dates, form) {
        var $three = $(form);
        for (var i = 1; i < $three.length; i++) {
            $($three[i]).find("label").eq(0).html(dates[i - 1]);
        }
        var $single = $(".single-input");
        for (var i = 0; i < $single.length; i++) {
            var input = $($single[i]).clockpicker({
                placement: 'bottom',
                align: 'left',
                autoclose: true,
                'default': 'now'
            });
        }
    }

    function cleanRow(form) {
        var $three = $(form);
        for (var i = 1; i < $three.length; i++) {
            $($three[i]).remove();
        }
    }

    function toString(num) {
        return num.substring(0, 4) + "-" + num.substring(4, 6) + "-" + num.substring(6, 8);
    }

    function countDay(start, end) {
        var s = parseInt(start.replace(/-/g, ''));
        var e = parseInt(end.replace(/-/g, ''));
        return e - s;
    }
    function setForm(ii) {
//        console.info(ii);
        var forms = $(".form_bb");
        for (var i = 0; i < forms.length; i++) {
            if (i == ii) {
                $(forms[i]).css("display", "block");
            } else {
                $(forms[i]).css("display", "none");
            }
        }
    }
</script>