<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 账户错误</title>
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="css/logAndSign.css" type="text/css" />
	<style>
		*{
			padding: 0px;
			margin: 0px;
		}
		body {
			background-color: mistyrose;
		}
		.container{
			width: 600px;
			height: 200px;
			margin: 0px auto;
			margin-top: 50px;
			align-self: center;
			color: #fff;
			border-radius: 8px;
			box-shadow: 5px 5px 5px 6px #ccc;
			background-color: #CE8483;
		}
		#font{
			color: #fff;
			font-size: x-large;
			line-height: 140px;
			text-align: center;
		}
		#font_{
			color: #fff;
			font-size: small;
			line-height:90px;
			margin-left:390px;
		}
		
	</style>
</head>
<body>
	<div class="headInfo">
		<a href="main.html"><img class="websiteIcon_1"; src="img/sakura.jpg" onclick="location.reload()"/></a>
		<a href="main.html"><img class="websiteIcon_2"; src="img/website_name.png" onclick="location.reload()"/></a>
	</div>
	
	<div class="container">
		<p id="font">
			您输入的手机号或者密码有误，请重新输入!
		</p>
		<p id="font_">
			页面将自动跳转至登录界面。。。
		</p>
	</div>
	
</body>

<script language="javascript" type="text/javascript">
	setTimeout("javascript:location.href='${requestScope.returnPage}'", 2000);
</script>
</html>  