<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 商家注册</title>
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
			height: 430px;
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
			margin-top: 30px;
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
		.log{
			font-size:small;
			margin-left: 470px;
			line-height: 110px;
		}
		.footInfo{
			margin-top: 291px;
			height: 40px;
			background-color: #FFFFFF;
			border-bottom: 10px solid #EBCCCC;
			border-top: 10px solid #EBCCCC;
			text-align: center;
			font-weight: 350;
			font-size: smaller;
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
			<span>Sakura商家注册</span>
			<br /><hr />
		</div>
		<form action="MerchantSignupServlet" method="post">
			<div class="form-group">
				<li>
					<label for="">店&nbsp;铺&nbsp;&nbsp;名：</label>
					<input type="text" class="form-input" name="vendorname">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">负&nbsp;责&nbsp;&nbsp;人：</label>
				<input type="text" class="form-input" name="principal">
				</li>
			</div>


			<div class="form-group">
				<li>
				<label for="">联系电话：</label>
				<input type="text" class="form-input" name="mnumber">
				</li>
			</div>
			
			<div class="form-group">
				<li>
				<label for="">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
				<input type="password" class="form-input" name="password">
				</li>
			</div>
			
			<div class="btn">
				<input type="submit" value="提交" class="form-btn">
			</div>

		</form>
		<a class="log" href="log.jsp">
			已有帐户？点击登录
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

	function isMnumber(mnumber) {
		return /^[0-9]*[1-9][0-9]*$/.test(mnumber) && mnumber.length == 11;
	}
	
	$('form').submit(function () {
		var vendorname = $('input[name=vendorname]').val();
		var password = $('input[name=password]').val();
		var mnumber = $('input[name=mnumber]').val();
		var principal = $('input[name=principal]').val();
		
		if (vendorname.length == 0) {
			alert("店铺名不能为空");
			return false;
		}
		if (vendorname.length > 30) {
			alert("店铺名过长");
			return false;
		}
		if (principal.length == 0) {
			alert("负责人的姓名不能为空");
			return false;
		}
		if (principal.length > 30) {
			alert("负责人的姓名过长");
			return false;
		}
		if (mnumber.length == 0) {
			alert("店铺的联系电话不能为空");
			return false;
		}
		if (!isMnumber(mnumber)) {
			alert("输入正确的手机号格式");
			return false;
		}
		if (password.length == 0) {
			alert("密码不能为空！");
			return false;
		}
		if (password.length < 6) {
			alert("密码不小于6字符！");
			return false;
		}
		if (password.length > 20) {
			alert("密码不超过20字符！");
			return false;
		}
		
		window.alert("提交成功！");
	
	});
</script>
</html>