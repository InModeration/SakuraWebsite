<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sakura Website | 新增地址</title>
<script src="js/jquery.js"></script>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/logAndSign.css" type="text/css" />
<link rel="stylesheet" href="css/aAttribute.css" type="text/css" />
<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	background-color: mistyrose;
}

.container {
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

.info {
	width: 100%;
	height: 80px;
	font-size: 25px;
	text-align: center;
	line-height: 80px;
}

label {
	margin-left: 18px;
}

.form-group {
	margin-top: 18px;
	margin-left: 110px;
}

.form-input {
	height: 33px;
	width: 250px;
	padding-left: 8px;
	background-color: #F7E1B5;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.radio {
	margin-top: 15px;
	margin-left: 110px;
}

.radio span {
	margin-left: 22px;
}

.radio input {
	margin-left: 33px;
}

.btn {
	margin-top: 50px;
}

.form-btn {
	height: 38px;
	width: 270px;
	color: #fff;
	border: 1px solid #F44336;
	margin-left: 29%;
	background-color: #F44336;
	border-radius: 5px;
	box-shadow: 2px 2px 3px #CD8131;
}

.footInfo {
	margin-top: 120px;
	height: 40px;
	background-color: #FFFFFF;
	border-bottom: 10px solid #EBCCCC;
	border-top: 10px solid #EBCCCC;
	text-align: center;
	font-weight: 350;
	font-size: smaller;
}

.log {
	font-size: small;
	margin-left: 470px;
	line-height: 135px;
}
</style>
</head>
<body>
	<div class="headInfo">
		<a href="main.html"><img class="websiteIcon_1"
			src="img/sakura.jpg" /></a> <a href="main.html"><img
			class="websiteIcon_2" src="img/website_name.png" /></a>
	</div>

	<div class="container" style="height:500px; margin-bottom:221px">
		<div class="info">
			<img src="img/express.jfif" style="height: 30px; vertical-align: sub" />
			<span> 新增地址 </span> <br />
			<hr />
		</div>
		<form action="" method="post">
			<div class="form-group" style="margin-top:50px">
				<li><label for="">&nbsp;收&nbsp;货&nbsp;人&nbsp;&nbsp;：</label> <input type="text"
					class="form-input" name="receiver" id="receiver"></li>
			</div>
			<div class="form-group">
				<li><label for="">联系电话&nbsp;&nbsp;：</label> <input type="text"
					class="form-input" name="number" id="number"></li>
			</div>
			<div class="form-group">
				<li style="margin-top: 5px;"><label>送货城市&nbsp;&nbsp;：</label> <select
					class="form-input" name="city" id="city">
						<option value="选择">---请选择收货城市---</option>
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="广州">广州</option>
						<option value="深圳">深圳</option>
						<option value="天津">天津</option>
						<option value="重庆">重庆</option>
						<option value="成都">成都</option>
						<option value="武汉">武汉</option>
						<option value="哈尔滨">哈尔滨</option>
						<option value="沈阳">沈阳</option>
						<option value="福州">福州</option>
						<option value="南京">南京</option>
						<option value="杭州">杭州</option>
						<option value="贵阳">贵阳</option>
						<option value="昆明">昆明</option>
						<option value="济南">济南</option>
						<option value="太原">太原</option>
						<option value="郑州">郑州</option>
						<option value="石家庄">石家庄</option>
						<option value="合肥">合肥</option>
				</select></li>
			</div>
			<div class="form-group">
				<li><label for="">详细地址&nbsp;&nbsp;：</label> <input type="text"
					class="form-input" name="detail" id="detail"></li>
			</div>

			<div class="btn">
				<input type="submit" value="提交地址信息" class="form-btn">
			</div>
		</form>
		<a class="log" href="addrManage.jsp" style="margin-left:500px"> 返回地址管理 </a>
	</div>




	<div class="footInfo">
		<b>|</b> <a class="addr" href="#"> 关于Sakura </a> <b>|</b> <a
			class="addr" href="#"> 联系我们 </a> <b>|</b> <a class="addr" href="#">
			人才招聘 </a> <b>|</b> <a class="addr" href="merchantSignup.jsp"> 商家入驻 </a> <b>|</b>
		<a class="addr" href="#"> 广告服务 </a> <b>|</b> <a class="addr" href="#">
			手机Sakura </a> <b>|</b> <a class="addr" href="#"> 友情链接 </a> <b>|</b> <a
			class="addr" href="#"> Sakura社区 </a> <b>|</b>
	</div>
</body>
<script>

	function isPnumber(pnumber) {
		return /^[0-9]*[1-9][0-9]*$/.test(pnumber) && pnumber.length == 11;
	}

	// 判断输入是否为空以及输入的格式是否正确
	$('form').submit(function () {
		var number = $('input[name=number]').val();
		var receiver = $('input[name=receiver]').val();
		var city = document.getElementById("city").value;
		var detail = $('input[name=detail]').val();

		if (receiver.length == 0) {
			alert("请输入收货人姓名");
			return false;
		}
		if (receiver.length > 20) {
			alert("输入的收货人姓名过长");
			return false;
		}
		
		if (number.length == 0) {
			alert("手机号码不能为空");
			return false; 
		}
		
		if (!isPnumber(number)) {
			alert("请输入格式正确的手机号！");
			return false;
		}
		
		if (city === "选择") {
			alert("请选择送货城市");
			return false;
		}
		
		if (detail.length == 0) {
			alert("请输入详细地址");
			return false;
		}
		
		if (detail.length > 100) {
			alert("输入的地址过长");
			return false;
		}
		
		alert("成功提交！");
	});
</script>
</html>