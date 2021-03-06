<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>记账系统</title>
<link rel="stylesheet" type="text/css" media="all"
	href="${rc.contextPath}/ui/index/css/metro.css" />

<script type="text/javascript" src="${rc.contextPath}/ui/index/js/jquery.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/ui/index/js/jquery.plugins.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/ui/index/js/metro.js"></script>
<script type="text/javascript" src="${rc.contextPath}/ui/index/js/main.js"></script>

</head>
<script type="text/javascript">
var username = '${username!}';
</script>
<body>

	<div class="metro-layout horizontal">

		<div class="header">

			<h1>记账</h1>
			<form action="login/index" method="post" id="form1">
				<a href="#" onclick="$('#form1').attr('action','${rc.contextPath}/login/login1');$('#form1').attr('method','post');$('#form1').submit();">
					<span style="font-size: 15px;float: right;padding-right: 10px;color: #DDD;">登入系统</span>
				</a>
				<span>welcome ${username!}</span>
			</form>
			
			<div class="controls">
				<span class="down" title="Scroll down"></span> 
				<span class="up"   title="Scroll up"></span> 
				<span class="next" title="Scroll left"></span>
				<span class="prev" title="Scroll right"></span> 
				<span class="toggle-view" title="Toggle layout"></span>
			</div>

		</div>

		<div class="content clearfix">

			<div class="items">
				<a class="box" href="#"><span>Mail</span><img class="icon"
					src="${rc.contextPath}/ui/index/images/mail.png" alt="" /></a>
				<a class="box" href="#" style="background: #6b6b6b;"><span>Settings</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/settings.png" alt="" /></a> <a
					class="box" href="#" style="background: #43b51f;"><span>Make
						a call</span><img class="icon" src="${rc.contextPath}/ui/index/images/phone.png" alt="" /></a>
				<a class="box width2 height2" href="http://www.16sucai.com/"><span>Photos</span><img
					class="cover" src="${rc.contextPath}/ui/index/images/gallery.jpg" alt="" /></a> <a
					class="box" href="#" style="background: #00aeef;"><span>Music</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/music.png" alt="" /></a> <a
					class="box" href="#" style="background: #f58d00;"><span>Firefox</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/firefox.png" alt="" /></a> <a
					class="box" href="#" style="background: #640f6c;"><span>Yahoo</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/yahoo.png" alt="" /></a> <a
					class="box height2" href="#" style="background: #d32c2c;"><span>GMail</span><img
					class="icon big" src="${rc.contextPath}/ui/index/images/gmail.png" alt="" /></a> <a
					class="box" href="#" style="background: #3c5b9b;"><span>Facebook</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/facebook.png" alt="" /></a> <a
					class="box" href="#" style="background: #ffc808;"><span>Winamp</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/winamp.png" alt="" /></a> <a
					class="box" href="#" style="background: #00a9ec;"><span>Tasks</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/tasks.png" alt="" /></a> <a
					class="box height2" href="#" style="background: #4c5e51;"><span>DeviantART</span><img
					class="icon big" src="${rc.contextPath}/ui/index/images/deviantart.png" alt="" /></a> <a
					class="box" href="#" style="background: #f874a4;"><span>Dribbble</span><img
					class="icon" src="${rc.contextPath}/ui/index/images/dribbble.png" alt="" /></a>
			</div>

		</div>

	</div>

</body>
</html>