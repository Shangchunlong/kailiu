<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/page05.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<title>支付完成</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="con">
				<!-- 头部内容 -->
				<div class="con1">
					<div class="search">
						<input type="text" name="" value="">
						<a href="https://www.baidu.com/"></a>
					</div>
					<div class="leftsearch">
						<div class="bag">
							<img src="imgs/gift_03.png" alt=""> <a id="headcon1"
								href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">注册</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="javascript:;">登录</a>
						</div>
						<div class="tel">
							<img src="imgs/phone_03.png" alt=""> <a href="javascript:;">400-800-8820</a>
						</div>
					</div>

				</div>
				<div class="con2">
					<a class="posimg" href="javascript:;"><img
						src="imgs/hose_03.png" alt=""></a> <a href="javascript:;">第一次</a>
					<a href="javascript:;">目的地</a> <a href="javascript:;">自订行程</a> <a
						href="javascript:;">游记</a> <a href="javascript:;">特产</a> <a
						href="javascript:;">优惠</a> <a href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<div class="banner">
			<div class="bannin"></div>
		</div>
		<div class="content">
			<h3 class="biaotiti">
				<img src="imgs/imgs05/greenxiaogougou_03.png" alt="">您的订单已成功提交我们操作扣款，订单将在			
				<var>${hotelOrder.get("time") }</var>		
				前给您确认，如果不能确认将全额退款至您的付款账户。
			</h3>

			<!-- 左内容 -->
			<div class="left5">
				<h3>
					订单号：
					<var>${hotelOrder.get("oid") }</var>
				</h3>
				<h3>
					总价：￥
					<var>${hotelOrder.get("omoney") }</var>
				</h3>
				<a href="detailsController?ohid=${hotelOrder.get('ohid')}" class="chakanbutton">查看订单</a>
				<p class="p1p">请确保您的手机号码填写正确，无效手机号可能会导致订单取消。</p>
				<hr>
				<p class="p2p">
					订单号已发送至您的手机：
					<var>
						${fn:substring(hotelOrder.get("phonenumber"), 0, 5)}
						<c:forEach begin="6" end="11" step="1" var="n" varStatus="status">
							*
						</c:forEach>
					</var>
					
					
				</p>
				<p class="p2p">请记住您的订单号，您也可以通过个人中心中的我的订单中查询此订单。</p>
				<p class="p2p">订单实际入住成功点评后每赠送100积分，您可以进入 个人中心> 我的积分中查看。</p>
			</div>

			<!-- 右内容 -->
			<div class="conright">
				<h3 class="nindexuanze">您的选择</h3>
				<div class="biaozhundexuanze">
					<img src="${picPath }" alt="" class="xilaideng">
					<div class="tupianyouce">
						<h3 class="jiudianmingzi">${hotel.name }</h3>
						<!-- <img src="imgs/imgs03/xilaidengxingxing_03.png" alt=""> -->
						<c:forEach begin="1" end="${hotel.level }" step="1" var="n" varStatus="status">
							<img  src="imgs/imgs05/xing.png" alt=""/>
						</c:forEach>

						<h3 class="jiudianweizhi">${hotel.detailsaddress }</h3>
					</div>
				</div>
				<div class="biaozhundexuanze">
					<h3>床型 : ${housetypeAndprice.get(0).get("houseType") }</h3>
				</div>
				<div class="biaozhundexuanze">
					<h3 class="ruzhutime">入住时间 : ${hotelOrder.get("begindate") }</h3>
				</div>
				<div class="biaozhundexuanze  hotelbottom">
					<h3 class="add hotelname">服务:</h3>
						<c:if test="${hotelOrder.get('zao') }">
							<p class="service">
								<img src="imgs/imgs01/zaocan_03.png" alt="">提供早餐
							</p>
						</c:if>
						<c:if test="${hotelOrder.get('wu') }">
							<p class="service ppp">
								<img src="imgs/imgs01/wifi_03.png" alt="">无线网络
							</p>
						</c:if>
						<c:if test="${hotelOrder.get('xin') }">
							<p class="service ppp">
								<img  src="imgs/imgs01/xinyongka_03.png" alt="">信用卡服务
							</p>
						</c:if>
				</div>
				<div class="biaozhundexuanze ruzhumessage">
					<span class="ruzhuyiwan">入住<var>${hotelOrder.get("day") }</var>晚
					</span> <span class="ruzhuyiwan"><var>${hotelOrder.get("hotelsum") }</var>间客房</span>
				</div>
				<div class="biaozhundexuanze realjine">
					<h3 class="jiudianmingzi">应付金额............................................................................</h3>
					<var class="yingfujine">￥${hotelOrder.get("omoney") }</var>
					<p class="danjia">
						￥
						<var>${housetypeAndprice.get(0).get("price")}</var>
						/晚
					</p>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="con1">
				<ul>
					<li><a class="tit" href="javascript:;">关于遛弯</a></li>
					<li><a href="javascript:;">公司简介</a></li>
					<li><a href="javascript:;">联系我们</a></li>
					<li><a href="javascript:;">招聘英才</a></li>
					<li><a href="javascript:;">网站地图</a></li>
					
				</ul>
				<ul>
					<li><a class="tit" href="javascript:;">帮助中心</a></li>
					<li><a href="javascript:;">赴台手续</a></li>
					<li><a href="javascript:;">遛弯玩法</a></li>
					<li><a href="javascript:;">常见问题</a></li>
					
					
				</ul>
				<ul>
					<li><a class="tit" href="javascript:;">网站条款</a></li>
					<li><a href="javascript:;">服务条款</a></li>
					<li><a href="javascript:;">免责声明</a></li>
				</ul>
				
				<ul>
					<li><a class="tit" href="javascript:;">关注我们</a></li>
					<li class="share">
						<span class="weibo" ></span>
						<span class="weixin"></span>
					</li>
		
				</ul>
				<ul class="list5">
					<li class="phonenum" >400 820 8820</li>
					<li>周一至周日</a></li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>
		
				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right Reserved. 京ICP备11</div>
		</div>
	</div>
</body>
</html>