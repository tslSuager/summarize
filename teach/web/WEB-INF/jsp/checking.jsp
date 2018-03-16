<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<!-- Mirrored from www.zi-han.net/theme/hplus/calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:44 GMT -->

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>考勤签到情况</title>
		<!--<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">-->

		<link rel="shortcut icon" href="favicon.ico">
		<link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
		<link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

		<link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">

		<link href="/static/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
		<link href="/static/css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">

		<link href="/static/css/animate.min.css" rel="stylesheet">
		<link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">

	</head>

	<body class="gray-bg">
		<div class="wrapper wrapper-content">
			<div class="row animated fadeInDown">
				<div class="col-sm-2">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>拖拽添加活动</h5>
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<div id='external-events'>

								<div class='external-event navy-bg'>请假</div>
								<div class='external-event navy-bg'>备注</div>
								<div class='external-event navy-bg'>外出</div>

							</div>
						</div>
					</div>
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>表现分数</h5>
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<div class='external-event navy-bg'>分数：20分（总分：30分）</div>
							<div class='external-event navy-bg'>扣除：5分</div>
							<div class='external-event navy-bg'>原因：上课打游戏</div>
							<div class='external-event navy-bg'>扣除：5分</div>
							<div class='external-event navy-bg'>原因：上课打游戏</div>
						</div>
					</div>
				</div>
				<div class="col-sm-10">
					<div class="ibox float-e-margins">

						<div class="ibox-content">
							<div id="calendar"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="/static/js/jquery.min.js?v=2.1.4"></script>
		<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="/static/js/content.min.js?v=1.0.0"></script>
		<script src="/static/js/plugins/layer/layer.min.js"></script>
		<script src="/static/js/jquery-ui.custom.min.js"></script>
		<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
		<script src="/static/js/plugins/fullcalendar/fullcalendar.min.js"></script>
		<script>
			$(document).ready(function() {
				/*$(".i-checks").iCheck({
					checkboxClass: "icheckbox_square-green",
					radioClass: "iradio_square-green",
				});*/
				$("#external-events div.external-event").each(function() {
					var d = {
						title: $.trim($(this).text())
					};
					$(this).data("eventObject", d);
					$(this).draggable({
						zIndex: 999,
						revert: true,
						revertDuration: 0
					})
				});
				//暂时静态，数据来源于数据库，json
				var b = new Date();
				var c = b.getDate();
				var a = b.getMonth();
				var e = b.getFullYear();
				$("#calendar").fullCalendar({
					header: {
						left: "prev,next",
						center: "title",
						right: "today"
					},
					editable: true,
					droppable: true,
					//g:年月日,即坐标
					drop: function(g, h) {
						var f = $(this).data("eventObject");
						var e = $.extend({}, f);//事件就是一个{}
						layer.open({
							type: 2,
							title: "申述内容",
							area: ['500px', '300px'],
							btn: ['提交', '算了'],
							content: "/textarea.html",
							yes: function(index, layero) {
								//									console.info($($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val());

								e.start = g;
								e.allDay = h;
								$("#calendar").fullCalendar("renderEvent", e, true);
								//ajax 发请求存储 代码写在这
								layer.close(index);
							},
							btn2: function(index, layero) {

								layer.close(index);
							}
						});

					},

					eventClick: function(e) {
						if(e.borderColor === "red") {
							parent.layer.open({
								type: 2,
								title: "申述内容",
								area: ['500px', '300px'],
								btn: ['提交', '算了'],
								content: "/textarea.html",
								yes: function(index, layero) {
									//console.info($($(layero).find("iframe")[0].contentWindow.document.getElementById("tra")).val());
									layer.close(index);
								},
								btn2: function(index, layero) {

									layer.close(index);
								}
							});
						}
					},
					events: [{
						title: "上午:           09:15",
						borderColor: "red",
						start: new Date(e, a, 28),

					}],
				})
			});
		</script>
		<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	</body>

</html>