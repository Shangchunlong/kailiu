<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>伴手礼 订单支付</title>
<link rel="stylesheet" href="css/page04.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">

</head>
<style>
#fm{
	height:242px
}
	#gundong{
		width: 1915px;
		height: 242px;
		border: 0px;
		
	}
	.kaishizhifu .kuangjc{
		overflow: hidden;
	}
</style>
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
						<div class="zhuce"  id="headcon1" href="javascript:;">注册</a></div>
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
		

		<div class="content">
			<!-- 标题 -->
			<div class="tittle">
				<span class="zhifufangshi">支付方式</span>
				<span class="guize">订单提交后我们会立即操作扣款，如订单不确认将全额退款至您的付款账户。若未入住，我们将收取您全额房费。</span>
			</div>
			<div class="biaozhundexuanze"><h3>订单号：${horder.ohid }</h3></div>
			<div class="biaozhundexuanze"><h3>订单金额：￥${horder.omoney }</h3></div>
			<div class="biaozhundexuanze"><h3>您的选择：${hotel.name }，${housetypeAndprice[0].houseType}，${horder.hotelsum }间</h3></div>
			<div class="biaozhundexuanze"><h3>入住日期：${horder.begindate }</h3></div>
			<div class="goumaichenggonghou">购买成功后，遛湾将发送订单号以及行程提醒到您的手机：${horder.phonenumber }，您凭此密码消费。</div>
			<div class="biaozhundexuanze" ><h3 id="gaizihao">您一共需要支付：￥${horder.omoney }</h3></div>
			<!-- 支付方式 -->
			<div  class="kaishizhifu">
				<div class="xinyongka tab">支付宝支付</div>
				<div class="tab">第三方支付</div>
				<div class="tab">微信支付</div>
				<h3 class="kuangjc">
					<div id="gundong">
						
						<div class="second">
					<div id="pay">
						<span>扫一扫付款(元)</span>
						<h1>￥${horder.omoney }</h1>
						<div class="scan">
							<img class="img1" src="createQRCode?ohid=${horder.ohid }">
							<img class="img2" src="imgs\imgs04\saomiao.png">
							<h1 class="hh">
								打开手机支付宝
								扫一扫继续支付
							</h1>
						</div>
						
						<a href="https://mobile.alipay.com/index.htm">首次使用请下载手机支付宝</a>
					<img class="pointer" src="imgs\imgs04\pointer.png">	
					</div>
					<div class="tishi">
						<div class="littleyuanquan">
							<img class="saoma" src="imgs\imgs04\saoma.png">
							<img class="point" src="imgs\imgs04\point.png">
							<h5>扫一扫</h5>
						</div>
						<p class="quan whitequan"></p>
						<p class="quan blockquan"></p>
					</div>
					<div class="rightTiao">
						<h1>手机不在身边？</h1>
						<img src="imgs\imgs04\computerTwo.png">
						
						<img class="pay" src="imgs\imgs04\pay.png">
						<p class="blueKuang">

							<a class="zhanghu" href="###">&lt;登陆账户付款</a>

						</p>
					</div>
				</div>
				<div id="zhifuwrap">
							<div id="zhifuleft">
							<div id="try">试试手机支付宝</div>
							<div id="zfbouter"><div id="zfbinner">
								<img src="imgs/imgs04/zhifubao.png" alt="">
							</div><div id="radio"></div></div>
							<a href="###"><input class="colorblue" type="submit" value="扫一扫付款 &gt"></a>
							</div>
							<div id="zhifuright">
							<h4 id="title">登录支付宝账户付款<a id="zfbzhuce" href="https://memberprod.alipay.com/account/reg/index.htm">新用户注册</a></h4>
							<h4 class="zhifubao">账户名:<a class="zfbfforgetpassword" href="https://accounts.alipay.com/console/querypwd/logonIdInputReset.htm?site=1&page_type=fullpage&scene_code=resetQueryPwd">忘记账户名?</a></h4>
							<input type="text" name="user" value="" placeholder="手机号码/邮箱">
							<h4 class="zhifubao">支付密码:<a class="zfbfforgetpassword" href="https://accounts.alipay.com/console/querypwd/logonIdInputReset.htm?site=1&page_type=fullpage&scene_code=resetQueryPwd">忘记密码?</a></h4>
							<input type="password" name="password">
							<p id="zhuyi">请输入账户的<span id="pass">支付密码</span>,不是登录密码</p>
							<a href="###"><input class="colorblue" type="submit" value="下一步"></a>

							</div>
						</div>
					</div>
				</h3>
				
				<h3>
				<form id="fm" action="PayOrder?ordernum=${horder.ohid }&money=0.01" method="post">
					<table id="ttt" width="100%" height="100%">
			<tr style="margin:5px 0px">
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
			</tr>
     	</table>
     	</form>
				</h3>
				<h3>
					<img id="wepaylogo" src="imgs/imgs04/WePayLogo.png" alt="">
					<p id="wechat">
						<img id="erweima" src="createQRCode?ohid=${horder.ohid }" alt="">
						<img id="shuoming" src="imgs/imgs04/shuoming.png" alt="">
					</p>
					
				</h3>
			</div>

			<a  target="_blank" href="finshController?ohid=${horder.ohid }"  class="tijiaodingdan tijiaodingdantemp">确认支付</a>
			<a  target="_blank" href="javascript:;"  class="tijiaodingdan" id="disanfangzhifu">确认支付</a>
			<a  target="_blank" href="finshController?ohid=${horder.ohid }"  class="tijiaodingdan">确认支付</a>
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
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>

$(function (){
	$('.kaishizhifu .tab').click(function (){
		// var i=$(this).index();
		var i=$('.kaishizhifu .tab').index(this);
		// $('.title h1').eq(i)获取第几个元素
		$(this).addClass('xinyongka').siblings().removeClass('xinyongka');
		// $('.list li').eq(i).addClass('show').siblings().removeClass('show');
		$('.kaishizhifu h3').eq(i).addClass('kuangjc').siblings().removeClass('kuangjc');
		$('.tijiaodingdan').eq(i).addClass('tijiaodingdantemp').siblings().removeClass('tijiaodingdantemp');
	})
})

	$('#disanfangzhifu').click(function (){
		$('#fm').submit();
	})
	
var timer2;
function move(start,end){
	var change=end-start;
	var minstep=0;
	var maxstep=20;
	var everystep=change/maxstep;
	clearInterval(timer2);
	timer2=setInterval(function(){
		minstep++;
		if(minstep>=maxstep){
			clearInterval(timer2);
			$('.kuangjc').scrollLeft(end);
			return;
		};
		start+=everystep;
		$('.kuangjc').scrollLeft(start);
	},20);
}

$('.zhanghu').click(function(){
	move(0,958);
});
$('.colorblue').eq(0).click(function(){
	move(958,0);
});
</script>
</body>
</html>