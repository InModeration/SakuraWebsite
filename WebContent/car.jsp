<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${sessionScope.user==null }">
	<jsp:forward page="login.jsp"></jsp:forward>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sakura Website | 购物车</title>
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
			<b style="margin-left: 110px; vertical-align: text-bottom;">购物车</b> <img
				class="img" src="img/car_1.jpg" style="margin-left: 110px" /> <img
				class="img" src="img/car_2.jfif" /> <img class="img"
				src="img/car_3.jfif" /> <img class="img" src="img/car_4.jfif" /> <img
				class="img" src="img/car.jpg" style="margin-left: 50px" />
		</p>
	</div>

	<form action="FillOrderServlet" name="myForm"
		onsubmit="return validateForm()">
		<!-- 添加成功提示 -->
		<div class="add-info-box-container"
			style="background-color: #fff6f6; margin-top: 15px; box-shadow: 0px 5px 5px #5a5a6d; padding-bottom: 20px">
			<c:if test="${requestScope.shoppingCartGoods!=null }">
				<c:forEach var="shoppingCartGood"
					items="${requestScope.shoppingCartGoods }">
					<c:if test="${shoppingCartGood.commodityInfo.commodityState==1 }">
						<div class="add-info-box"
							style="box-shadow: 0px 4px 5px #882839; margin-bottom: 20px">
							<div class="add-info-detail">
								<div class="add-info-box-row">
									<div class="add-info-img">
										<img
											src="./${shoppingCartGood.commodityInfo.commodityPictureIndex }1.jpg"
											alt="">
									</div>
									<div class="add-info-intro">
										<p>商品种类：${shoppingCartGood.commodityInfo.commodityType.commodityTypeName }</p>
										<p>商品名：${shoppingCartGood.commodityInfo.commodityName }</p>
										<p>规格：${shoppingCartGood.commodityInfo.commoditySize }${shoppingCartGood.commodityInfo.commodityUnit }</p>
									</div>
								</div>
							</div>
							<div style="margin-left: 400px; margin-top: 10px;">
								<p>单价：￥${shoppingCartGood.commodityInfo.commodityPrice }</p>
								<p>数量 * ${shoppingCartGood.quantity }</p>
								<!-- 这里 -->
								<p id="total${shoppingCartGood.commodityInfo.commodityNumber}"
									value="${shoppingCartGood.commodityInfo.commodityPrice*shoppingCartGood.quantity }">总计：￥${shoppingCartGood.commodityInfo.commodityPrice*shoppingCartGood.quantity }</p>
							</div>
							<div class="car-btn-group">
								<div style="text-align: right; margin-right: 15px">
									选中商品 <input type="checkbox" name="checked" onclick="add()"
										id="${shoppingCartGood.commodityInfo.commodityNumber}"
										value="${shoppingCartGood.commodityInfo.commodityNumber}" />
								</div>
								<div class="car-btn-row">
									<input type="button" class="btn-car btn-car-to-pay"
										onclick="window.location.href='ShowDetailServlet?commodityNumber=${shoppingCartGood.commodityInfo.commodityNumber }'"
										value="查看商品详情" /> <input type="button"
										class="btn-car btn-car-to-pay"
										onclick="if(confirm('此商品将会从您的购物车中移除，确定操作吗？')){window.location.href=''}"
										value="移除该商品" />
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</c:if>
			<c:if test="${requestScope.shoppingCartGoods==null }">
				<center>购物车空荡荡的耶！</center>
			</c:if>
		</div>

		<!-- 结算栏 -->
		<div class="result">

			<b class="rFont"> 总金额：￥ </b> <b style="font-size: medium"
				id="all-total">0</b> <input class="btn btn-danger" type="submit"
				value="创建订单"
				style="width: 100px; float: right; margin-right: 200px; margin-top: 13px")>
		</div>
	</form>


	<!-- 推荐栏 -->
	<div class="other-user-buy-box">
		<div class="other-user-buy-title">
			<p>购买了该商品的用户还购买了</p>
		</div>
		<div class="other-user-buy-row">
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/1.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>iPhone7/6s/8钢化膜苹果7Plus全屏全覆盖3D抗蓝</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥29.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/2.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>苹果数据线
								苹果iPhoneX/6s/7plus/8充电线</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥36.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/3.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>苹果8/7/6/6s钢化膜
								iphone8/7/6s/6钢化玻璃</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥19.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<img src="./img/other_buy/4.jpg" alt="">
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>iPhone6s/7钢化膜苹果8
								Plus手机膜抗蓝光非全屏</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥28.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
		</div>
		<div class="other-user-buy-row">
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/5.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>苹果6s手机壳iPhone6s Plus保护壳防摔全</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥28.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/6.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>iPhone7/8手机壳手机套防摔磨砂保护壳星空黑☆全包保护</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥30.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/7.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>数据线 适用于苹果iPhone
								6s/6plus/7plus/8/X</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥18.00</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
			<div class="other-user-buy-item-box">
				<div class="other-user-buy-item-img">
					<a href="item_detail.html"><img src="./img/other_buy/8.jpg"
						alt=""></a>
				</div>
				<div class="other-buy-detail-box">
					<div class="other-buy-title">
						<a href="item_detail.html"><p>iPhone8/7/6S/6钢化膜
								苹果8/7/6s/6玻璃膜 手机高</p></a>
					</div>
					<div class="other-buy-price">
						<p>￥15.90</p>
					</div>
					<div class="other-buy-btn-box">
						<a href="#"><button class="other-buy-btn">
								<i class="fa fa-shopping-cart"></i> 加入购物车
							</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 我的商城 -->
	<div class="my-shop-panel">
		<p>
			<a href="ShowShoppingCartServlet"> <span class="my-item">我的购物车</span>
			</a> <a href="ShowOrderServlet"> <span class="my-item">订单管理</span>
			</a>
		</p>
		<p>
			<span class="my-item">返修退换货</span> <span class="my-item">降价商品</span>
		</p>
		<p>
			<span class="my-item">我的新消息</span> <a href="LogoutServlet?type=user">
				<span class="my-item">退出登录</span>
			</a>
		</p>
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
<script>

function add() {
	var obj=document.getElementsByName("checked");
	var all_total = 0;
	
	for(var i=0;i<obj.length;i++){
		var id = "total"+obj[i].id;

		if(obj[i].checked==true)
		{
			var curr=parseFloat(document.getElementById(id).getAttribute("value"));
			all_total += curr;
			//alert("select " + id);
		}
	}
	
	//alert(id);
	//var id = this.id+sessionStorage.getItem
	//var id=this.id+"${shoppingCartGood.commodityInfo.commodityNumber}";
	//var curr=parseFloat(document.getElementById(id).getAttribute("value"));
	
	document.getElementById("all-total").innerHTML = all_total;
}

function validateForm() {
	add();
	
	var num=0; 
	var obj=document.getElementsByName("checked");//通过此获得checkbox对象 

	for(var i=0;i<obj.length;i++){ 
	   if(obj[i].checked==true){ 
	      num=num+1; 
	     } 
	} 
	
	if(num==0 ){ 
		alert("请勾选商品"); 
		return false;
	}else{
		return true;
	}
}

</script>
<script src="js/mall.js"></script>
</html>