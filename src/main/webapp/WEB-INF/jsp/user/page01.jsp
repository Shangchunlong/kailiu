<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>伴手礼 酒店</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="imgs/logo.png"/>
<link rel="stylesheet" href="css/page01.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">

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
		<!-- 以下为当前位置 -->
		<div class="pos"><a href="javascript:;">首页</a> &gt; <a href="javascript:;">自订行程 &gt; </a>酒店</div>
		<!-- 以下为筛选条件 -->
		<div class="options">
			<form method="test.php" action="post">
				<ul class="realarea">
					<h3 class="areaname">地区</h3>
					<input type="text" name="area" value="全部" id="area">
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
					<input type="text" name="price" value="0" id="price">
					<li class="all"><a href="javascript:;">全部</a></li>
					<li class="money"><a class="clickcircle" href="javascript:;"></a>&lt; ￥300</li>
					<li class="money"><a class="clickcircle" href="javascript:;"></a>￥300-500</li>
					<li class="money"><a class="clickcircle" href="javascript:;"></a>￥500-1000</li>
					<li class="money money4"><a class="clickcircle" href="javascript:;"></a>￥1000-1200</li>
					<li class="money money5"><a class="clickcircle" href="javascript:;"></a>&gt;￥1200</li>
				</ul>
				<ul class="area upbottom">
					<h3 class="areaname">房型</h3>
					<input type="text" name="roomtype" value="全部" id="roomtype">
					<li class="all">全部</li>
					<li class="areaoptions house">标准间</li>
					<li class="areaoptions house">大床房</li>
					<li class="areaoptions house">套房</li>
				</ul>
				<a class="resetbutton" href="javascript:;">重置筛选条件</a>
			</form>
		</div>


		<div class="band" id="anchorURL">
			<a class="push" href="javascript:;">推荐</a>
			<a class="price" href="javascript:;"><img class="updown" src="imgs/imgs01/jiantou_07.png" alt="">价位</a>
			<span>找到房间<var>0</var>间</span>
		</div>
		<!-- 以下为内容 -->
		<div class="content">
		<div class="content_in">
		</div>
		
			<!-- 以下内容一 -->
				
			<!-- 以下为内容二 -->
			
			<!-- 以下为内容三 -->

			<!-- 以下为页码 -->
			<div class="pagination">
				<div id="page" class="page_div"></div>
			</div>
		</div>

		<!-- 以下为footer -->
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

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/Paging/paging.js"></script>
<script type="text/javascript" src="js/page01.js"></script>
</body>
</html>