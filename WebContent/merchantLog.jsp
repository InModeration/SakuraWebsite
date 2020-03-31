<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 商家登录</title>
	<link rel="stylesheet" href="css/logAndSign.css" type="text/css" />
	<link rel="stylesheet" href="css/aAttribute.css" type="text/css" />
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
	<script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>
	<style>
		*{
			margin: 0px;
			padding: 0px;
		}
		body{
			background-image: url(img/mlogSa.jpg);
		}
		#container{
			width: 400px;
			height: 300px;
			margin-left: 200px;
			margin-top: 228px;
			border-radius: 8px;
			background-color: #fff;
		}
		.header{
			width: 100%; 
			height: 30px;
			background-color:#CE8483;
			font-size: 15px;
			color: #fff;
			line-height: 30px;
			text-align: center;
			border-top-left-radius: 8px;
			border-top-right-radius: 8px;
		}
		.form-body{
			margin-top: 48px;
		}
		label{
			width: 70px;
			margin-left: 5px;
		}
		.form-icon{
			height: 33px;
			margin-bottom: -11px;
			margin-left: 21px;
		}
		.form-group{
			margin-top: 18px;
		}
		.form-input{
			height: 33px;
			width: 230px;
			padding-left: 8px;
			background-color: #F7E1B5;
			border: 1px solid #ccc;
			border-radius: 5px;
		}
		.btn{
			margin-top: 30px;
		}
		.form-btn{
			height: 38px;
			width: 150px;
			color:#fff;
			border: 1px solid #eee;
			border-radius: 5px;
			box-shadow: 0px 2px 3px #ccc;
		}
		.form-btn-primary{
			margin-left: 28px;
			background-color: #E4B9B9;
		}
		.form-btn-warning{
			margin-left: 15px;
			background-color: #F0AD4E;
		}
		.footer{
			margin-top: 38px;
			color: #ccc;
			text-align: center;
			font-size: 13px;
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
	
		.websiteFont{
		margin-top: 20px;
		margin-left: 450px;
		font-size: small;
		float: left;
		background-color:#F2DEDE;
		line-height:30px;
		}
		.addr{
			line-height: 40px;
			margin-left: 20px;
			margin-right: 20px;
		}
		#font_1{
			margin-top: 100px;
			margin-left: 140px;
		}
		#font_2{
			margin-top: 20px;
			margin-left: 0px;
		}

	</style>
</head>
<body>
	
	<div class="headInfo">
		<a href="main.html"><img class="websiteIcon_1" src="img/sakura.jpg" onclick="location.reload()"/></a>
		<a href="main.html"><img class="websiteIcon_2" src="img/website_name.png" onclick="location.reload()"/></a>
		<b class="websiteFont">为确保您账户的安全及正常使用，依《网络安全法》
			相关要求，6月1日起会员账户需绑定手机。如您还未绑定，请尽快完成，感谢您的理解及支持！</b>
	</div>
	
	<div id="container" >
		<div class="header">
			<p>商家登陆</p>
		</div>
		
		<div class="form-body">
			<form action="MerchantLogServlet" method="post" name="loginForm">
				<div class="form-group">
					<img class="form-icon" src="img/icon_user.png"/>
					<label for="">电话号码：</label>
					<input type="text" class="form-input" id="mid" name="mid">
				</div>
				<div class="form-group">
					<img class="form-icon" src="img/icon_password.png" />
					<label for="">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					<input type="password" class="form-input" id="password" name="password">
				</div>
			<div class="btn">
				<input type="button" value="密码登陆" class="form-btn form-btn-primary" id="submitbut" onclick="login()">
				<input type="button" value="注册成为商家" class="form-btn form-btn-primary" onclick="window.location.href='merchantSignup.jsp'">
			</div>
			</form>
		</div>
		
		<div class="footer">
			<p>by 玻色子具有整数自旋</p>
		</div>
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
	var captcha;

	window.onload = ()=>{
		captcha = new TencentCaptcha('2015100300', (res)=>{
			if(res.ret === 0 && res.ticket)
			{
				//console.log('验证通过');
				document.loginForm.submit();
			}
			/* else 
			{
				console.log('验证不通过');
			} */
		});
	}
	
	function login()
	{
		
		var mid=document.getElementById("mid").value;
		var password=document.getElementById("password").value;
		if (mid.length == 0) {
			alert("请输入商家ID！")
			return false;
		}
		if (password.length == 0) {
			alert("请输入密码！");
			return false;
		}
		captcha.show();
	}
	
</script>
