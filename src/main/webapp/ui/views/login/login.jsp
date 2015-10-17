<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入页面</title>
<link rel="stylesheet" type="style/css" href="${rc.contextPath }/ui/index/css/login.css">
<script type="text/javascript" src="${rc.contextPath }/ui/index/js/jquery.min.js"></script>
<script type="text/javascript" src="${rc.contextPath }/ui/index/js/login.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	localStorage.lastname="Smith";
	//alert(localStorage.lastname);
	$("#lastname").val(localStorage.lastname);
	
});
</script>
</head>
<body>
	<form action="${rc.contextPath}/login/index" method="post" id="form1">	
		<label>姓名：</label> <input name="username" value="pzr" placeholder="格式" ><br>
		<label>密码：</label> <input type="password" name="password" value="pzr"><br>
		<input form="form1" type="checkbox" name="cookie" value="true">自动登入
		<input type="submit" value="游客提交">
		<input type="reset" value="重置">
		<input type="image" src="${rc.contextPath }/ui/index/images/tasks.png" height="50px" width="50px">
	</form>
		<button formaction="" type="submit">会员提交</button>
	<input form="form1" type="checkbox" name="cookie" value="true">自动登入
	<input type="text" id="lastname">
	<div id="div3" ondragstart="drag(event)" draggable="true" ></div>
	<div id="div2" ondragover="ondragover(event)" ondrop="drop(event)"></div>
	
	<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
	<div id="drag1" draggable="true" ondragstart="drag(event)"></div>
</body>
</html>