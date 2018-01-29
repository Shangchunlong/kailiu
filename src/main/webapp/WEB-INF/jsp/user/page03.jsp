<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>伴手礼 订单确认</title>
<link rel="stylesheet" href="css/page03.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<style>
	#bangzhushuoming{
		position: absolute;
		top: 529px;
		right: -90px;
		width: 80px;
		height: 150px;
		color: #3c3c3c;
		padding: 5px 5px;
		text-align: center;
		border: 1px solid rgb(204,153,51);
		background-color: rgb(255,255,204);
		display: none;
	}
	#bangzhushuoming a{
		position: absolute;
		top: 120px;
		left: 10px;
		color: ;
	}
	#phoneError{
		position: absolute;
		top: 365px;
		left: 391px;
		font-size: 16px;
		color: #cc0000;
		display: none;
	}
	#emailError{
		position: absolute;
		top: 409px;
		left: 336px;
		font-size: 16px;
		color: #cc0000;
		display: none;
	}
	#booksucsendmsg{
		display:block;
	}
	#omoney{
		color: #cc0000;
		font-size: 18px;
		width: 50px;
		font-weight: bold;
		margin-left: 7px;
		float: left;
	}
	#headonmoney{
		margin-left: 35px;
		margin-right: 7px;
		float: left;
	}
	#moneyfh{
		position: absolute;
		top: 656px;
		left: 452px;
		color: #cc0000;
		font-size: 18px;
		font-weight: bold;
		margin-left: 3px;
	}
	#fm{
		position: relative;
	}
