<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<style>
		.reason{
			height:60px ;
		}
	</style>
	<body>
		<div class="reason">
			上午堵车申诉,上午堵车申诉,上午堵车申诉,上午堵车申诉,上午堵车申诉!!!
		</div>
		<div class="">备注：</div>
		<div class="say">
			<textarea rows="7" cols="78"></textarea>
		</div>
	</body>
</html>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script>
	function tt() {
		return $(".say:eq(0)").find("textarea:eq(0)").val();
    }
</script>
