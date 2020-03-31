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
			<a href=""><img class="websiteIcon_1" src="img/sakura.jpg"
				onclick="location.reload()" /></a>
			<a href=""><img class="websiteIcon_2"
				; src="img/website_name.png" onclick="location.reload()" /></a>

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

	<!-- 导航条 -->
	<div class="shop-item-path">
		<div class="shop-nav-container">
			<p style="margin-left: -100px;">${requestScope.commodityInfo.commodityType.commodityTypeName }</p>
		</div>
	</div>
	<!-- 商品信息展示 -->
	<div class="item-detail-show" style="flex-direction: row;">

		<div class="item-detail-left"
			style="margin-left: 21%; margin-top: 30px;">
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
			<div class="item-detail-title" style="border-bottom: 4px solid #ccc;">
				<p>
					<img src="img/sakura.jpg" height="25"
						style="line-height: 2px; margin-bottom: 15px;">
					&nbsp;&nbsp;${requestScope.commodityInfo.commodityName }
				</p>
			</div>
			<div class="item-detail-price-row"
				style="height: 150px; border-bottom: 4px solid #ccc; margin-bottom: 40px">
				<div class="item-price-left" style="height: 150px;">
					<div class="item-price-row">
						<p style="margin-top: 10px;">
							<span class="item-price-title">单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</span>
							<span class="item-price">￥${requestScope.commodityInfo.commodityPrice }</span>
						</p>
						<p style="margin-top: 50px;">
							<span class="item-price-title">樱 花 价</span> <span
								class="item-price">￥${requestScope.commodityInfo.commodityPrice }</span>
						</p>
					</div>
				</div>
				<div class="item-price-right" style="height: 150px;">
					<div class="item-remarks-sum">
						<p style="margin-top: 20px;">累计评价</p>
						<p>
							<span class="item-remarks-num">${requestScope.commentNumber }</span>
						</p>
					</div>
				</div>
			</div>
				<div class="number form-group"
					style="box-shadow: #F2DEDE 0px 1px 2px 3px; padding-left: 5px; height:35px; margin-bottom: 40px">
					<li style="margin-top: 5px; padding-top: 5px;"><label>商品编号：</label>
						<b type="text" name="commodityNumber" value="${requestScope.commodityInfo.commodityNumber }" readonly="readonly">
					</li>
				</div>
				<div>
					<a href="#">
							<input type="button" class="btn btn-danger"
								style="margin-top: 8px; margin-left: 60px" value="商品下架"
								onclick="if(confirm('您确定要删除该商品？')){window.location.href=''}"></a> 
					<a href="#">
							<input type="button" class="btn btn-danger"
								style="margin-top: 8px; margin-left: 60px" value="商品删除"
								onclick="if(confirm('您确定要下架该商品？')){window.location.href=''}">
					</a>
				</div>
		</div>
	</div>

	<!--
    	作者：2017141463149@stu.scu.edu.cn
    	时间：2019-07-21
    	描述：详情及评价
    -->
	<div class="item-detail-show" style="padding-bottom: 50px">
		<div class="item-detail-left"
			style="margin-top: 20px; margin-left: 40px; width: 400px; height: 200px; box-shadow: #C7254E 1px 1px 1px 1px;">
			<p style="text-align: center; font-size: large;">商家信息</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;店铺名称:
				${requestScope.commodityInfo.merchant.vendorName }</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;负 责
				人：${requestScope.commodityInfo.merchant.principal }</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;联系电话：${requestScope.commodityInfo.merchant.merchantNumber }</p>
			<button class="btn btn-danger" style="margin-left: 135px; margin-top: 10px">

					<a onclick="window.location.href='merchant.jsp'"
						style="margin-top: 8px; margin-left: 10px; text-decoration: none">
						⭐进入店铺⭐ </a>
			</button>
		</div>
		<div class="item-detail-center"
			style="margin-top: 20px; margin-left: 20px; width: 900px; box-shadow: #C7254E 1px 1px 1px 1px;">
			<!--
        	作者：2017141463149@stu.scu.edu.cn
        	时间：2019-07-21
        	描述：详情和评价的具体实现
        -->
			<div id="btn">
				<a href='javascript:void(0)' index='0' class="tab_btn curr_btn">产品详情</a>
				<a href='javascript:void(0)' index='1' class="tab_btn">用户评价</a>
			</div>
			<div id="tab">
				<div class="tab_div curr_div" style="margin-bottom: 10px">
					<p>
						<img width="100%"
							src="./${requestScope.commodityInfo.commodityPictureIndex }3.jpg"
							alt="商品详图">
					</p>
					<p>
						<img width="100%"
							src="./${requestScope.commodityInfo.commodityPictureIndex }2.jpg"
							alt="商品详图">
					</p>
					<p>
						<img width="100%"
							src="./${requestScope.commodityInfo.commodityPictureIndex }1.jpg"
							alt="商品详图">
					</p>
					<p class="font">&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.commodityInfo.commodityDetail }</p>

				</div>
				<div class="tab_div">
					<c:if test="${requestScope.commentList==null }">
        				暂时没有相关评价
        			</c:if>
					<c:if test="${requestScope.commentList!=null }">

						<c:forEach var="comment" items="${requestScope.commentList }">
							<p>
								评价等级： ${comment.commentLevel }<br>
								评价内容：${comment.commentContent }<br>
								评价时间：${comment.commentTime }
							</p>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
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
<script type="text/javascript">
	$('.item-detail-img-small img').hover(function() {
		$('.item-detail-big-img img').attr('src', $(this).attr('src'));
	});
</script>
<script src="js/mall.js"></script>
</html>