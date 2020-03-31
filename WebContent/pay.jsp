<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/mall.css">
<style>
body {
	/*根据商品种类选择背景图*/
	background-color: #F2DEDE;
}

.number {
	margin-top: 10px;
	height: 100px;
}

#btn {
	width: 800px height: 10px;
	border: 1px solid #D52B2A;
}

#tab {
	width: 100%;
	position: relative;
	margin-bottom: 20px
}

.tab_btn {
	display: block;
	width: 900px;
	height: 40px;
	background: white;
	line-height: 60px;
	text-align: center;
	text-decoration: none;
	color: black;
}

.tab_btn:hover {
	background: white;
	color: black;
}

.tab_div {
	position: absolute;
	left: 0px;
	top: 0px;
	display: none;
}

.curr_btn {
	background: #E7C3C3 !important;
	color: white;
}

.curr_div {
	display: contents;
}

contents  .imgDetail {
	width: 100%;
	margin-bottom: 10px;
	border: 3px pink;
}

.font {
	font-size: large;
}
</style>
<script>
	function getClass(className) { //className指class的值

		var tagname = document.getElementsByTagName('*'); //获取指定元素
		var tagnameAll = []; //这个数组用于存储所有符合条件的元素
		for (var i = 0; i < tagname.length; i++) { //遍历获得的元素
			if (tagname[i].className.indexOf(className) >= 0) { //如果获得的元素中的class的值等于指定的类名，就赋值给tagnameAll
				tagnameAll[tagnameAll.length] = tagname[i];
			}
		}
		return tagnameAll;
	}
	window.onload = function() {//载入事件
		var btn = getClass('tab_btn');//获取按钮数组
		var div = getClass('tab_div');//获取div数组
		for (i = 0; i < btn.length; i++) {
			btn[i].onclick = function() {//按钮点击事件
				var index = (this.getAttribute('index') - 0);//获取是第几个按钮按下
				if (btn[index].className.indexOf('curr_btn') >= 0)
					return;//如果按下的按钮为当前选中的按钮则无反应
				for (i = 0; i < btn.length; i++) {
					if (index == i) {
						btn[i].className = 'tab_btn curr_btn';
						div[i].className = 'tab_div curr_div';
					} else {
						btn[i].className = 'tab_btn';
						div[i].className = 'tab_div';
					}
				}
			}
		}
	};
</script>
</head>

<body>
	<!-- 顶部导航条 -->
	<div class="nav headInfo">
		<ul>
			<a href=""><img class="websiteIcon_1" ; src="img/sakura.jpg"
				onclick="location.reload()" /></a>
			<a href=""><img class="websiteIcon_2"
				; src="img/website_name.png" onclick="location.reload()" /></a>

			<li><a href="#" style="margin-left: 100px;">手机商城</a></li>
			<li><a href="#">网站导航</a></li>
			<li><a href="help.html">客户服务</a></li>
			<li><a href="#">企业采购</a></li>
			<li><a href="#">商城会员</a></li>
			<c:if test="${sessionScope.user==null }">
			<li class="login-signup" style="font-size: 15px; padding-top:5px; margin-left: 300px;">你好，请<a href="login.jsp">登录 </a><span class="text-color-red"><a href="signup.jsp">免费注册</a></span></li>
			</c:if>
			<c:if test="${sessionScope.user!=null }">
			<li class="login-signup nav-pull-down my-shop" style="font-size=15px; padding-top:5px; margin-left: 300px;">欢迎&nbsp,&nbsp&nbsp<a href=>${sessionScope.user.userName }</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<!--li class="login-signup" style="font-size: 15px; padding-top:5px; margin-left: 200px;">欢迎 <a href=>${sessionScope.user.userName }</a></li-->
			</c:if>
		</ul>
	</div>
	<!-- 支付提示 -->
	<div class="pay-box" style="margin-top:80px; margin-bottom:80px; width:800px">
		<div class="pay-title">
			<p>请扫码支付</p>
		</div>
		<div class="pay-qr" style="display:inherit">
			<img src="img/vx.JPG" style="width:50%; height:540px" alt="微信付款码">
			<img src="img/ali.JPG" style="width:50%; height:540px" alt="支付宝付款码">
		</div>
		<div class="pay-btn">
			<a href="success.html" class="btn btn-danger btn-lg">支付成功</a>
		</div>
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
	<!-- 我的商城 -->
	<div class="my-shop-panel">
		<p>
			<span class="my-item">待处理订单</span>
			<span class="my-item">返修退换货</span>
		</p>
		<p>
			<span class="my-item">返修退换货</span>	
			<span class="my-item">降价商品</span>
		</p>	
		<p>
			<span class="my-item">我的新消息</span>
			<span class="my-item">我的问答</span>
		</p>
	</div>
</body>
<script type="text/javascript">
	$('.item-detail-img-small img').hover(function() {
		$('.item-detail-big-img img').attr('src', $(this).attr('src'));
	});
</script>
<script src="js/mall.js"></script>
</html>