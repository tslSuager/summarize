<%--
  Created by IntelliJ IDEA.
  User: 1234
  Date: 2018/3/20
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加班级</title>
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="/static/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="/static/css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <link href="/static/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="/static/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
    <link href="/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="/static/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="/static/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body>

<div class="modal-dialog">
    <div class="modal-header">
        <h2 class="modal-title" style="text-align: center">查看子任务详情</h2>
    </div>
    <form>
        <small class="font-bold">
            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="filename">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件名:</label>
                    <input type="text" name="filename" class="form-control" style="width: 320px"
                           id="filename"/>
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="filetype">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件类型:</label>
                    <input type="text" name="filetype" class="form-control" style="width: 320px"
                           id="filetype"/>
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="filesize">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">文件限定大小(M)
                        :</label>
                    <input type="text" name="filesize" class="form-control" style="width: 320px"
                           id="filesize"/>
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="before_submit">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可提前提交
                        :</label>
                    <input type="text" name="before_submit" class="form-control" style="width: 320px"
                           id="before_submit"/>
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="after_submit">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">是否可过时提交
                        :</label>
                    <input type="text" name="after_submit" class="form-control" style="width: 320px"
                           id="after_submit"/>
                </div>
            </div>

            <div style="margin-top: 30px">
                <div style="margin-top: 5px" class="remarks">
                    <label class="col-sm-3 text-center control-label" style="margin-top: 5px">备注说明 :</label>
                    <input class="form-control layer-date" style="width: 320px" id="renwudetailremarks"/>
                </div>
            </div>

        </small>
    </form>
</div>
</body>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/jquery.min.js"></script>
<script id="welcome-template" type="text/x-handlebars-template"/>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/pullListTree.js"></script>


<script>
    var url = location.search;
    var renwuId = url.slice(9);
    console.info(renwuId);
    /**
     * 查看任务Task详情
     */
    $(function () {
        $.get("/teaching/viewTaskByRenwuId",{renwuId},function (msg) {
            console.info(msg['task']);
            if(msg['task'].length==0){
                alert("该任务还未添加详细Task!!!");
            }else {
                $.each(msg['task'],function (i,each) {
                    $("#filename").attr("value",each['filename']);
                    $("#filetype").attr("value",each['filetype']);
                    $("#filesize").attr("value",each['limitSize']);
                    if (each['beforeSubmit']==0){
                        $("#before_submit").attr("value","否");
                    }else if (each['beforeSubmit']==1){
                        $("#before_submit").attr("value","是");
                    }
                    if (each['afterSubmit']==0){
                        $("#after_submit").attr("value","否");
                    }else if (each['afterSubmit']==1){
                        $("#after_submit").attr("value","是");
                    }
                    $("#renwudetailremarks").attr("value",each['remarks']);
                });
            }
        },"json")
    });
</script>
</html>



