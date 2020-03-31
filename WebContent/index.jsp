<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	session.setAttribute("lastPage","index.jsp");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sakura Website | 主页</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mall.css">
	<style>
		body{
			background-image: url(img/mainBack.jpg);
		}
	</style>

</head>
<body>
	
	<!-- 顶部导航条 -->
	<div class="nav headInfo">
		<ul>
			<a href><img class="websiteIcon_1" src="img/sakura.jpg" onclick="location.reload()" /></a>
			<a href><img class="websiteIcon_2" src="img/website_name.png" onclick="location.reload()"/></a>
			
			<li><a href="SearchByTypeServlet?commodityTypeID=1" style="margin-left: 100px;">手机商城</a></li>
			<li><a href="#">网站导航</a></li>
			<li><a href="#">客户服务</a></li>
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
	<!-- 内容主题 -->
	<div class="container">
		<!-- 搜索框 -->
	<div class="search searchFrame" style="width:100%">
		<div class="search-body" style="width:100%">
			<div class="input-group" style="width:100%">
					<form action="SearchByNameServlet" method="post">
						<input type="text" class="form-control" placeholder="输入你想要的商品"
							name="commodityName" value="${requestScope.searchContent }" style="width:22%; margin-left:38%; margin-top:7px">
						<span class="input-group-btn" style="width: 10%"> 
							<a href="#">
								<button
									class="btn btn-danger btn-search" type="submit" style="margin-top:7px">
									<i class="fa fa-search"></i>
								</button>
							</a>
						</span>
					</form>
			    </div>
			</div>
		</div>
		<!-- 横向导航 -->
		<div class="nav-item">
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="SearchByTypeServlet?commodityTypeID=1">电子商城</a></li>
				<li><a href="SearchByTypeServlet?commodityTypeID=2">优惠券</a></li>
				<li><a href="SearchByTypeServlet?commodityTypeID=3">优惠券</a></li>
				<li><a href="SearchByTypeServlet?commodityTypeID=4">优惠券</a></li>
				<li><a href="SearchByTypeServlet?commodityTypeID=5">优惠券</a></li>
			</ul>
		</div>
		<div class="nav-body">

			<div class="nav-content">
				<!-- 幻灯片 -->
				<div class="slide">
					<img class="carousel_img" src="img/1.jpg" name="1">
					<img class="carousel_img" src="img/2.jpg" name="2">
					<img class="carousel_img" src="img/3.png" name="3">
					<img class="carousel_img" src="img/4.jfif" name="4">
					<img class="carousel_img" src="img/5.jpg" name="5">
					<div class="icon">
						<i name="1" class="fa fa-circle"></i>
						<i name="2" class="fa fa-circle"></i>
						<i name="3" class="fa fa-circle"></i>
						<i name="4" class="fa fa-circle"></i>
						<i name="5" class="fa fa-circle"></i>
					</div>
					<div class="prev prevNext" onclick="PrevNextClick(1)"> <span class="glyphicon glyphicon-menu-left"></span> </div>
					<div class="next prevNext" onclick="PrevNextClick(2)"> <span class="glyphicon glyphicon-menu-right"></span> </div>
				</div>

			</div>
		</div>
		<!-- 商品显示区域 -->
		<div class="content">
			<!-- 秒杀 -->
			<div class="seckill">
				<!-- 头部 -->
				<div class="seckill-head">
					<div class="seckill-icon">
						<img src="img/clock.png">
					</div>
					<div class="seckill-text">
						<span class="seckill-title">限时秒杀</span>
						<span class="seckill-remarks">总有你想不到的低价</span>
					</div>
					<div class="count-down">
						<span class="count-down-text">当前场次</span>
						<span class="count-down-num count-down-hour">00</span>
						<span class="count-down-point">:</span>
						<span class="count-down-num count-down-minute">56</span>
						<span class="count-down-point">:</span>
						<span class="count-down-num count-down-seconds">00</span>
						<span class="count-down-text">后结束抢购</span>
					</div>
				</div>
				<!-- 内容 -->
				<div class="seckill-content">
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item1.jpg">
						</div>
						<div class="seckill-item-info">
							<p>【赠小风扇】维他 柠檬茶250ml*32盒 礼品装 整箱</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">71.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>89.6</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item2.jpg">
						</div>
						<div class="seckill-item-info">
							<p>Kindle Paperwhite 全新升级版6英寸护眼非反光电子墨水</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">989.0</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>1299.0</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item3.jpg">
						</div>
						<div class="seckill-item-info">
							<p>粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">21.8</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>49.0</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item4.jpg">
						</div>
						<div class="seckill-item-info">
							<p>【京东超市】清风（APP）抽纸 原木纯品金装系列 3层</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">49.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>109.0</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item1.jpg">
						</div>
						<div class="seckill-item-info">
							<p>NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">559</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>798.0</s></p>
						</div>
					</div>
				</div>
			</div>
			<!-- 电脑专场 -->
			<div class="item-class">
				<div class="item-class-head">
					<span class="item-class-title">电脑数码</span>
					<ul>
						<li><a href="#">电脑馆</a></li>
						<li><a href="#">游戏极品</a></li>
						<li><a href="#">装机大师</a></li>
						<li><a href="#">职场焕新</a></li>
						<li><a href="#">女神频道</a></li>
						<li><a href="#">虚拟现实</a></li>
						<li><a href="#">二合一平板</a></li>
						<li><a href="#">电子教育</a></li>
						<li><a href="#">万物周刊</a></li>
					</ul>
				</div>
				<div class="item-class-content">
					<div class="item-content-top">
						<div class="item-big-img">
							<img src="img/item-computer-1.jpg" alt="">
						</div>
						<div class="item-four-img">
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">电脑馆</p>
									<p class="pt_bi_promo">笔记本999元限量秒！</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">外设装备</p>
									<p class="pt_bi_promo">1000减618</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-1-3.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">电脑配件</p>
									<p class="pt_bi_promo">联合满减<br>最高省618</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-1-4.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">办公生活</p>
									<p class="pt_bi_promo">5折神券 精品文具</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-1-5.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="item-content-bottom">
						<div class="item-content-bottom-img">
							<img src="img/item-computer-1-6.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-computer-1-7.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-computer-1-8.jpg">
						</div>
					</div>
				</div>
				<div class="item-class-content">
					<div class="item-content-top">
						<div class="item-big-img">
							<img src="img/item-computer-2-1.jpg" alt="">
						</div>
						<div class="item-four-img">
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">平板电脑</p>
									<p class="pt_bi_promo">爆款平板12期免息</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-2-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">智能酷玩</p>
									<p class="pt_bi_promo">抢999减666神券</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-2-3.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">娱乐影音</p>
									<p class="pt_bi_promo">大牌耳机低至5折</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-2-4.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit">摄影摄像</p>
									<p class="pt_bi_promo">大牌相机5折抢</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-computer-2-5.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="item-content-bottom">
						<div class="item-content-bottom-img">
							<img src="img/item-computer-2-6.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-computer-2-7.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-computer-2-8.jpg">
						</div>
					</div>
				</div>
			</div>
			<!-- 爱吃专场 -->
			<div class="item-class">
				<div class="item-class-head item-class-eat-head">
					<span class="item-class-title">爱吃</span>
					<ul>
						<li><a href="#">休闲零食</a></li>
						<li><a href="#">坚果</a></li>
						<li><a href="#">牛奶</a></li>
						<li><a href="#">饮料冲调</a></li>
						<li><a href="#">食用油</a></li>
						<li><a href="#">大米</a></li>
						<li><a href="#">白酒</a></li>
						<li><a href="#">红酒</a></li>
						<li><a href="#">烧烤食材</a></li>
						<li><a href="#">牛排</a></li>
						<li><a href="#">樱桃</a></li>
						
					</ul>
				</div>
				<div class="item-class-content">
					<div class="item-content-top">
						<div class="item-big-img">
							<img src="img/item-eat-1-1.jpg" alt="">
						</div>
						<div class="item-four-img">
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">粮油调味</p>
									<p class="pt_bi_promo">买2免1</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-1-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">饮料冲调</p>
									<p class="pt_bi_promo">第二件半价</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-1-3.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">休闲零食</p>
									<p class="pt_bi_promo">满99减40</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-1-4.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">中外名酒</p>
									<p class="pt_bi_promo">满199减100</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-1-5.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="item-content-bottom">
						<div class="item-content-bottom-img">
							<img src="img/item-eat-1-6.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-eat-1-7.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-eat-1-8.jpg">
						</div>
					</div>
				</div>
				<div class="item-class-content">
					<div class="item-content-top">
						<div class="item-big-img">
							<img src="img/item-eat-2-1.jpg" alt="">
						</div>
						<div class="item-four-img">
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">东家菜</p>
									<p class="pt_bi_promo">丰富好味</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-2-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">东家菜</p>
									<p class="pt_bi_promo">丰富好味</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-2-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">东家菜</p>
									<p class="pt_bi_promo">丰富好味</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-2-2.jpg" alt="">
								</div>
							</div>
							<div class="item-four-detail">
								<div class="item-four-detail-text">
									<p class="pt_bi_tit pt_bi_tit-eat">东家菜</p>
									<p class="pt_bi_promo">丰富好味</p>
								</div>
								<div class="item-four-detail-img">
									<img src="img/item-eat-2-2.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="item-content-bottom">
						<div class="item-content-bottom-img">
							<img src="img/item-eat-2-6.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-eat-2-7.jpg">
						</div>
						<div class="item-content-bottom-img">
							<img src="img/item-eat-2-8.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 清除浮动 -->
	<div class="clearfix"></div>
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
				<p>Copyright © 2019 Sakura Website</p>
			</div>
		</div>
	</footer>
	<!-- 页面上的各种浮窗 -->
	
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
	<!-- 显示详细商品分类菜单 -->
	<!-- 暂时先用两个面板显示商品分类详情 -->
	<div class="detail-item-panel panel-1">
		<div class="nav-detail-item">
			<span>清洁用品 > </span>
			<span>美妆商城 > </span>
			<span>美妆馆 > </span>
			<span>妆比社 > </span>
			<span>全球购美妆 > </span>
			<span>宠物馆 > </span>
		</div>
		<ul>
			<li>
				<span class="detail-item-title">面部护肤 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">补水保湿</span>
			    <span class="detail-item">卸妆</span>
			    <span class="detail-item">洁面</span>
			    <span class="detail-item">爽肤水</span>
			    <span class="detail-item">乳液面霜</span>
			    <span class="detail-item">精华</span>
			    <span class="detail-item">眼霜</span>
			    <span class="detail-item">防晒</span>
			    <span class="detail-item">面膜</span>
			    <span class="detail-item">剃须</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">洗发护发 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">洗发</span>
			    <span class="detail-item">护发</span>
			    <span class="detail-item">染发</span>
			    <span class="detail-item">造型</span>
			    <span class="detail-item">假发</span>
			    <span class="detail-item">美发工具</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">身体护理 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">补水保湿</span>
			    <span class="detail-item">沐浴</span>
			    <span class="detail-item">润肤</span>
			    <span class="detail-item">精油</span>
			    <span class="detail-item">颈部</span>
			    <span class="detail-item">手足</span>
			    <span class="detail-item">纤体塑形</span>
			    <span class="detail-item">美胸</span>
			    <span class="detail-item">套装</span>	
	    	</li>
	    	<li>
	    		<span class="detail-item-title">口腔护理 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">牙膏/牙粉</span>
			    <span class="detail-item">牙刷/牙线</span>
			    <span class="detail-item">漱口水</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">女性护理 <span class="glyphicon glyphicon-menu-right"></span></span>
	    		<span class="detail-item">卫生巾</span>
			    <span class="detail-item">卫生护垫</span>
			    <span class="detail-item">私密护理</span>
			    <span class="detail-item">脱毛膏</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">香水彩妆 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">BB霜</span>
			    <span class="detail-item">化妆棉</span>
			    <span class="detail-item">女士香水</span>
			    <span class="detail-item">男士香水</span>
			    <span class="detail-item">底妆</span>
			    <span class="detail-item">眉笔</span>
			    <span class="detail-item">睫毛膏</span>
			    <span class="detail-item">眼线</span>
			    <span class="detail-item">眼影</span>
			    <span class="detail-item">唇膏/彩</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">清洁用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">纸品湿巾</span>
			    <span class="detail-item">衣物清洁</span>
			    <span class="detail-item">清洁工具</span>
			    <span class="detail-item">家庭清洁</span>
			    <span class="detail-item">一次性用品</span>
			    <span class="detail-item">驱虫用品</span>
			    <span class="detail-item">皮具护理</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">宠物生活 <span class="glyphicon glyphicon-menu-right"> </span></span>
			    <span class="detail-item">水族世界</span>
			    <span class="detail-item">狗粮</span>
			    <span class="detail-item">猫粮</span>
			    <span class="detail-item">猫狗罐头</span>
			    <span class="detail-item">狗零食</span>
			    <span class="detail-item">猫零食</span>
			    <span class="detail-item">医疗保健</span>
			    <span class="detail-item">宠物玩具</span>
			    <span class="detail-item">宠物服饰</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">香水彩妆 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">BB霜</span>
			    <span class="detail-item">化妆棉</span>
			    <span class="detail-item">女士香水</span>
			    <span class="detail-item">男士香水</span>
			    <span class="detail-item">底妆</span>
			    <span class="detail-item">眉笔</span>
			    <span class="detail-item">睫毛膏</span>
			    <span class="detail-item">眼线</span>
			    <span class="detail-item">眼影</span>
			    <span class="detail-item">唇膏/彩</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">清洁用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">纸品湿巾</span>
			    <span class="detail-item">衣物清洁</span>
			    <span class="detail-item">清洁工具</span>
			    <span class="detail-item">家庭清洁</span>
			    <span class="detail-item">一次性用品</span>
			    <span class="detail-item">驱虫用品</span>
			    <span class="detail-item">皮具护理</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">宠物生活 <span class="glyphicon glyphicon-menu-right"> </span></span>
			    <span class="detail-item">水族世界</span>
			    <span class="detail-item">狗粮</span>
			    <span class="detail-item">猫粮</span>
			    <span class="detail-item">猫狗罐头</span>
			    <span class="detail-item">狗零食</span>
			    <span class="detail-item">猫零食</span>
			    <span class="detail-item">医疗保健</span>
			    <span class="detail-item">宠物玩具</span>
			    <span class="detail-item">宠物服饰</span>
	    	</li>
    	</ul>	
	</div>
	<div class="detail-item-panel panel-2">
		<div class="nav-detail-item">
			<span>赛事 > </span>
			<span>运动城 > </span>
			<span>户外馆 > </span>
			<span>健身房 > </span>
			<span>骑行馆 > </span>
			<span>钟表城 > </span>
		</div>
		<ul>
			<li>
				<span class="detail-item-title">2017新品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">休闲鞋</span>
			    <span class="detail-item">商务休闲鞋</span>
			    <span class="detail-item">正装鞋</span>
			    <span class="detail-item">帆布鞋</span>
			    <span class="detail-item">凉鞋</span>
			    <span class="detail-item">拖鞋</span>
			    <span class="detail-item">功能鞋</span>
			    <span class="detail-item">增高鞋</span>
			    <span class="detail-item">工装鞋</span>
			    <span class="detail-item">雨鞋</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">运动鞋包 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">跑步鞋</span>
			    <span class="detail-item">休闲鞋</span>
			    <span class="detail-item">篮球鞋</span>
			    <span class="detail-item">帆布鞋</span>
			    <span class="detail-item">板鞋</span>
			    <span class="detail-item">拖鞋</span>
			    <span class="detail-item">运动包</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">健身训练 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">跑步机</span>
			    <span class="detail-item">健身车/动感单车</span>
			    <span class="detail-item">椭圆机</span>
			    <span class="detail-item">综合训练器</span>
			    <span class="detail-item">划船机</span>
			    <span class="detail-item">甩脂机</span>
			    <span class="detail-item">倒立机</span>
			    <span class="detail-item">武术搏击</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">骑行运动 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">山地车</span>
			    <span class="detail-item">公路车</span>
			    <span class="detail-item">折叠车</span>
			    <span class="detail-item">骑行服</span>
			    <span class="detail-item">电动车</span>
			    <span class="detail-item">电动滑板车</span>
			    <span class="detail-item">城市自行车</span>
			    <span class="detail-item">平衡车</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">体育用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">乒乓球</span>
			    <span class="detail-item">羽毛球</span>
			    <span class="detail-item">篮球</span>
			    <span class="detail-item">足球</span>
			    <span class="detail-item">轮滑滑板</span>
			    <span class="detail-item">网球</span>
			    <span class="detail-item">高尔夫</span>
			    <span class="detail-item">台球</span>
			    <span class="detail-item">排球</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">户外鞋服 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">户外风衣</span>
			    <span class="detail-item">徒步鞋</span>
			    <span class="detail-item">T恤</span>
			    <span class="detail-item">冲锋衣裤</span>
			    <span class="detail-item">速干衣裤</span>
			    <span class="detail-item">越野跑鞋</span>
			    <span class="detail-item">滑雪服</span>
			    <span class="detail-item">羽绒服/棉服</span>
			    <span class="detail-item">休闲衣裤</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">户外装备 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">背包</span>
			    <span class="detail-item">帐篷/垫子</span>
			    <span class="detail-item">望远镜</span>
			    <span class="detail-item">烧烤用具</span>
			    <span class="detail-item">便携桌椅床</span>
			    <span class="detail-item">户外配饰</span>
			    <span class="detail-item">军迷用品</span>
			    <span class="detail-item">野餐用品</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">垂钓用品 <span class="glyphicon glyphicon-menu-right"> </span></span>
			    <span class="detail-item">钓竿</span>
			    <span class="detail-item">鱼线</span>
			    <span class="detail-item">浮漂</span>
			    <span class="detail-item">鱼饵</span>
			    <span class="detail-item">钓鱼配件</span>
			    <span class="detail-item">渔具包</span>
			    <span class="detail-item">钓箱钓椅</span>
			    <span class="detail-item">鱼线轮</span>
			    <span class="detail-item">钓鱼灯</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">游泳用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">女士泳衣</span>
			    <span class="detail-item">比基尼</span>
			    <span class="detail-item">男士泳衣</span>
			    <span class="detail-item">泳镜</span>
			    <span class="detail-item">游泳圈</span>
			    <span class="detail-item">游泳包防水包</span>
			    <span class="detail-item">泳帽</span>
			    <span class="detail-item">游泳配件</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">垂钓用品 <span class="glyphicon glyphicon-menu-right"> </span></span>
			    <span class="detail-item">钓竿</span>
			    <span class="detail-item">鱼线</span>
			    <span class="detail-item">浮漂</span>
			    <span class="detail-item">鱼饵</span>
			    <span class="detail-item">钓鱼配件</span>
			    <span class="detail-item">渔具包</span>
			    <span class="detail-item">钓箱钓椅</span>
			    <span class="detail-item">鱼线轮</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">游泳用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">女士泳衣</span>
			    <span class="detail-item">比基尼</span>
			    <span class="detail-item">男士泳衣</span>
			    <span class="detail-item">泳镜</span>
			    <span class="detail-item">游泳圈</span>
			    <span class="detail-item">游泳包防水包</span>
			    <span class="detail-item">泳帽</span>
			    <span class="detail-item">游泳配件</span>
	    	</li>
    	</ul>	
	</div>
</body>
<script src="js/mall.js"></script>
</html>