<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>环岛巴士</title>
<link rel="stylesheet" type="text/css" href="css/bus01.css"/>
<link rel="stylesheet" type="text/css" href="css/head.css"/>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
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
		<div class="pos"><a href="#">首页</a> &gt;环岛巴士</div>
		<!-- 以下为筛选条件 -->
		<div class="options">
			<ul class="realarea">
				<h3 class="areaname">地区</h3>
				<li class="allarea">全部</li>
				<li>台北</li>
				<li>台中</li>
				<li>嘉义</li>
				<li>高雄</li>
				<li>台东</li>
				<li>花莲</li>
			</ul>
			<ul class="area pricejc">
				<h3 class="areaname">价格</h3>
				<li class="all"><a href="javascript:;">全部</a></li>
				<li class="money"><a class="clickcircle" href="javascript:;"></a>&lt; ￥300</li>
				<li class="money"><a class="clickcircle" href="javascript:;"></a>￥300-500</li>
				<li class="money"><a class="clickcircle" href="javascript:;"></a>￥500-1000</li>
				<li class="money money4"><a class="clickcircle" href="javascript:;"></a>￥1000-1200</li>
				<li class="money money5"><a class="clickcircle" href="javascript:;"></a>&gt;￥1200</li>
			</ul>
			<ul class="area upbottom">
				<h3 class="areaname">巴士类型</h3>
				<li class="all">全部</li>
				<li class="areaoptions house">双层巴士</li>
				<li class="areaoptions house">小型巴士</li>
				<li class="areaoptions house">铰接巴士</li>
				<li class="areaoptions house">空调巴士</li>
				<li class="areaoptions house">情侣巴士</li>
			</ul>
			<a class="resetbutton" href="javascript:;">重置筛选条件</a>
		</div>
		<!-- 推荐 -->
		<div class="band">
			<a class="push" href="javascript:;">推荐</a>
			<a class="price" href="javascript:;"><img class="updown" src="img/img01/jiantou_07.png" alt="">价位</a>
			<span>找到环岛巴士24辆</span>
		</div>
		<!-- 以下中间内容 -->
		<div class="content">
			<!-- 以下为内容一 -->
			<c:forEach var="busCompany" items="${busCompanys }">
			<div class="cont cont1">
					<div class="company">
						<div class="upleft">
							<img src="${busCompany.company_pic }" alt="">
							
						</div>
						<div class="upright">
							<div class="tit titt1">
								<h3>${busCompany.company_name }</h3>
								<h3><a href="${busCompany.company_id }/getBusMessage">详情</a></h3>
							</div>
							<div class="concon">
								<div class="address">
									<h3 class="add">地   址:</h3>
									<p>${busCompany.company_add}</p>
								</div>
								<div class="hotel">
									<h3 class="add hotelname">公司简介:</h3>
									<p>${busCompany.company_msg}</p>
								</div>
							</div>
						</div>
					</div>
			</div>
		<br/>
		</c:forEach>

		</div>
		<!-- 页码 -->
		<div class="content">
			<div class="page">
				<div><a href="javascript:fenye(1)">首页</a></div>
				<div><a href="javascript:fenye(${page.prevPage})">上一页</a></div>
				<div>....</div>
				<div><a href="javascript:fenye(${page.prevPage+1})">${page.prevPage+1}</a></div>
				<div><a href="javascript:fenye(${page.prevPage+2})">${page.prevPage+2}</a></div>
				<div><a href="javascript:fenye(${page.prevPage+3})">${page.prevPage+3}</a></div>
				<div>....</div>
				<div><a href="javascript:fenye(${page.prevPage+5})">${page.prevPage+5}</a></div>
				<div><a href="javascript:fenye(${page.nextPage})">下一页</a></div>
				<div><a href="javascript:fenye(${page.pageCount})">尾页</a></div>
			</div>
		</div>
		<!-- 底部内容 -->
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
					<li>周一至周日</a></li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>
		
				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right Reserved. 京ICP备11</div>
		</div>
	</div>
</body>
<script>
	function fenye(curPage){
		location.href="getBusCompanys?currentPage="+curPage;
	}
</script>
</html>