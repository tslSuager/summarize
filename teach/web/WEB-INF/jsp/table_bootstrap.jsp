<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:03 GMT -->

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>H+ 后台主题UI框架 - Bootstrap Table</title>
		<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
		<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

		<link rel="shortcut icon" href="favicon.ico">
		<link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
		<link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
		<link href="/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
		<link href="/static/css/animate.min.css" rel="stylesheet">
		<link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content animated fadeInRight">

			<div class="col-sm-12">
				<!-- Example Toolbar -->
				<div class="btn-group hidden-xs" id="" role="group">
					<a type="button" class="btn btn-outline btn-default" href="/page/calendar">
						<i class="fa fa-mail-reply-all" aria-hidden="true" title="返回上页"></i>
					</a>
				</div>
				<div class="example-wrap">
					<h4 class="example-title">待处理信息列表</h4>
					<h5><small>共有数据：<strong id="zongshu">0</strong> 条,<strong id="shensu">0</strong> 人迟到,<strong id="qingjia">0</strong> 人请假,<strong id="remark">0</strong> 人备注</small></h5>
					<div class="example">
						<div class="btn-group hidden-xs" id="exampleToolbar" role="group">
							<button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                    </button>
							<button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                    </button>
							<button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
						</div>
						<table id="exampleTableToolbar" data-mobile-responsive="true" data-search="false">
							<thead>
								<tr>
									<th data-field="id" width="143px">ID</th>
									<th data-field="name" width="116px">姓名</th>
									<th data-field="class" width="118px">班级</th>
									<th data-field="time_request" width="371px">发出请求时间</th>
									<th data-field="type" width="188px">请求类型</th>
									<th data-field="status" width="369px">处理状态</th>
									<th data-field="time_deal" width="385px">处理时间</th>
									<th data-field="person_deal" width="151px">处理人</th>
								</tr>
							</thead>
							<tbody>


									<tr class=" shensu"  >
										<td>10001</td>
										<td>张三</td>
										<td>01班</td>
										<td>2018-03-07 10:03:11</td>
										<td><input class="btn btn-outline btn-warning" type="button" value="申述"></td>
										<td class="td-statusMor">
											<a style="text-decoration:none" onClick="shensu_shenheMor(this,'10001')" href="javascript:;" title="查看申诉">
												<div class="btn btn-danger radius">处理</div>
											</a>
										</td>
										<td class="time_deal"></td>
										<td class="person_deal"></td>
									</tr>
									<%--<tr class="grade">
										<td>10002</td>
										<td>张三</td>
										<td>01班</td>
										<td>2018-03-07 14:03:11</td>
										<td><input class="btn btn-outline btn-warning" type="button" value="申述"></td>
										<td class="td-statusAft">
											<a style="text-decoration:none" onClick="shensu_shenheAft(this,'10002')" href="javascript:;" title="查看申诉">
												<div class="btn btn-danger radius">处理</div>
											</a>
										</td>
										<td class="time_deal"></td>
										<td class="person_deal"></td>
									</tr>
									<tr class="grade">
										<td>10003</td>
										<td>李四</td>
										<td>01班</td>
										<td>2018-03-07 09:09:11</td>
										<td><input class="btn btn-outline btn-warning" type="button" value="申述"></td>
										<td class="td-statusMor">
											<a style="text-decoration:none" onClick="shensu_shenheMor(this,'10003')" href="javascript:;" title="查看申诉">
												<div class="btn btn-danger radius">处理</div>
											</a>
										</td>
										<td class="time_deal"></td>
										<td class="person_deal"></td>
									</tr>--%>
									<tr class=" qinjia" style="display: none">
										<td>10004</td>
										<td>王五</td>
										<td>01班</td>
										<td>2018-03-07 19:09:11</td>
										<td><input class="btn btn-outline btn-danger" type="button" value="请假" style="margin: 0 auto;"></td>
										<td class="td-qingjia">
											<a style="text-decoration:none" onClick="qingjia(this,'10004')" href="javascript:;" title="查看理由">
												<div class="btn btn-danger radius">处理</div>
											</a>
										</td>
										<td class="time_deal"></td>
										<td class="person_deal"></td>
									</tr>
								</tbody>
						</table>
					</div>
				</div>
				<!-- End Example Toolbar -->
			</div>
			<!-- End Panel Other -->
		</div>
		


		<script src="/static/js/jquery.min.js?v=2.1.4"></script>

		<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="/static/js/content.min.js?v=1.0.0"></script>
		<script src="/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
		<script src="/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
		<script src="/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
		<script src="/static/js/demo/bootstrap-table-demo.min.js"></script>
		<script src="/static/js/plugins/layer/layer.min.js"></script>
		<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
		<script>

            var aa = true;


            /*申诉-审核*/
            function shensu_shenheMor(obj, id) {
                //				$(obj).parents("tr").find(".time_deal")
                //				console.info($(obj).parents("tr").find(".time_deal"));
                if(aa) {
                    aa = false;
                    layer.open({
                        type: 2,
                        title: '申诉内容',
                        content: '/page/reason_shensuMor',
                        btn: ['同意', '不同意', '取消'],
                        yes: function(index, layero) {
                            var id= $(obj).parents("tr:eq(0)").find("td").eq(0).data("resultId");
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            /*var y=mydate.getFullYear();
                            var m=mydate.getMonth()+1;
                            var d=mydate.getDay();*/
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('周杰伦');
                            $(obj).parents("tr").find(".td-statusMor").html('<a class="btn btn-success radius disabled">同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="shensu_shenheMor(this,id)" href="javascript:;">修改</a>');

                            //	$("#sdsd").html('<a class="btn btn-success radius disabled">同意</a>');
                            //	$('#className').append($("<li>").addClass("active").append($("<a>").attr("data-toggle","tab").attr("href",ss).text("第"+i+"组")));
                            //	$(obj).remove();
                            var data = $(layero).find("iframe")[0].contentWindow.tt();

                            $.ajax({
								type:"POST",
                                url: "/checking/dealRequest",
                                data: {
                                    "id":id,
                                    "kaoqinShenshuReply":data,
									"kaoqinShenshuDisposeresult":1,
									"kaoqinShenshuDisposeuser":"admin",
                                    "kaoqinShenshuStatus":3
								},
                                success: function(msg){

                                }
                            });
                            layer.msg('已同意该申诉'), {
                                time: 1000
                            };
                            aa = true;
                            layer.close(index);

                        },
                        btn2: function(index, layero) {
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('周杰伦');
                            $(obj).parents("tr").find(".td-statusMor").html('<a class="btn btn-warning radius disabled">不同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="shensu_shenheMor(this,id)" href="javascript:;">修改</a>');
                            $(obj).remove();
                            var data = $(layero).find("iframe")[0].contentWindow.tt();
                            $.ajax({
                                type: "POST",
                                url: "/checking/dealRequest",
                                data: {
                                    "id":id,
                                    "kaoqinRemarkReply":data,
                                    "kaoqinRemarkDisposeResult":4,
                                    "kaoqinShenshuDisposeuser":"admin",
                                    "kaoqinShenshuStatus":4
                                },
                                success: function(msg){

                                }
                            });
                            layer.msg('不同意该申诉', {
                                time: 1000
                            });
                            aa = true;
                        },
                        shade: false,
                        area: ['600px', '300px'],
                        btn3: function(index, layero) {
                            layer.close(index);
                            aa = true;
                        }
                    });
                }
            }

            function shensu_shenheAft(obj, id) {
                if(aa) {
                    aa = false;
                    layer.open({
                        type: 2,
                        title: '申诉',
                        content: '/reason_shensuAft.jsp',
                        btn: ['同意', '不同意', '取消'],
                        yes: function(index, layero) {
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('周杰伦');
                            $(obj).parents("tr").find(".td-statusAft").html('<a class="btn btn-success radius disabled">同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="shensu_shenheAft(this,id)" href="javascript:;">修改</a>');
//								.append('<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>')
                            $(obj).remove();
                            layer.msg('已同意该申诉', {
                                time: 1000
                            });
                            layer.close(index);
                            aa = true;
                        },
                        btn2: function() {
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('周杰伦');
                            $(obj).parents("tr").find(".td-statusAft").html('<a class="btn btn-warning radius disabled">不同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="shensu_shenheAft(this,id)" href="javascript:;">修改</a>');
//								.append('<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>')
                            $(obj).remove();


                            layer.msg('不同意该申诉', {
                                time: 1000
                            });
                            aa = true;
                        },
                        btn3: function(index, layero) {
                            layer.close(index);
                            aa = true;
                        },
                        shade: false,
                        area: ['600px', '300px']
                    });
                }
            }

            function qingjia(obj, id) {
                if(aa) {
                    aa = false;
                    layer.open({
                        type: 2,
                        title: '请假理由',
                        content: '/page/reason_qingjia',
                        btn: ['同意', '不同意', '取消'],
                        yes: function(index, layero) {
                            var id= $(obj).parents("tr:eq(0)").find("td").eq(0).data("resultId");
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('张学友');
                            $(obj).parents("tr").find(".td-qingjia").html('<a class="btn btn-success radius disabled">同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="qingjia(this,id)" href="javascript:;">修改</a>');
//								.append('<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>')
                            $(obj).remove();
                            var data = $(layero).find("iframe")[0].contentWindow.tt();
                            $.ajax({
                                type: "POST",
                                url: "/checking/dealRequest",
                                data: {
                                    "id":id,
                                    "kaoqinRemarkReply":data,
                                    "kaoqinRemarkDisposeResult":1,
									"kaoqinRemarkDisposeuser":"admin",
									"kaoqinRemarkStatus":1

                                },
                                success: function(msg){

                                }
                            });
                            layer.msg('已同意', {
                                time: 1000
                            });
                            layer.close(index);
                            aa = true;
                        },
                        btn2: function() {
                            var mydate = new Date();
                            var t = mydate.toLocaleString();
                            $(obj).parents("tr").find(".time_deal").text(t);
                            $(obj).parents("tr").find(".person_deal").html('张学友');
                            $(obj).parents("tr").find(".td-qingjia").html('<a class="btn btn-warning radius disabled">不同意</a>')
                                .append('<a class="btn btn-success radius" style="float: right;" onClick="qingjia(this,id)" href="javascript:;">修改</a>');
//								.append('<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>')
                            $(obj).remove();
                            var data = $(layero).find("iframe")[0].contentWindow.tt();
                            $.ajax({
                                type: "POST",
                                url: "/checking/dealRequest",
                                data: {
                                    "id":id,
                                    "kaoqinRemarkReply":data,
                                    "kaoqinRemarkDisposeResult":2,
                                    "kaoqinRemarkDisposeuser":"admin",

                                    "kaoqinShenshuStatus":2
                                },
                                success: function(msg){

                                }
                            });
                            layer.msg('不同意', {
                                time: 1000
                            });
                            aa = true;
                        },
                        btn3: function(index, layero) {
                            layer.close(index);
                            aa = true;
                        },
                        shade: false,
                        area: ['600px', '300px']
                    });
                }
            }

		</script>
	</body>

	<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:06 GMT -->

