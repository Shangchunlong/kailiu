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
<link rel="stylesheet" href="css/bus03.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<title>预订信息1</title>
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
					<a class="posimg" href="javascript:;"><img src="img/common/hose_03.png" alt=""></a>
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
		<div class="banner"><div class="bannin"></div></div>
		<div class="pos"><h3>选择巴士</h3></div>
		
		<div class="content">
		<form id="fm" method="post" action="${busMessage.bus_id }/createBusOrder?uid=${uid}">
			<!-- 左边内容 -->
			<div class="conleft">
					<h3 class="title">预定信息</h3>
					<div id="conliangcon">
						<h3 id="company">公司名称:</h3>
						<span>${busMessage.buscompany.company_name }</span>
					</div>
					<div id="conliangcon">
						<h3 id="comentit">始发地</h3>
						
						<div class="comenbox">${busMessage.start_add }</div>
					</div>
					<div id="conliangcon">
						<h3 id="comentit">目的地</h3>
						<div class="comenbox">${busMessage.end_add }</div>
						
					</div>
					
					<div id="conliangcon">
						<h3 id="comentit">途径景点：</h3>
						<div>
							${busMessage.bus_scenic }
						</div>
					</div>
					<div id="conliangcon">
						<h3 id="comentit">巴士类型</h3>
						<div class="comenbox">
						
						<!-- 	<option value="">${busMessage.bustypename}</option>-->
							${busMessage.bustypename}
							
						</div>
						</div>
					<div id="conliangcon">
						<h3 id="comentit">基本价格</h3>
						
						<div id="price">
							${(busMessage.bus_price*busMessage.bus_discount)/10 }
						</div>
					</div>
					<div id="conliangcon">
						<h3 id="comentit">巴士编号</h3>
						<div class="comenbox">
							${busMessage.bus_num }
						</div>
					</div>
					
					<div id="conjc">
						<h3 id="comentit">乘车人数：</h3>
						<input id="persons" name="persons" type="text" name="persons" value="">
					</div>
					<div class="title2">
						<h3 id="comentit">联系人信息</h3>
						<p>请准确填写联系人信息，以便我们与您联系</p>
					</div>
					<div id="conjc">
						<label id="comentit" >姓名：</label>
						<input id="comentit" name="usename" type="text" class="dianziyoujian"/>
						
					</div>
					<div id="conjc">
						<label id="comentit" >手机号码：</label>
						<input id="comentit" name="phone" type="text" class="dianziyoujian"/>
						<a  href="###" class="yudingchenggonghouhuifaduanxin">获取验证码</a>
					</div>
					<div id="conjc">
						<h3 id="comentit">验证码：</h3>
						<input class="dianziyoujian" name="reqCode"/>
					</div>
					<p class="quxiaoshuoming">
						取消修改说明：订单提交后我们会立即操作扣款，如订单不确认将全额退款至您的付款账户。该订单确认后不可被取消修改，若未使用，我们将收取您全额的费用。
					</p>
					<div class="yushoufangfei">
						预收费用 : <span></span>
					</div>
					<input class="tijiaodingdan" type="submit" value="提交订单">
					<input class="xiugaihangban" type="reset" value="【修改信息】"><br>
				</div>
			</form>
			<!-- 右边内容 -->
			<div class="conright">
				<h3 class="nindexuanze">您的选择</h3>
				<div class="biaozhundexuanze">
					<img src="img/imgs03/bus.png" alt="" class="xilaideng">
					<div class="tupianyouce">
						<h3 class="jiudianmingzi">${busMessage.buscompany.company_name }</h3>
						<h3 class="jiudianweizhi">地址:${busMessage.buscompany.company_add }</h3>
					</div>
				</div>
				<div class="biaozhundexuanze"><h3>车型 : ${busMessage.bustypename}</h3></div>
				<div class="biaozhundexuanze ruzhumessage">
					<span class="ruzhuyiwan">巴士编号：${busMessage.bus_num }</span>
				</div>
				<div class="biaozhundexuanze"><h3 class="ruzhutime"> </h3></div>
				
				<div class="biaozhundexuanze realjine">
					<h3 class="jiudianmingzi">应付金额............................................................</h3>

					<var id="yingfujine">0</var>
					<p id="yingfujine">元</p>
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
					<li>周一至周日</li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>
		
				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right Reserved. 京ICP备11</div>
		</div>
	</div>
	<script type="text/javascript">
	var persons = document.getElementById('persons');
	var yingfujine = document.getElementById('yingfujine');
	var price =document.getElementById('price');
	persons.oninput=function  (argument) {
		var peoplenum = persons.value;
		console.log(price.innerText);
		yingfujine.innerText=peoplenum*(price.innerText)+"元";
	}

	</script>
</body>
</html>