</style>
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
		<div class="pos"><h3>${hotel.name}</h3></div>
		
		<div class="content">
			<!-- 左边内容 -->
			<div class="conleft">
			<!-- 表单 -->
			<form id="fm" method="post" action="createHotelOrder?hid=${hotel.hid }&hpid=${hpid}&uid=${uid}">
				<h3 class="title">预定信息</h3>
				
				<div class="items">
					<h3 class="itemname item_come">入住日期</h3>
					<input id="begindate" name="begindate" class="itemvalue comeleave easyui-validatebox" required="true" type="text" onclick="WdatePicker({skin:'twoer'})">
				</div>
				<div class="items">
					<h3 class="itemname item_leave">离开日期</h3>
					<input id="enddate" name="enddate" class="itemvalue comeleave easyui-validatebox" required="true" type="text" onclick="WdatePicker({skin:'twoer'})">
				</div>
			
				<div class="items">
					<h3 class="itemname">房间数量</h3>
					<select id="hotelsum" name="hotelsum" class="itemvalue">
						<option value="1">1个</option>
						<option value="2">2个</option>
						<option value="3">3个</option>
						<option value="4">4个</option>
						<option value="5">5个</option>
					</select>
				</div>
			
				<div class="items">
					<h3 class="itemname">住客姓名</h3>
					<input id="per1" class="itemvalue easyui-validatebox" required="true" type="text" name="per1" >
					<input id="per2" class="itemvalue" disabled="disabled" type="text" name="per2" >
					<input id="per3" class="itemvalue" disabled="disabled" type="text" name="per3" >
				</div>
				<div class="items">
					<p>至少填写1人，所填写姓名需与入住时所持证件一致,务必按顺序填写</p>
				</div>
				<div class="items">
					<h3 class="itemname">最晚抵店</h3>
					<input name="lasttime" class="itemvalue easyui-validatebox" required="true" type="text" onclick="WdatePicker({skin:'twoer',dateFmt:'HH:mm',startDate:'00:00:',isShowToday:false})">				
				</div>
				<div class="title2">
					<h3 class="itemname">联系人信息</h3>
					<p>请准确填写联系人信息，以便我们与您联系</p>
				</div>
			
				<div class="items">
					<h3 class="itemname">手机号码</h3>
					<select name="countryphone" class="country">
						<option value="中国大陆（+86）">中国大陆（+86）</option>
						<option value="香港（+852）">香港（+852）</option>
						<option value="澳门（+853）">澳门（+853）</option>
						<option value="台湾省（+886）">台湾省（+886）</option>
					</select>
					<!-- <input class="country" placeholder="中国大陆（+86）"/> -->
					<input id="phone" class="easyui-validatebox" type="text" name="phonenumber" required="true" validType="phoneNum"></input>
					<p id="booksucsendmsg" class="booksucsendmsg">预定成功后会向您发送短信通知</p>
				</div>
				<div id="phoneError">
					手机号有误
				</div>
				<div id="conjc">
					<label for="email" class="itemname">Email</label>
					<input id="email" class="easyui-validatebox" type="text" name="email" required="true" validType="emailNum"></input>
				</div>
				<div id="emailError">
					邮箱格式有误
				</div>
			
				<div class="fapiao">
					<label for="billfalg" id="bflabel" class="gougou"></label>
					<input id="billfalg" type="checkbox"/>
					<span class="xuyaofapiao">需要发票</span>
				</div>
				<div class="fapiao">
					<h3 id="fapiaocon">发票类型</h3>
					<select name="billtype" id="billtype" disabled>
						<option value="公司或企业">公司或企业</option>
						<option value="个人">个人</option>
					</select>
					<a id="bangzhu" class="bangzhu" href="javascript:;"></a>
				</div>
				<div class="fapiao">
					<h3 id="fapiaocon">发票抬头</h3>
					<input name="billhead" id="billtitle" disabled></input>
				</div>
				<div id="bangzhushuoming">
						发票内容默认为您所订购的产品全称和型号，发票抬头为您的姓名。&nbsp;
						<a href="https://baike.baidu.com/item/%E5%8F%91%E7%A5%A8/91261?fr=aladdin">更多详情</a>
				</div>
				<p class="quxiaoshuoming">
					取消修改说明：订单提交后我们会立即操作扣款，如订单不确认将全额退款至您的付款账户。该订单确认后不可被取消修改，若未入住，我们将收取您全额的房费（¥<var id="noback">${housetypeAndprice[0].price}</var>）。
				</p>
				<div class="yushoufangfei">
					<p id="headonmoney">预收房费 : </p><p id="moneyfh">¥</p><input id="omoney" type="text" name="omoney" value="${housetypeAndprice[0].price}">
				</div>
				<input type="submit" target="_blank" class="tijiaodingdan" value="提交订单"/>
				<a href="javascript:;" class="xiugaihangban">【修改航班】</a>
				</form>
			</div>
			<!-- 右边内容 -->
			<div class="conright">
				<h3 class="nindexuanze">您的选择</h3>
				<div class="biaozhundexuanze">
					<img src="${picPath}" alt="" class="xilaideng">
					<div class="tupianyouce">
						<h3 class="jiudianmingzi">${hotel.name}</h3>
						<c:forEach begin="1" end="${hotel.level }" step="1" var="n" varStatus="status">
							<img  src="imgs/imgs03/xing.png" alt=""/>
						</c:forEach>
					</div>
					<h3 class="jiudianweizhi">${hotel.detailsaddress}</h3>
				</div>
				<div class="biaozhundexuanze"><h3>床型 : ${housetypeAndprice[0].houseType}</h3></div>
				<div class="biaozhundexuanze"><h3 class="ruzhutime">入住时间 : ${hotel.intime}</h3></div>
				<div class="biaozhundexuanze  hotelbottom">
					<h3 class="add hotelname">服务:</h3>
					<c:if test="${map.get('zao')}">
							<p class="service">
								<img src="imgs/imgs01/zaocan_03.png" alt="">提供早餐
							</p>
					</c:if>
					<c:if test="${map.get('wu')}">
							<p class="service">
								<img src="imgs/imgs01/zaocan_03.png" alt="">无线网络
							</p>
					</c:if>
					<c:if test="${map.get('xin')}">
							<p class="service ppp">
								<img src="imgs/imgs01/xinyongka_03.png" alt="">信用卡服务
							</p>
					</c:if>
				</div>
				<div class="biaozhundexuanze ruzhumessage">
					<span id="ruzhuyiwan1" class="ruzhuyiwan" >入住<var>&nbsp;&nbsp;</var>晚</span>
					<span id="ruzhuyiwan2" class="ruzhuyiwan"><var>&nbsp;&nbsp;</var>间客房</span>
				</div>
				<div class="biaozhundexuanze realjine">
					<h3 class="jiudianmingzi">应付金额............................................................................</h3>
					<var id="yingfujine" class="yingfujine">￥0</var>
					<p id="danjia" class="danjia">￥<var id="danjia1">${housetypeAndprice[0].price}</var>/晚</p>
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
</body>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/easyui/jquery.min.js"></script>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	var begindate=document.getElementById('begindate');
	var enddate=document.getElementById('enddate');
	var email=document.getElementById('email');
	var danjia1=document.getElementById('danjia1');
	//计算两个日期之间的差值
	function GetDateDiff(startTime, endTime, diffType) { 
        //将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式  
        startTime = startTime.replace(/\-/g, "/"); 
        endTime = endTime.replace(/\-/g, "/"); 

        //将计算间隔类性字符转换为小写 
        diffType = diffType.toLowerCase(); 
        var sTime = new Date(startTime);      //开始时间 
        var eTime = new Date(endTime);  //结束时间 
        //作为除数的数字 
        var divNum = 1; 
        switch (diffType) { 
            case "second": 
                divNum = 1000; 
                break; 
            case "minute": 
                divNum = 1000 * 60; 
                break; 
            case "hour": 
                divNum = 1000 * 3600; 
                break; 
            case "day": 
                divNum = 1000 * 3600 * 24; 
                break; 
            default: 
                break; 
        } 
        return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(divNum)); 
    }
	
	
	var ruzhuyiwan1=document.getElementById('ruzhuyiwan1');
	var ruzhuyiwan2=document.getElementById('ruzhuyiwan2');
	var yingfujine=document.getElementById('yingfujine');
	var hotelsum=document.getElementById('hotelsum');
	var omoney=document.getElementById('omoney');
	var noback=document.getElementById('noback');
	
		hotelsum.onchange=function(){
			
			var diffday = GetDateDiff(begindate.value,enddate.value,"day");
			var money = danjia1.innerText;
			omoney.value = money*hotelsum.value*diffday;
			
			
			ruzhuyiwan1.innerHTML='入住<var>'+diffday+'</var>晚';
			ruzhuyiwan2.innerHTML='<var>'+hotelsum.value+'</var>间客房';
			yingfujine.innerHTML='￥'+omoney.value;
			noback.innerHTML=money*hotelsum.value*diffday;
		} 
	
	var fm=document.getElementById('fm');
	var phone=document.getElementById('phone');
	
	var booksucsendmsg=document.getElementById("booksucsendmsg");
	var phoneError=document.getElementById("phoneError");
	var emailError=document.getElementById("emailError");
	fm.onsubmit=function (){
		var regPhone=/^1[3|5|7|8]\d{9}$/g;//手机号正则
		var regEmail=/^\w{4,18}@[0-9a-z]{1,12}(\.[a-z]{2,3}){1,2}$/g;//邮箱的正则
		var flag=true;//可以提交
		

		if (regPhone.test(phone.value)) {
			phoneError.style.display='none';
			booksucsendmsg.style.display='block';
		}else{
			phoneError.style.display='block';
			booksucsendmsg.style.display='none';
			flag=false;
		};

		if (regEmail.test(email.value)) {
			emailError.style.display='none';
		}else{
			emailError.style.display='block';
			flag=false;
		};

		if (!flag) {
			return false;
		};
	}
	//是否需要发票选择框
	var bflabel=document.getElementById('bflabel');
	var billfalg=document.getElementById('billfalg');
	var billtype=document.getElementById("billtype");
	var billtitle=document.getElementById("billtitle");
	var bangzhu=document.getElementById("bangzhu");
	var bangzhushuoming=document.getElementById("bangzhushuoming");
	var per1=document.getElementById("per1");
	var per2=document.getElementById("per2");
	var per3=document.getElementById("per3");
	
	per1.onmouseover=function(){
		
		if(per1.value!=""){
			per2.disabled="";
		}
	}
	per1.onmouseout=function(){
		if(per1.value!=""){
			per2.disabled="";
		}
	}
	per2.onmouseover=function(){
		if(per2.value!=""){
			per3.disabled="";
		}
	}
	per2.onmouseout=function(){
		if(per2.value!=""){
			per3.disabled="";
		}
	}
	bflabel.onclick=function(){
		if(billfalg.checked){
			this.className="gougou dagou";
			billtype.disabled="";
			billtitle.disabled="";
		}else{
			this.className="gougou";
			billtype.disabled="disabled";
			billtitle.disabled="disabled";
		}
	}
	bangzhu.onmouseover=function(){
		bangzhushuoming.style.display="block";
	}
	bangzhushuoming.onmouseover=function(){
		bangzhushuoming.style.display="block";
		
	}
	bangzhushuoming.onmouseout=function(){
		bangzhushuoming.style.display="none";
	}
	
	
</script>
</html>