</html>
<script>
    $(function () {
        initInfo();

    })
    //查询某个班所有的请求信息
    function initInfo(officeId) {
        $(".qinjia:eq(0)").hide();
        $(".shensu:eq(0)").hide();
        $.ajax({
            url: "/checking/dealKaoqin",
            dataType:"json",
            success: function(json){
//				console.info(json);
                var kaoqinResults = json.kaoqinResults;
                var zongshu=kaoqinResults.length;
                var remark=0;
                var qinjia=0;
                var shensu=0;
                for (var i=0;i<kaoqinResults.length;i++){
//                    var temp = kaoqinResults[i].kaoqinRemarkStatus !=null? kaoqinResults[i].kaoqinRemarkType:kaoqinResults[i].kaoqinShenshuType;
					if (kaoqinResults[i].kaoqinRemarkStatus !=null){
                        var kaoqinRemarkType = kaoqinResults[i].kaoqinRemarkType;
                        switch (kaoqinRemarkType){
							case 1:
							    qinjia++;
							    break;
							case 2:
							    remark++;
							    break;
						}
					}else if (kaoqinResults[i].kaoqinShenshuStatus !=null){
						shensu++;
					}
                }
				$("#zongshu").html(zongshu);
				$("#remark").html(remark);
				$("#qingjia").html(qinjia);
				$("#shensu").html(shensu);

                var tbody = $("#exampleTableToolbar").find("tbody:eq(0)");
                for (var i=0;i<kaoqinResults.length;i++){
                    if (kaoqinResults[i]["kaoqinRemarkStatus"] != null){//备注请求
                        var qinjia = $("<tr>");//tr
                        qinjia.append($("<td>").data("resultId",kaoqinResults[i]["id"]).html(kaoqinResults[i]["userId"]));//id
                        qinjia.append($("<td>").html(kaoqinResults[i]["username"]));//id
                        qinjia.append($("<td>").html(kaoqinResults[i]["officename"]));//班级名
                        qinjia.append($("<td>").html(kaoqinResults[i]["kaoqinRemarkReqtime"]));//请求时间
                        qinjia.append($("<td>").append($("<input>").attr("class","btn btn-outline  btn-danger").val((kaoqinResults[i].kaoqinRemarkType==1)?"请假":"备注").attr("type","button")  ));//请求类型
                        var chuli = $("<td>");
//                        if (kaoqinResults[i]["kaoqinRemarkStatus"]!=0){
//                            chuli.append($("<a>").attr("class","btn btn-success radius").css("float","right").attr("onClick","qingjia(this,'"+kaoqinResults[i]["id"]+"')").attr("href","javascript:;").html("修改")  )
//                        }
						if (kaoqinResults[i]["kaoqinRemarkStatus"]==0){
                            chuli.addClass("td-statusMor").append($("<a>").css("text-decoration","none").attr("onclick",  ((kaoqinResults[i]["kaoqinRemarkStatus"]!=0)? "":"qingjia(this,'"+kaoqinResults[i]["id"]+"')") ).attr("href","javascript:;").attr("title","查看申诉").append($("<div>").html("处理").attr("class","btn "+((kaoqinResults[i]["kaoqinRemarkStatus"]!=0)?"btn-success disabled":" btn-danger ")+" radius")  ));
                        }
						qinjia.append(chuli);//请求类型
                        qinjia.append($("<td>").attr("class","time_deal").html(kaoqinResults[i]["kaoqinRemarkDisposetime"]));//处理时间
                        qinjia.append($("<td>").attr("class","person_deal").html(kaoqinResults[i]["kaoqinRemarkDisposeuser"]));//处理人
                        tbody.append(qinjia);

                    }else if (kaoqinResults[i]["kaoqinShenshuStatus"] != null){//申诉请求
                        var shensu = $("<tr>");//tr
                        shensu.append($("<td>").data("resultId",kaoqinResults[i]["id"]).html(kaoqinResults[i]["userId"]));//id
                        shensu.append($("<td>").html(kaoqinResults[i]["username"]));//id
                        shensu.append($("<td>").html(kaoqinResults[i]["officename"]));//班级名
                        shensu.append($("<td>").html(kaoqinResults[i]["kaoqinShenshuReqtime"]));//请求时间
                        shensu.append($("<td>").append($("<input>").attr("class","btn btn-outline  btn-warning").val("迟到").attr("type","button")  ));//请求类型
                        var chuli = $("<td>");
                        chuli.addClass("td-statusMor").append($("<a>").css("text-decoration","none").attr("onclick",  ((kaoqinResults[i]["kaoqinShenshuStatus"]!=2)? "":"shensu_shenheMor(this,'"+kaoqinResults[i]["id"]+"')") ).attr("href","javascript:;").attr("title","查看申诉").append($("<div>").html("处理").attr("class","btn "+((kaoqinResults[i]["kaoqinShenshuStatus"]!=2)?"btn-success disabled":" btn-danger ")+" radius")  ));
                        if (kaoqinResults[i]["kaoqinShenshuStatus"]!=2){
                            chuli.append($("<a>").attr("class","btn btn-success radius").css("float","right").attr("onClick","shensu_shenheMor(this,'"+kaoqinResults[i]["id"]+"')").attr("href","javascript:;").html("修改")  )

                        }
                        shensu.append(chuli);//请求类型
                        shensu.append($("<td>").attr("class","time_deal").html(kaoqinResults[i]["kaoqinShenshuDisposetime"]));//处理时间
                        shensu.append($("<td>").attr("class","person_deal").html(kaoqinResults[i]["kaoqinShenshuDisposeuser"]));//处理人
                        tbody.append(shensu);
                    }

                }
            }
        });
    }

</script>