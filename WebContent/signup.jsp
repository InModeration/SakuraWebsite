<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 注册</title>
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
	
	<div class="container">
		<div class="info">
			<span>Sakura用户注册</span>
			<br /><hr />
		</div>
		<form action="UserSignupServlet" method="post">
			<div class="form-group">
				<li>
					<label for="">手机号码&nbsp;&nbsp;：</label>
					<input type="text" class="form-input" name="pnumber" id="pnumber">
				</li>
			</div>
			<div class="form-group">
				<li>
					<label for="">真实姓名&nbsp;&nbsp;：</label>
					<input type="text" class="form-input" name="username" id="username">
				</li>
			</div>
			<div class="form-group">
				<li>
					<label for="">账号昵称&nbsp;&nbsp;：</label>
					<input type="text" class="form-input" name="nickname" id="nickname">
				</li>
			</div>
			
			<div class="form-group">
				<li>
				<label for="">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;：</label>
				<input type="password" class="form-input" name="password">
				</li>
			</div>


			<div class="form-group">
				<li>
				<label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄&nbsp;&nbsp;：</label>
				<select class="form-input" name="age" id ="age">
					<option value="请选择您的年龄">---请选择您的年龄---</option>
					<c:forEach var="age" begin="18" end="200">
						<option value="${age }">${age }</option>
					</c:forEach>
				</select>	
				</li>
			</div>
			<div class="radio">
				<li>
				<label for="">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;：</label>
				<label><input type="radio" name="sex" id="sex" value="0">&nbsp;&nbsp;男</label>
				<label><input type="radio" name="sex" id="sex" value="1">&nbsp;&nbsp;女</label>
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">邮箱(选填)：</label>
				<input type="email" class="form-input" name="Email">
				</li>
			</div>
			<div class="btn">
				<input type="submit" value="注册" class="form-btn">
			</div>
		</form>
		<a class="log" href="login.jsp">
			已有账号？点击登录
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
		var username = $('input[name=username]').val();
		var nickname = $('input[name=nickname]').val();
		var password = $('input[name=password]').val();
		var Email = $('input[name=Email]').val();
		var sex = $("input[name=sex]:checked").val();
		var age = document.getElementById("age").value;
		
		if (pnumber.length == 0) {
			alert("手机号码不能为空");
			return false; 
		}
		
		if (!isPnumber(pnumber)) {
			alert("请输入格式正确的手机号！");
			return false;
		}
		
		if (username.length == 0) {
			alert("请输入您的真实姓名");
			return false;
		}
		if (username.length > 20) {
			alert("输入的姓名的过长");
			return false;
		}
		
		if (nickname.length == 0) {
			alert("请输入用户昵称");
			return false;
		}
		if (nickname.length > 20) {
			alert("用户昵称过长");
			return false;
		}
		
		if (password.length == 0) {
			alert("密码不能为空");
			return false;
		}
		if (password.length < 6) {
			alert("密码小于6位");
			return false;
		}
		if (password.length > 20) {
			alert("密码过长");
			return false;
		}
		
		if (age === "请选择您的年龄") {
			alert("请选择您的年龄");
			return false;
		}
		
		if (!sex) {
			alert("请选择性别");
			return false;
		}

		/*
		if (Email.length == 0) {
			alert("邮箱不能为空");
			return false;
		}
		if (Email.indexOf('@') == -1){
			alert("邮箱格式有误");
			return false;
		}*/
		
		window.alert("提交成功！");
	});
</script>
</html>