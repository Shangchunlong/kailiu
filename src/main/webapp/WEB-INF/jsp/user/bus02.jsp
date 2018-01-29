<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/bus02.css">
</head>
<body>

<div class="wrap">
	<!-- 以下为头部内容 -->
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
							<a id="headcon1" href="">行李箱</a>
						</div>
						<div class="zhuce" ><a id="headcon1" href="">注册</a></div>
						<div class="zhuce" ><a id="headcon1" href="">登录</a></div>
						<div class="tel">
							<img src="img/common/phone_03.png" alt="">
							<a  href="">400-800-8820</a>
						</div>
					</div>
					
				</div>
				<div class="con2">
					<a class="posimg" href=""><img src="img/common/hose_03.png" alt=""></a>
					<a href="">第一次</a>
					<a href="">目的地</a>
					<a href="">自订行程</a>
					<a href="">游记</a>
					<a href="">特产</a>
					<a href="getBusCompanys">环岛巴士</a>
				</div>
			</div>
		</div>
		<!-- 以下为当前位置 -->
		<div class="pos"><a href="#">首页</a> &gt; 环岛巴士</div>	
		<div class="content">
				<!-- 上内容块 -->
				<div class="conup">
					<!-- 标题 -->
					<div class="tit">
						<h3>${busCompany.company_name }</h3>
					</div>
					<!-- 左图片 -->
					<img src="${busCompany.company_pic }" alt="" class="leftimg">
					<!-- 右内容 -->
					<div class="titright">
						<!-- 地址 -->
						<div class="address">
							<h3 class="add">地 址:</h3>
							<!--  <p>台北县青云路</p> -->
							<p>${busCompany.company_add }</p>
						</div>
						<!-- 服务 -->
						<div class="hotelbottom">
							<h3 class="add hotelname">服 务:</h3>
							<p class="service"><img src="img/img01/zaocan_03.png" alt="">空调</p>
							<p class="service ppp"><img src="img/img01/wifi_03.png" alt="">无线网络</p>
							<p class="service ppp"><img src="img/img01/xinyongka_03.png" alt="">信用卡服务</p>
						</div>	
						<!-- 营业时间 -->
						<div class="hotel">
							<h3 class="add hotelname">营业时间:</h3>
							<p>8：00-22 : 00</p>
						</div>
						<!-- 预定时间 -->
						<div class="hotel">
							<h3 class="add hotelname">预定时间:</h3>
							<p>8：30-21：30</p>
						</div>
						<!-- 酒店特色 -->
						<div class="hotel  special">
							<h3 class="add hotelname">公司特色:</h3>
							<!-- <p>大有巴士为一家历史悠久的客运公司，早期公司总部位在台北市南京东路、光复北路口附近。在台北市公共汽车尚未联营前，该公司服务区域以南港区、松山区以及自松山分出的信义区为主。公司总部设在台北县土城市青云路，主要经营台北联营公共汽车与国道客运</p> -->
							<p>${busCompany.company_msg }</p>
						</div>
					</div>
		</div>
				<!-- 左内容块 -->
				<!-- 利用foreach 循环遍历车辆类型 -->
				<c:forEach var="busMessage" items="${busMessage }">
				<div class="conleft">
					<!-- 双层巴士 -->
					<div class="normalhouse">
						<!-- 双层巴士标题 -->
						<div class="cap">
							<div class="div11">${busMessage.bustypename }</div>
							<div class="div22">巴士编号</div>
							<div class="div33">有无空调</div>
							<div class="div33">限载人数</div>
							<div class="div33">是否打折</div>
							<div class="div44">车价</div>
						</div>
						<!-- 双层巴士内容 -->
						<div class="capcon">
							<div class="div11">
								<img src="${busMessage.bus_pic }" alt="">
							</div>
							<div class="div22"><p class="capcontent" >${busMessage.bus_num}</p></div>
							<div class="div33"><p class="capcontent" >有</p></div>
							<div class="div33"><p class="capcontent" >${busMessage.bus_peoplenum }</p></div>
							<div class="div33"><p class="capcontent" >${busMessage.bus_discount }折</p></div>
							<div class="div44">
					
								<p class="nowprice">现价<span>${(busMessage.bus_price)*(busMessage.bus_discount)/10 }</span>元</p>
								<p class="beforeprice">原价${busMessage.bus_price }元</p>
							</div>
						</div>
						<!-- 双层巴士信息 -->
						<div class="capintro">
							<p>途经景点： </p>
							<h4>${busMessage.bus_scenic }</h4>
						</div>
						<!-- 预定信息 -->
						<div class="reserve">
							<p class="jinzhang">紧张</p>
							<a class="suding" href="${busMessage.bus_id }/getOrderMassage">速订</a>
							<p class="yiding">456人已订</p>
						</div>
					</div>
				</div>
				</c:forEach>
			<!-- 页码 -->
			<div class="content">
				<div class="page">
					<div><a href="javascript:fenye(${busCompany.company_id },1)">首页</a></div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.prevPage})">上一页</a></div>
					<div>....</div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.prevPage+3})">${page.prevPage+3}</a></div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.prevPage+6})">${page.prevPage+6}</a></div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.prevPage+9})">${page.prevPage+9}</a></div>
					<div>....</div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.nextPage-1})">${page.nextPage-1}</a></div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.nextPage})">下一页</a></div>
					<div><a href="javascript:fenye(${busCompany.company_id },${page.pageCount})">尾页</a></div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="con1">
				<ul>
					<li><a class="tit" href="">关于遛弯</a></li>
					<li><a href="">公司简介</a></li>
					<li><a href="">联系我们</a></li>
					<li><a href="">招聘英才</a></li>
					<li><a href="">网站地图</a></li>
					
				</ul>
				<ul>
					<li><a class="tit" href="">帮助中心</a></li>
					<li><a href="">赴台手续</a></li>
					<li><a href="">遛弯玩法</a></li>
					<li><a href="">常见问题</a></li>
					
					
				</ul>
				<ul>
					<li><a class="tit" href="">网站条款</a></li>
					<li><a href="">服务条款</a></li>
					<li><a href="">免责声明</a></li>
		
				</ul>
				<ul>
					<li><a class="tit" href="">关注我们</a></li>
					<li class="share">
						<span class="weibo" ></span>
						<span class="weixin"></span>
					</li>
		
				</ul>
				<ul class="list5">
					<li class="phonenum" >400 820 8820</li>
					<li>周一至周日</li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>
		
				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right Reserved. 京ICP备11</div>
		</div>
</body>
<script>
	function fenye(id,curPage){
		location.href=id+"/getBusMessage?currentPage="+curPage;
	}
</script>
</html>