<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sakura Website | 商品审核</title>
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
.info {
	margin-top:20px;
	margin-bottom:20px;
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
				style="padding-top: 5px; margin-left: 300px;">您好&nbsp,&nbsp&nbsp管理员<a
				href=> admin</a> <span class="glyphicon glyphicon-menu-down"></span></li>
		</ul>
	</div>
<div class="item-detail-show" style="flex-direction: row; margin-top:200px">

		<div class="item-detail-left"
			style="margin-left: 1%; margin-top: 30px;">
			<div class="item-detail-big-img">
				<img
					src="./${requestScope.commodityInfo.commodityPictureIndex }1.jpg"
					alt="商品大图">
			</div>
			<div class="item-detail-img-row" style="margin-bottom: 50px;">
				<div class="item-detail-img-small">
					<img
						src="./${requestScope.commodityInfo.commodityPictureIndex }1.jpg"
						alt="商品小图1">
				</div>
				<div class="item-detail-img-small">
					<img
						src="./${requestScope.commodityInfo.commodityPictureIndex }2.jpg"
						alt="商品小图2">
				</div>
				<div class="item-detail-img-small">
					<img
						src="./${requestScope.commodityInfo.commodityPictureIndex }3.jpg"
						alt="商品小图3">
				</div>
			</div>
		</div>

		<div class="item-detail-center"
			style="margin-left: 3%; margin-top: 30px; width: 450px;">
				<div class="number form-group"
					style="box-shadow: #F2DEDE 0px 1px 2px 3px; padding-left: 50px;">
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
						<label class="info">商品名：</label>
					</li>
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
						<label class="info">商品类型：</label>
					</li>
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
						<label class="info">规格单位：</label>
					</li>
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
						<label class="info">商品单价：</label>
					</li>
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
					<label class="info">所属商家：
						<a href="" style="text-decoration:none">商家名</a>
					</label>
					</li>
				</div>
		</div>
		<div class="item-detail-center"
			style="margin-left: 3%; margin-top: 30px; width: 450px;">
		<div class="number form-group"
					style="box-shadow: #F2DEDE 0px 1px 2px 3px; padding-left: 50px; height:405px">
					<li class="info" style="margin-top: 5px; padding-top: 5px;">
						<label class="info">商品详情：</label>
					</li>
		</div>
		</div>
	</div>
			<input class="btn btn-primary" type="button" style="margin-left:83%" value="返回审核列表" onclick="window.location.href='item_check.jsp'" />
		</div>

	<div class="my-shop-panel">
		<p>
			<a href=""> <span class="my-item">商品审核</span>
			</a> 
			<a href=""> <span class="my-item">店铺审核</span>
			</a>
		</p>
		<p>
			<a>
			<span class="my-item">后台管理</span> </a>
			<a>
			<span class="my-item">用户反馈</span></a>
		</p>
		<p>
			<a>
			<span class="my-item">我的消息</span> 
			</a>
			<a href="">
				<span class="my-item">退出登录</span>
			</a>
		</p>
	</div>
	
	<!-- 底部 -->
	<footer class="footer" style="margin-top: 500px">
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

<script src="js/mall.js"></script>
</html>