<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 樱花提示</title>
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
			margin-left:400px;
		}
		
	</style>
</head>
<body>
	<div class="headInfo">
		<a href="main.html"><img class="websiteIcon_1" src="img/sakura.jpg" onclick="location.reload()"/></a>
		<a href="main.html"><img class="websiteIcon_2" src="img/website_name.png" onclick="location.reload()"/></a>
	</div>
	
	<div class="container">
		<p id="font">
			${requestScope.hint }
		</p>
		<p id="font_">
			页面将自动跳转至前一页...
		</p>
	</div>
	
</body>

<script language="javascript" type="text/javascript">
	if(${sessionScope.lastPage!=null}){
		setTimeout("javascript:location.href='${sessionScope.lastPage}'", 2000);
	}else{
		setTimeout("javascript:location.href='index.jsp'", 2000);
	}
</script>
</html>  