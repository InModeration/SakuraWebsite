<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sakura Website | 地址管理</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/mall.css">
<style>
body {
	background-color: mistyrose;
}

.img {
	margin-top: 15px;
	height: 50px;
	margin-left: 30px;
}

.result {
	background-color: #fff;
	height: 50px;
}

.rFont {
	font-size: large;
	margin-left: 70%;
}

a {
	color: #000;
}

a:hover {
	color: pink;
}
</style>
</head>
<body>
	<!-- 顶部导航条 -->
	<div class="nav headInfo">
		<ul>
			<a href><img class="websiteIcon_1" src="img/sakura.jpg"
				onclick="location.reload()" /></a>
			<a href><img class="websiteIcon_2" src="img/website_name.png"
				onclick="location.reload()" /></a>

			<li><a href="#" style="margin-left: 100px;">手机商城</a></li>
			<li><a href="#">网站导航</a></li>
			<li><a href="help.html">客户服务</a></li>
			<li><a href="#">企业采购</a></li>
			<li><a href="#">商城会员</a></li>
			<li class="login-signup nav-pull-down my-shop"
				style="padding-top: 5px; margin-left: 300px;">欢迎&nbsp,&nbsp&nbsp<a
				href=>${sessionScope.user.userName }</a> <span
				class="glyphicon glyphicon-menu-down"></span></li>
		</ul>
	</div>

	<!-- 消息隔栏 -->
	<div
		style="width: 100%; float: left; font-size: xx-large; line-height: 10px">
		<p>
			<img class="img" src="img/express.jfif" style="margin-left: 110px" />
			<b style="margin-left: 30px; vertical-align: sub;">我的收货地址</b>
		</p>
	</div>

	<form action="#">
		<!-- 添加成功提示 -->
		<div class="add-info-box-container"
			style="background-color: #fff6f6; margin-top: 15px; box-shadow: 0px 5px 5px #5a5a6d; padding-bottom: 20px; margin-bottom:20px">
			<div class="add-info-box"
				style="box-shadow: 0px 4px 5px #882839; margin-bottom: 20px">
				<div class="add-info-detail">
					<div class="add-info-box-row">
						<div class="add-info-intro" style="margin-left: 90px">
							<p>收货人姓名：</p>
							<p>收货人手机号：</p>
							<p>收货人地址：</p>
						</div>
					</div>
				</div>

				<div class="car-btn-group">
					<div style="text-align: right; margin-right: 15px">
						选择该收货地址 <input type="radio" name="checked"
							id="${shoppingCartGood.commodityInfo.commodityNumber}" value="" />
					</div>
					<div class="car-btn-row">
						<input type="button" class="btn-car btn-car-to-pay"
							onclick="if(confirm('确定要删除该地址吗？')){window.location.href=''}"
							value="删除该地址" />
					</div>
				</div>
			</div>
			<div class="add-info-box"
				style="box-shadow: 0px 4px 5px #882839; margin-bottom: 20px">
				<div class="add-info-detail">
					<div class="add-info-box-row">
						<div class="add-info-intro" style="margin-left: 90px">
							<p>收货人姓名：</p>
							<p>收货人手机号：</p>
							<p>收货人地址：</p>
						</div>
					</div>
				</div>

				<div class="car-btn-group">
					<div style="text-align: right; margin-right: 15px">
						选择该收货地址 <input type="radio" name="checked"
							id="${shoppingCartGood.commodityInfo.commodityNumber}" value="" />
					</div>
					<div class="car-btn-row">
						<input type="button" class="btn-car btn-car-to-pay"
							onclick="if(confirm('确定要删除该地址吗？')){window.location.href=''}"
							value="删除该地址" />
					</div>
				</div>
			</div>
			<div class="add-info-box"
				style="box-shadow: 0px 4px 5px #882839; margin-bottom: 20px">
				<div class="add-info-detail">
					<div class="add-info-box-row">
						<div class="add-info-intro" style="margin-left: 90px">
							<p>收货人姓名：</p>
							<p>收货人手机号：</p>
							<p>收货人地址：</p>
						</div>
					</div>
				</div>

				<div class="car-btn-group">
					<div style="text-align: right; margin-right: 15px">
						选择该收货地址 <input type="radio" name="checked"
							id="${shoppingCartGood.commodityInfo.commodityNumber}" value="" />
					</div>
					<div class="car-btn-row">
						<input type="button" class="btn-car btn-car-to-pay"
							onclick="if(confirm('确定要删除该地址吗？')){window.location.href=''}"
							value="删除该地址" />
					</div>
				</div>
			</div>
		</div>

		<!-- 隔栏 -->
		<div style="height:50px">
		<a href="createADDR.jsp">
			<img src="img/addAddr.jpg" style="height:40px; margin-left:90%"/>
			<b style="font-size:large; vertical-align:sub">新增收货地址</b>
		</div>
			</a>
		</div>

	<!-- 底部 -->
	<footer class="footer" style="margin-top:20px">
		<div class="clearfix"></div>
		<div class="icon-row">
			<div class="footer-icon">
				<h5 class="footer-icon-child"></h5>
				<span class="footer-icon-text">品类齐全，轻松购物</span>
			</div>
			<div class="footer-icon">
				<h5 class="footer-icon-child footer-icon-child-2"></h5>
				<span class="footer-icon-text">多仓直发，极速配送</span>
			</div>
			<div class="footer-icon">
				<h5 class="footer-icon-child footer-icon-child-3"></h5>
				<span class="footer-icon-text">正品行货，精致服务</span>
			</div>
			<div class="footer-icon">
				<h5 class="footer-icon-child footer-icon-child-4"></h5>
				<span class="footer-icon-text">天天低价，畅选无忧</span>
			</div>
		</div>
		<div class="service-intro">
			<div class="servece-type">
				<div class="servece-type-info">
					<ul>
						<li>购物指南</li>
						<li>购物流程</li>
						<li>会员介绍</li>
						<li>生活旅行</li>
						<li>常见问题</li>
						<li>大家电</li>
						<li>联系客服</li>
					</ul>
				</div>
				<div class="servece-type-info">
					<ul>
						<li>配送方式</li>
						<li>上门自提</li>
						<li>211限时达</li>
						<li>配送服务查询</li>
						<li>配送费收取标准</li>
						<li>海外配送</li>
					</ul>
				</div>
				<div class="servece-type-info">
					<ul>
						<li>支付方式</li>
						<li>货到付款</li>
						<li>在线支付</li>
						<li>分期付款</li>
						<li>邮局汇款</li>
						<li>公司转账</li>
					</ul>
				</div>
				<div class="servece-type-info">
					<ul>
						<li>售后服务</li>
						<li>售后政策</li>
						<li>价格保护</li>
						<li>退款说明</li>
						<li>返修/退换货</li>
						<li>取消订单</li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="friend-link">
				<div class="friend-link-item">
					<ul>
						<li><span class="link-item">关于我们</span></li>
						<li><span class="link-item">联系我们</span></li>
						<li><span class="link-item">联系客服</span></li>
						<li><span class="link-item">合作招商</span></li>
						<li><span class="link-item">商家帮助</span></li>
						<li><span class="link-item">营销中心</span></li>
						<li><span class="link-item">销售联盟</span></li>
						<li><span class="link-item">校园社区</span></li>
						<li><span class="link-item">风险监测</span></li>
						<li><span class="link-item link-last-item">隐私政策</span></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="copyright">
				<p>Copyright © 2019 BY Sakura Website</p>
			</div>
		</div>
	</footer>
</body>
<script>
	function isPnumber(pnumber) {
		return /^[0-9]*[1-9][0-9]*$/.test(pnumber) && pnumber.length == 11;
	}

	// 判断输入是否为空以及输入的格式是否正确
	$('form').submit(function() {
		var checked = $("input[name=checked]:checked").val();

		if (!checked) {
			alert("请选择收货地址！");
			return false;
		}
		window.alert("提交成功！");
	});
</script>
<script src="js/mall.js"></script>
</html>