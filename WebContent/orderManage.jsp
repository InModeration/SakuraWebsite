<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sakura Website | 订单管理</title>
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
.rFont{
	font-size:large;
	margin-left:70%;
}

a{
	color:#000;
}
a:hover{
	color:pink;
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
			<c:if test="${sessionScope.user==null }">
				<li class="login-signup"
					style="font-size: 15px; padding-top: 5px; margin-left: 300px;">你好，请<a
					href="login.jsp">登录 </a><span class="text-color-red"><a
						href="signup.jsp">免费注册</a></span></li>
			</c:if>
			<c:if test="${sessionScope.user!=null }">
				<li class="login-signup nav-pull-down my-shop"
					style="padding-top: 5px; margin-left: 300px;">欢迎&nbsp,&nbsp&nbsp<a
					href=>${sessionScope.user.userName }</a> <span
					class="glyphicon glyphicon-menu-down"></span></li>
			</c:if>
		</ul>
	</div>

	<!-- 消息隔栏 -->
	<div
		style="width: 100%; float: left; font-size: xx-large; line-height: 10px;  margin-bottom:40px">
		<p>
			<img class="img" src="img/order.jpg" style="margin-left: 110px" />
			<b style="margin-left: 50px; vertical-align: text-bottom;">我的订单</b> 
			
		</p>
	</div>

	<!-- 添加成功提示 -->
	<div class="add-info-box-container"
		style="background-color: #fff6f6; margin-top: 15px; box-shadow: 0px 5px 5px #5a5a6d; padding-bottom: 20px">
		
		<div>
		<div class="add-info-box" style="padding-bottom: 0px; padding-top: 0px;">
			<a href="" style="text-decoration:none">店铺名称</a>
		</div>
		<div class="add-info-box"
			style="box-shadow: 0px 4px 5px #882839; margin-bottom: 30px;padding-bottom: 10px;" >
			
			<a href="item_detail.jsp" style="text-decoration:none; width:100%; height:100%">
			<div class="add-info-detail">
				<div class="add-info-box-row">
					<div class="add-info-img">
						<img src="./img/select/1.jpg" alt="">
					</div>
					<div class="add-info-intro">
						<p>苹果8/7手机壳iPhone7Plus保护壳全包防摔磨砂硬外壳手机套女薄男透明 4.7英寸-深邃蓝...</p>
						<p class="add-info-intro-detail">颜色：4.7英寸-深邃蓝/ 数量：1</p>
					</div>
				</div>
			</div>
			<div class="car-btn-group">
				<div></div>
				<div class="car-btn-row">
					<a href="item_detail.jsp"><button class="btn-car btn-car-to-pay">查看商品详情
							></button></a>
				</div>
			</div>
			</a>
		</div>
		<div>
		<div class="add-info-box" style="padding-bottom: 0px; padding-top: 0px;">
			<a href="" style="text-decoration:none">店铺名称</a>
		</div>
		<div class="add-info-box"
			style="box-shadow: 0px 4px 5px #882839; margin-bottom: 30px;padding-bottom: 10px;" >
			
			<a href="item_detail.jsp" style="text-decoration:none; width:100%; height:100%">
			<div class="add-info-detail">
				<div class="add-info-box-row">
					<div class="add-info-img">
						<img src="./img/select/1.jpg" alt="">
					</div>
					<div class="add-info-intro">
						<p>苹果8/7手机壳iPhone7Plus保护壳全包防摔磨砂硬外壳手机套女薄男透明 4.7英寸-深邃蓝...</p>
						<p class="add-info-intro-detail">颜色：4.7英寸-深邃蓝/ 数量：1</p>
					</div>
				</div>
			</div>
			<div class="car-btn-group">
				<div></div>
				<div class="car-btn-row">
					<a href="item_detail.jsp"><button class="btn-car btn-car-to-pay">查看商品详情
							></button></a>
				</div>
			</div>
			</a>
		</div>
		<div>
		<div class="add-info-box" style="padding-bottom: 0px; padding-top: 0px;">
			<a href="" style="text-decoration:none">店铺名称</a>
		</div>
		<div class="add-info-box"
			style="box-shadow: 0px 4px 5px #882839; margin-bottom: 30px;padding-bottom: 10px;" >
			
			<a href="item_detail.jsp" style="text-decoration:none; width:100%; height:100%">
			<div class="add-info-detail">
				<div class="add-info-box-row">
					<div class="add-info-img">
						<img src="./img/select/1.jpg" alt="">
					</div>
					<div class="add-info-intro">
						<p>苹果8/7手机壳iPhone7Plus保护壳全包防摔磨砂硬外壳手机套女薄男透明 4.7英寸-深邃蓝...</p>
						<p class="add-info-intro-detail">颜色：4.7英寸-深邃蓝/ 数量：1</p>
					</div>
				</div>
			</div>
			<div class="car-btn-group">
				<div></div>
				<div class="car-btn-row">
					<a href="item_detail.jsp"><button class="btn-car btn-car-to-pay">查看商品详情
							></button></a>
				</div>
			</div>
			</a>
		</div>
		
	<!-- 底部 -->
	<footer class="footer">
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