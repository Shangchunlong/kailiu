<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>伴手礼 订单信息</title>
<link rel="stylesheet" href="css/page06.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="con">
				<!-- 头部内容 -->
				<div class="con1">
					<div class="search">
						<input type="text" name="" value=""><a href="https://www.baidu.com/"></a>
					</div>
					<div class="leftsearch">
							<div class="bag" >
							<img src="imgs/gift_03.png" alt="">
							<a id="headcon1" href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">注册</a></div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">登录</a></div>
						<div class="tel">
							<img src="imgs/phone_03.png" alt="">
							<a  href="javascript:;">400-800-8820</a>
						</div>
					</div>
					
				</div>
				<div class="con2">
					<a class="posimg" href="javascript:;"><img src="imgs/hose_03.png" alt=""></a>
					<a href="javascript:;">第一次</a>
					<a href="javascript:;">目的地</a>
					<a href="javascript:;">自订行程</a>
					<a href="javascript:;">游记</a>
					<a href="javascript:;">特产</a>
					<a href="javascript:;">优惠</a>
					<a href="javascript:;">环岛巴士</a>
				</div>
			</div>
		</div>
		<div class="banner"><div class="bannin"></div></div>
		<div class="pos"><h3>${hotel.name }</h3></div>
		
		<div class="content">
			<!-- 左边内容 -->
			<div class="conleft">
				<h3 class="title">订单信息</h3>
				<div id="conliangcon">
					<h3 id="comentit">入住日期</h3>
					<div class="comenbox">${hotelOrder.get("begindate") }</div>
				</div>
				<div id="conliangcon">
					<h3 id="comentit">离开日期</h3>
					<div class="comenbox">${hotelOrder.get("enddate") }<br/>
	
	</div>
				</div>
				<div id="conliangcon">
					<h3 id="comentit">房间数量</h3>
					<div class="comenbox">${hotelOrder.get("hotelsum") }</div>
				</div>
				<div id="conliangcon">
					<h3 id="comentit">住客姓名</h3>
					<c:forEach items="${names }"  var="name">
						<div class="comenbox">${name}</div>
					</c:forEach>
				</div>
				
				<div id="conliangcon">
					<h3 id="comentit">最晚抵店</h3>
					<div class="comenbox">${hotelOrder.get("lasttime") }</div>
				</div>
				
				<div class="title2">
					<h3 id="comentit">联系人信息</h3>
				</div>

				<div id="conliangcon">
					<h3 id="comentit">手机号码</h3>
					<div class="shoujihaoma">${hotelOrder.get("phonenumber")}</div>
					
				</div>
				<div id="conjc">
					<h3 id="comentit">Email</h3>
					<div class="dianziyoujian">${hotelOrder.get("email") }</div>
				</div>
				
				<div class="fapiao">
					<h3 id="fapiaocon">发票类型</h3>
					<div>${hotelOrder.get("billtype") }</div>
					
				</div>
				<div class="fapiao">
					<h3 id="fapiaocon">发票抬头</h3>
					<div>${hotelOrder.get("billhead") }</div>
				</div>
				
				<div class="yushoufangfei">
					已付房费 : <span>￥${hotelOrder.get("omoney")}</span>
				</div>
				<a href="page01.html" target="_blank" class="tijiaodingdan">返回首页</a>
				<a href="javascript:;" class="xiugaihangban">【修改航班】</a>
			</div>
			<!-- 右边内容 -->
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

