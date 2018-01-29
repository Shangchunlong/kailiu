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
<link rel="stylesheet" href="css/bus04.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<title>Insert title here</title>
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
						<div class="zhuce"  id="headcon1" href="javascript:;">注册</a></div>
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
		

		<div class="content">
			<!-- 标题 -->
			<div class="tittle">
				<span class="zhifufangshi">支付方式</span>
				<span class="guize">订单提交后我们会立即操作扣款，如订单不确认将全额退款至您的付款账户。若未使用，我们将收取您全额费用。</span>
			</div>
			<div class="biaozhundexuanze"><h3>订单号：${bOrder.ordernum}</h3></div>
			<div class="biaozhundexuanze"><h3>订单金额：￥${(bOrder.persons)*(bOrder.busMessage.bus_price)*(bOrder.busMessage.bus_discount)/10 }</h3></div>
			<div class="biaozhundexuanze"><h3>您的选择：${bOrder.busMessage.bustypename}</h3></div>
			<div class="biaozhundexuanze"><h3>乘车人数：${bOrder.persons}人</h3></div>
			<div class="biaozhundexuanze"><h3>租赁日期：${bOrder.orderdate }</h3></div>
			<div class="goumaichenggonghou">购买成功后，遛湾将发送订单号以及行程提醒到您的手机：${bOrder.phone}，您凭此密码消费。</div>
			<div class="biaozhundexuanze" ><h3 id="gaizihao">您一共需要支付：￥${(bOrder.persons)*(bOrder.busMessage.bus_price)*(bOrder.busMessage.bus_discount)/10 }</h3></div>
			<!-- 支付方式 -->
			<div class="kaishizhifu">
				
			<form action="orderSuccess?obid=${bOrder.obid}&busid=${bOrder.busMessage.bus_id}" method="post">
		      	<table width="100%">
					<tr>
						<td>请您选择在线支付银行</td>
					</tr>
					<tr>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">招商银行 </td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">工商银行</td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">农业银行</td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">建设银行 </td>
					</tr>
					<tr>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">中国民生银行总行</td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >光大银行 </td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET">交通银行</td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET">深圳发展银行</td>
					</tr>
					<tr>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">北京银行</td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">兴业银行 </td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">上海浦东发展银行 </td>
					  <td><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">中信银行</td>
					</tr>
					<tr><td><br/></td></tr>
					<tr>
					  <td><INPUT TYPE="submit" value="确定支付" class="tijiaodingdan"></td>
					</tr>
		     	</table>
   		 </form>
				</div>
			</div>
			<a href="orderSuccess?obid=${bOrder.obid}&busid=${bOrder.busMessage.bus_id}"  class="tijiaodingdan">确认支付</a>
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