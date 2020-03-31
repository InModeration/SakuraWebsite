<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 密码更改</title>
	<script src="js/jquery.js"></script>
	<link rel="icon" href="./img/sakura.jpg" />
	<link rel="stylesheet" href="css/logAndSign.css" type="text/css" />
	<link rel="stylesheet" href="css/aAttribute.css" type="text/css" />
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
			height: 600px;
			margin: 0px auto;
			margin-top: 98px;
			align-self: center;
			color: #fff;
			border-radius: 8px;
			box-shadow: 5px 5px 5px 6px #ccc;
			background-color: #CE8483;
		}
		.info{
			width: 100%;
			height: 80px;
			font-size: 25px;
			text-align: center;
			line-height: 80px;
		}
		label{
			margin-left: 18px;
		}
		.form-group{
			margin-top: 18px;
			margin-left: 110px;
		}
		.form-input{
			height: 33px;
			width: 250px;
			padding-left: 8px;
			background-color: #F7E1B5;
			border: 1px solid #ccc;
			border-radius: 5px;
		}
		.radio{
			margin-top: 15px;
			margin-left: 110px;
		}
		.radio span{
			margin-left: 22px;
		}
		.radio input{
			margin-left: 33px;
		}
		.btn{
			margin-top: 50px;
		}
		.form-btn{
			height: 38px;
			width: 270px;
			color:#fff;
			border: 1px solid #F44336;
			margin-left: 29%;
			background-color: #F44336;
			border-radius: 5px;
			box-shadow: 2px 2px 3px #CD8131;
		}
		.footInfo{
			margin-top: 120px;
			height: 40px;
			background-color: #FFFFFF;
			border-bottom: 10px solid #EBCCCC;
			border-top: 10px solid #EBCCCC;
			text-align: center;
			font-weight: 350;
			font-size: smaller;
		}
	
		.log{
			font-size:small;
			margin-left: 470px;
			line-height: 135px;
		}
	</style>
</head>
<body>
	<div class="headInfo">
		<a href="main.html"><img class="websiteIcon_1" src="img/sakura.jpg" /></a>
		<a href="main.html"><img class="websiteIcon_2" src="img/website_name.png" /></a>
	</div>
	
	<div class="container" style="height:500px; margin-top: 180px; margin-bottom: 138px;">
		<div class="info">
			<span>Sakura&nbsp;&nbsp;用户密码更改</span>
			<br /><hr />
		</div>
		<form action="UserSignupServlet" method="post">
			<div class="form-group" style="margin-top:50px">
				<li>
					<label for="">手机号码&nbsp;&nbsp;：</label>
					<input type="text" class="form-input" name="pnumber" id="pnumber">
				</li>
			</div>
			<div class="form-group">
				<li>
					<label for="">旧&nbsp;密&nbsp;码&nbsp;&nbsp;&nbsp;：</label>
					<input type="password" class="form-input" name="oldPass" id="oldPass">
		 		</li>
			</div>
			<div class="form-group">
				<li>
					<label for="">新&nbsp;密&nbsp;码&nbsp;&nbsp;&nbsp;：</label>
					<input type="password" class="form-input" name="newPass" id="newPass">
				</li>
			</div>
			
			<div class="form-group">
				<li>
				<label for="">重复输入&nbsp;&nbsp;：</label>
				<input type="password" class="form-input" name="repeat" id="repeat">
				</li>
			</div>

			<div class="btn">
				<input type="submit" value="提交修改" class="form-btn">
			</div>
		</form>
		<a class="log" href="index.jsp" style="margin-left: 540px;">
			返回首页
		</a>
	</div>

	
	
	
	<div class="footInfo">
		<b>|</b>
		<a class="addr" href="#">
			关于Sakura
		</a>
		<b>|</b>
		<a class="addr" href="#">
			联系我们
		</a>
		<b>|</b>
		<a class="addr" href="#">
			人才招聘
		</a>
		<b>|</b>
		<a class="addr" href="merchantSignup.jsp">
			商家入驻
		</a>
		<b>|</b>
		<a class="addr" href="#">
			广告服务
		</a>
		<b>|</b>
		<a class="addr" href="#">
			手机Sakura
		</a>
		<b>|</b>
		<a class="addr" href="#">
			友情链接
		</a>
		<b>|</b>
		<a class="addr" href="#">
			Sakura社区
		</a>
		<b>|</b>
	</div>
</body>
<script>

	function isPnumber(pnumber) {
		return /^[0-9]*[1-9][0-9]*$/.test(pnumber) && pnumber.length == 11;
	}

	// 判断输入是否为空以及输入的格式是否正确
	$('form').submit(function () {
		var pnumber = $('input[name=pnumber]').val();
		var oldPass = $('input[name=oldPass]').val();
		var newPass = $('input[name=newPass]').val();
		var repeat = $('input[name=repeat]').val();
		
		if (pnumber.length == 0) {
			alert("手机号码不能为空");
			return false; 
		}
		
		if (!isPnumber(pnumber)) {
			alert("请输入格式正确的手机号！");
			return false;
		}
		
		if (oldPass.length == 0) {
			alert("旧密码不能为空");
			return false;
		}
		
		if (newPass.length == 0) {
			alert("新密码不能为空");
			return false;
		}
		if (newPass.length < 6) {
			alert("新密码小于6位");
			return false;
		}
		if (repeat.length == 0) {
			alert("重复密码不能为空");
			return false;
		}
		if (repeat!=newPass) {
			alert("两次密码输入不一致！");
			return false;
		}
		
		window.alert("修改提交成功！");
	});
</script>
</html>