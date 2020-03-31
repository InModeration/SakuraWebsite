<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Sakura Website | 商品</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/mall.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<style>
.searchFrame {
	height: 50px;
	background-color: #FFF;
	box-shadow: #F2DEDE 0px 1px 2px 3px;
}

.guide {
	background-color: pink;
	border: pink 2px solid;
}

.img{
	margin:0 auto;
	width:100%;
	height:200px;
}
</style>
</head>

<body class="search-page" style="background-color: mistyrose;">
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
				<!--li class="login-signup" style="font-size: 15px; padding-top:5px; margin-left: 200px;">欢迎 <a href=>${sessionScope.user.userName }</a></li-->
			</c:if>
		</ul>
	</div>
	<!-- 搜索框 -->
	<div class="search searchFrame" style="width: 100%">
		<div class="search-body" style="width: 100%">
			<div class="input-group" style="width: 100%">
				<form action="SearchByNameServlet" method="post">
					<input type="text" class="form-control" placeholder="输入你想要的商品"
						name="commodityName" value="${requestScope.searchContent }"
						style="width: 22%; margin-left: 38%; margin-top: 7px"> <span
						class="input-group-btn" style="width: 10%"> <a href="#">
							<button class="btn btn-danger btn-search" type="submit"
								style="margin-top: 7px">
								<i class="fa fa-search"></i>
							</button>
					</a>
					</span>
				</form>
			</div>
		</div>
	</div>
	<!-- 导航栏 -->
	<div class="nav-item">
		<ul>
			<li><a href="index.jsp">首页</a></li>
			<li><a href="SearchByTypeServlet?commodityTypeID=1">优惠券</a></li>
			<li><a href="SearchByTypeServlet?commodityTypeID=2">优惠券</a></li>
			<li><a href="SearchByTypeServlet?commodityTypeID=3">优惠券</a></li>
			<li><a href="SearchByTypeServlet?commodityTypeID=4">优惠券</a></li>
			<li><a href="SearchByTypeServlet?commodityTypeID=5">优惠券</a></li>
		</ul>
	</div>
	<div class="nav-body">
		<!-- 内容主题开始 -->
		<div class="container-full">
			<div class="item-list" style="box-shadow: #B92C28 5px 5px 5px;">
				<div class="item-list-right"
					style="box-shadow: #B92C28 5px 5px 5px; width: 90%; margin-left: -5%; background-color: #fff">
					<div class="item-container">
						<div class="item-list-tool"
							style="box-shadow: #B92C28 5px 5px 5px;">
							<ul>
								<a href="${sessionScope.lastPage }&sortMethod=1">
									<li><span>默认排序 <strong> <i></i>
										</strong>
									</span></li>
								</a>
								<a href="${sessionScope.lastPage }&sortMethod=2">
									<li><span>价格从高到低 <strong> <i
												class="fa fa-long-arrow-down"></i></span> </strong></li>
								</a>
								<a href="${sessionScope.lastPage }&sortMethod=3">
									<li><span>价格从低到高 <strong> <i
												class="fa fa-long-arrow-up"></i></span> </strong></li>
								</a>
							</ul>
						</div>
						<div class="item-row">
							<c:if test="${requestScope.resultList!=null }">
								<c:forEach var="commodityInfo"
									items="${requestScope.resultList }">
									<c:if test="${commodityInfo.commodityState==1 }">
										<a
											href="ShowDetailServlet?commodityNumber=${commodityInfo.commodityNumber }">
											<div class="item-show-info">
												<div class="item-show-img">
													<img class="img" src="./${commodityInfo.commodityPictureIndex }1.jpg" />
												</div>
												<div class="item-show-price">
													<span> <i class="fa fa-rmb text-danger"></i> <span
														class="seckill-price text-danger">${commodityInfo.commodityPrice }</span>
													</span>
												</div>
												<div class="item-show-detail">
													<span>${commodityInfo.commodityName }</span>
												</div>
												<div class="item-show-num">
													已有 <span>xxxx</span>人评价
												</div>
												<div class="item-show-seller">
													<span>${commodityInfo.merchant.vendorName }</span>
												</div>
											</div>
										</a>
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${requestScope.resultList==null }">
								<p align="center">没有搜索到相关结果</p>
							</c:if>
							<!-- 
						<div class="item-show-info">
							<div class="item-show-img">
								<img src="img/item-show-1.jpg">
							</div>
							<div class="item-show-price">
								<span> <i class="fa fa-rmb text-danger"></i> <span
									class="seckill-price text-danger">36.60</span>
								</span>
							</div>
							<div class="item-show-detail">
								<span>SKSK 苹果7/7plus手机壳 iPhone 7 Plus保护套全包硬壳男女磨砂防摔 火影红(苹</span>
							</div>
							<div class="item-show-num">
								已有 <span>6160</span>人评价
							</div>
							<div class="item-show-seller">
								<span>元亨利配件专营店</span>
							</div>
						</div>
					 -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 内容主题结束 -->


		<!-- 清除浮动 -->
		<div class="clearfix"></div>
		

		<!-- 页面上的各种浮窗 -->

		
	
	<!-- 我的商城 -->
	<div class="my-shop-panel">
			<p>
			<a href="ShowShoppingCartServlet">
				<span class="my-item">我的购物车</span>
			</a>
			<a href="ShowOrderServlet">
				<span class="my-item">订单管理</span>
			</a>
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