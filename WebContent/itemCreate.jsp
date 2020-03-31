<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sakura Website | 商品详情</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/mall.css">
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
			color:black;
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
	<div class="nav headInfo">
		<ul>
			<a href=""><img class="websiteIcon_1" src="img/sakura.jpg"
				onclick="location.reload()" /></a>
			<a href=""><img class="websiteIcon_2"
				; src="img/website_name.png" onclick="location.reload()" /></a>

			<li class="login-signup nav-pull-down my-shop"
				style="padding-top: 5px; margin-left: 58%;"><img src="img/merchant.jfif" style="width:20px; margin-right:10px; vertical-align:sub" alt="商家图片">进入,<a
				href=>店铺名</a><span
				class="glyphicon"></span></li>
		</ul>
	</div>
	
	<div class="container" style="height:640px">
		<div class="info">
			<span>Sakura 商品信息修改</span>
			<br /><hr />
		</div>
		<form action="">
			<div class="form-group" style="margin-top:50px">
				<li>
					<label for="">商&nbsp;品&nbsp;名&nbsp;&nbsp;&nbsp;：</label>
					<input type="text" class="form-input" name="cname" placeholder="原先的商品名" value="">
				</li>
				
			</div>
			<div class="form-group">
				<li>
				<label for="">商品种类&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="type" placeholder="原先的商品种类">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">商品规格&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="size" placeholder="原先的商品规格">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">规格单位&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="unit" placeholder="原先的规格单位">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">商品定价&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="price" placeholder="原先的商品定价">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">详细描述&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="detail" placeholder="原先的详细描述">
				</li>
			</div>
			<div class="form-group">
				<li>
				<label for="">商品状态&nbsp;&nbsp;：</label>
				<input type="text" class="form-input" name="state" placeholder="原先的商品状态">
				</li>
			</div>
			
			<div class="btn" style="display: contents">
				<input type="submit" value="提交修改" class="form-btn">
			</div>

		</form>
		<a class="log" href="item_detail.jsp" style="margin-left:80%">
			返回该商品详情页
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

	$('form').submit(function () {
		var cname = $('input[name=cname]').val();
		var type = $('input[name=type]').val();
		var size = $('input[name=size]').val();
		var unit = $('input[name=unit]').val();
		var price = $('input[name=price]').val();
		var detail = $('input[name=detail]').val();
		var state = $('input[name=state]').val();

		if (cname.length == 0) {
			alert("商品名不能为空");
			return false;
		}
		if (cname.length > 30) {
			alert("商品名过长");
			return false;
		}
		
		if (type.length == 0) {
			alert("商品类型不能为空");
			return false;
		}
		if (type.length > 30) {
			alert("商品类型过长");
			return false;
		}
		
		if (size.length == 0) {
			alert("商品规格不能为空");
			return false;
		}
		if (size.length > 5) {
			alert("商品规格过长");
			return false;
		}
		
		if (unit.length == 0) {
			alert("规格单位不能为空");
			return false;
		}
		if (unit.length > 10) {
			alert("规格单位过长");
			return false;
		}
		
		if (price.length == 0) {
			alert("商品单价不能为空");
			return false;
		}
		if (price.length > 5) {
			alert("商品单价过长");
			return false;
		}
		
		if (detail.length == 0) {
			alert("商品详情不能为空");
			return false;
		}
		if (price.length > 2000) {
			alert("商品详情过长");
			return false;
		}
		
		if (state.length == 0) {
			alert("商品状态不能为空");
			return false;
		}
		if (state.length > 5) {
			alert("商品状态过长");
			return false;
		}
		
		
		window.alert("修改信息提交成功！");
	
	});
</script>
</html>