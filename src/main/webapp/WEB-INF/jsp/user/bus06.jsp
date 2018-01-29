<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="css/bus06.css">
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
							<img src="img/common/gift_03.png" alt="">
							<a id="headcon1" href="javascript:;">行李箱</a>
						</div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">注册</a></div>
						<div class="zhuce" ><a id="headcon1" href="javascript:;">登录</a></div>
						<div class="tel">
							<img src="img/common/phone_03.png" alt="">
							<a  href="javascript:;">400-800-8820</a>
						</div>
					</div>
					
				</div>
				<div class="con2">
					<a class="posimg" href=""><img src="img/common/hose_03.png" alt=""></a>
					<a href="javascript:;">第一次</a>
					<a href="javascript:;">目的地</a>
					<a href="javascript:;">自订行程</a>
					<a href="javascript:;">游记</a>
					<a href="javascript:;">特产</a>
					<a href="javascript:;">优惠</a>
					<a href="getBusCompanys">环岛巴士</a>
				</div>
			</div>
		</div>
		<div class="pos"><a href="javascript:;">首页</a> &gt; <a href="javascript:;">订单</a> &gt; 环岛巴士</div>
		<div class="content">
			<div class="up">
				<div class="upleft">
					<div class="div1 comm">
						<h3>订单信息</h3>
						<p>订单号：${busOrder.ordernum }</p>
					</div>
					<div class="div2 comm">
						<h3>联系人信息</h3>
						<p>联系人：${busOrder.usename }</p>
						<p>联系手机：${busOrder.phone}</p>
					</div>
					<div class="div3 comm">
						<h3>订单信息</h3>
						<p>总金额：￥${(busOrder.persons)*(busMessage.bus_price)*(busMessage.bus_discount)/10 }</p>
					</div>
				</div>
				<a href="getBusCompanys"  class="upright">新增订单</a>
			</div>

			<div class="con">
				<div class="conleft">
					<h3>巴士信息</h3>
					<p>去程：${dateString }<var>${busMessage.start_add }→${busMessage.end_add }</var></p>
					<p>巴士编号：${busMessage.bus_num}</p>
					<p>出发日期：${dateString }<var>12:45</var>   </p>
					<p>途径景点：${busMessage.bus_scenic}</p>
					<p class="bottomp">应付金额   <var>￥${(busOrder.persons)*(busMessage.bus_price)*(busMessage.bus_discount)/10 }</var>明细（${busOrder.persons}名乘客）</p>
					<div class="priceinfo">
						<p>成人</p>
						<var>￥${busMessage.bus_price}×1人</var>
					</div>

					<div class="priceinfo">
						<p> 打折</p>
						<var>${busMessage.bus_discount}折×1人</var>
					</div>
				</div>

				<div class="conright">
					
					<h3 class="nindexuanze">您的选择</h3>
					<div class="biaozhundexuanze">
						<img src="${busMessage.bus_pic}" alt="" class="xilaideng">
						<div class="tupianyouce">
							
							<p>去程${dateString }</p>
							<p>${busMessage.start_add }→${busMessage.end_add }</p>
							
						</div>
					</div>
					<h3 class="nanfanghangkong">${busMessage.buscompany.company_name }&nbsp;&nbsp;${busMessage.bus_num}&nbsp;&nbsp;${busMessage.bustypename}</h3>
					<h3 class="piaojialeixing">票价类型：${busMessage.bustypename}</h3>
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