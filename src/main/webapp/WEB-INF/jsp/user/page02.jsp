<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>伴手礼 酒店 喜来登酒店</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/page02.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/comment.css">
<style>
#pageController{
	overflow:hidden;
	width: 356px;
	margin:0 auto;
}
.page .btn{
	cursor:pointer;
}
.content .page .ipt:hover{
	background:white;
	color:black;
}

</style>
</head>
<body>
	<div class="wrap">
		<!-- 头部信息 -->
		<div class="header">
			<div class="con">
				<!-- 头部内容 -->
				<div class="con1">
					<div class="search">
						<input type="text" name="" value=""><a
							href="https://www.baidu.com/"></a>
					</div>
					<div class="leftsearch">
						<div class="bag">
							<img src="imgs/gift_03.png" alt=""> <a id="headcon1"
								href="">行李箱</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="">注册</a>
						</div>
						<div class="zhuce">
							<a id="headcon1" href="">登录</a>
						</div>
						<div class="tel">
							<img src="imgs/phone_03.png" alt=""> <a href="">400-800-8820</a>
						</div>
					</div>

				</div>
				<div class="con2">
					<a class="posimg" href=""><img src="imgs/hose_03.png" alt=""></a>
					<a href="">第一次</a> <a href="">目的地</a> <a href="">自订行程</a> <a
						href="">游记</a> <a href="">特产</a> <a href="">优惠</a> <a href="">环岛巴士</a>
				</div>
			</div>
		</div>
		<!-- 当前位置信息 -->
		<div class="pos">
			<a href="#">首页</a> &gt; <a href="#">自订行程</a> &gt; <a href="">酒店</a>
			&gt; ${hotel.name }
		</div>

		<div class="content">

			<!-- 上内容块 -->
			<div class="conup">
				<!-- 标题 -->
				<div class="tit">
					<h3>${hotel.name }</h3>
					<div>
						<c:forEach begin="1" end="${hotel.level }" step="1" var="n"
							varStatus="status">
							<img src="imgs/imgs05/xing.png" alt="" />
						</c:forEach>
					</div>
				</div>
				<!-- 左图片 -->
				<img src="${hotel.hotelPics[0].picPath }" alt="" class="leftimg">
				<!-- 右内容 -->
				<div class="titright">
					<!-- 地址 -->
					<div class="address">
						<h3 class="add">地 址:</h3>
						<p>${hotel.detailsaddress}</p>
					</div>
					<!-- 服务 -->
					<div class="hotelbottom">
						<h3 class="add hotelname">服 务:</h3>
						<c:if test="${fn:contains(hotel.serverDesc,'早餐')}">
							<p class="service">
								<img src="imgs/imgs01/zaocan_03.png" alt="">提供早餐
							</p>
						</c:if>
						<c:if test="${fn:contains(hotel.serverDesc, '无线')}">
							<p class="service ppp">
								<img src="imgs/imgs01/wifi_03.png" alt="">无线网络
							</p>
						</c:if>
						<c:if test="${fn:contains(hotel.serverDesc, '信用卡')}">
							<p class="service ppp">
								<img src="imgs/imgs01/xinyongka_03.png" alt="">信用卡服务
							</p>
						</c:if>
					</div>
					<!-- 入住时间 -->
					<div class="hotel">
						<h3 class="add hotelname">入住时间:</h3>
						<p>${hotel.intime}</p>
					</div>
					<!-- 退房时间 -->
					<div class="hotel">
						<h3 class="add hotelname">退房时间:</h3>
						<p>${hotel.outtime}</p>
					</div>
					<!-- 酒店特色 -->
					<div class="hotel  special">
						<h3 class="add hotelname">酒店特色:</h3>
						<p>${hotel.feature}</p>
					</div>
					<!-- 点赞评论 -->
					<div class="dianzanpinglun">
						<div class="like">
							<div>
								<a class="img discuss" href="#comment"><img
									src="imgs/imgs01/message_03.png" alt=""></a> <a
									class="alllike" href="#comment">评论</a>
							</div>
						</div>
					</div>
				</div>

				<!-- 下图片 -->
				<div id="imgwrapout">
					<c:if test="${hotel.hotelPics.size() > 4}">
						<a class="buu1" href="javascript:;"><img
							src="imgs/imgs02/Lbutton_09.png" alt=""></a>
						<a class="buu2" href="javascript:;"><img
							src="imgs/imgs02/Rbutton_03.png" alt=""></a>
					</c:if>
					<div id="imgwrapin">
						<div class="imgbottom roll">
							<c:forEach var="pic" items="${hotel.hotelPics}">
								<img src="${pic.picPath }" alt="">
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- 左内容块 -->
			<div class="conleft">
				<c:forEach var="house" items="${houses}">
					<div class="normalhouse">
						<!-- 标准间标题 -->
						<div class="cap">
							<div class="div11">${house.houseType.houseType}间</div>
							<div class="div22">房型</div>
							<div class="div33">早餐</div>
							<div class="div33">宽带</div>
							<div class="div33">床型</div>
							<div class="div44">房价</div>
						</div>
						<!-- 标准间内容 -->
						<div class="capcon">
							<div class="div11">
								<img src="imgs/imgs02/biaozhunjian_03.jpg" alt="">
							</div>
							<div class="div22">
								<p class="capcontent">标准${house.houseType.houseType}间</p>
							</div>
							<div class="div33">
								<p class="capcontent">
									<c:choose>
										<c:when test="${fn:contains(hotel.serverDesc,'早餐')}">
											含早
										</c:when>
										<c:otherwise>
											不含早
										</c:otherwise>
									</c:choose>
								</p>
							</div>
							<div class="div33">
								<p class="capcontent">
									<c:choose>
										<c:when test="${fn:contains(hotel.serverDesc,'无线')}">
											免费
										</c:when>
										<c:otherwise>
											收费
										</c:otherwise>
									</c:choose>
								</p>
							</div>
							<div class="div33">
								<p class="capcontent">${house.houseType.houseType}床</p>
							</div>
							<div class="div44">
								<p class="nowprice">
									现价<span>¥${house.price}</span>元
								</p>
								<p class="beforeprice">原价¥${house.beforeprice}元</p>
							</div>
						</div>
						<!-- 标准间信息 -->
						<div class="capintro">
							<p>建筑面积 : ${house.area}平方米</p>
							<p>楼层 : ${house.floor}层</p>
							<p>
								无烟房 :
								<c:choose>
									<c:when test="${fn:contains(house.smoke,'无烟')}">
											该房型可安排无烟楼层
										</c:when>
									<c:otherwise>
											该房型不可安排无烟楼层
										</c:otherwise>
								</c:choose>

							</p>
							<p>床型 : ${house.houseType.houseType}床</p>
							<p>容纳人数 : 最多${house.peomax }人</p>
						</div>
						<!-- 预定信息 -->
						<div class="reserve">
							<p class="jinzhang">
								<!-- 紧张 -->
							</p>
							<a class="suding" href="createHotelOrdertemp?hid=${hotel.hid}&hpid=${house.hpid}" target="_blank">速订</a>
							<p class="yiding">
							</p>
						</div>
					</div>
				</c:forEach>

				<!-- 评论区 -->
				<div class="commentspace" id="comment">
					<div class="youji">
						<p>
							评论 (
							<var id="disnum">66</var>
							)
						</p>
					</div>
					

					<!--
						    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
						-->
					<div class="commentAll">
					    <!--评论区域 begin-->
					    <div class="reviewArea clearfix">
					        <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
					        <a href="javascript:;" class="plBtn">评论</a>
					    </div>
					    <!--评论区域 end-->
					    <!--回复区域 begin-->
					    <div class="comment-show">
					        <div class="comment-show-con clearfix">
					    
					            
					        </div>
					    </div>
					    <!--回复区域 end-->
					</div>

				</div>
				<!-- 以下是页码 -->
				<div class="page" id="pageController">
					<div class="start btn">首页</div>
					<div class="up btn">上一页</div>
					<div class="ipt"><input onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/" type="text" class="pageNum" value="1" style="width:20px;height:15px;display:inline;border:1px solid #000;text-align:center;"> /<span class="pages"></span></div>
					<div class="go btn">跳转</div>
					<div class="down btn">下一页</div>
					<div class="end btn">尾页</div>
				</div>

			</div>
			<!-- 右内容块 -->
			<div class="conright">
				<div class="xiangguantuijian">相关推荐</div>

				<div class="neirong">
					<c:forEach var="h" items="${hotels}">
						<div class="tuijianneirong">
							<img class="limg" src="${h.hotelPics[0].picPath}" alt="">
							<div class="jiudiandengji">
								<a href="hotelDetails?hid=${h.hid}">${h.name }</a>
								<div style="height:10px;padding:5px 0;over-flow:hidden;">
									<c:forEach begin="1" end="${h.level }" step="1" var="n"
										varStatus="status">
										<img src="imgs/imgs05/xing.png" alt=""  style="width:10px;height:10px;float:left;margin-right:2px;"/>
									</c:forEach>
								</div>
								<div class="mostlike">
									<a class="zuo" href="" class="mostxihuan"><img src="imgs/imgs01/heart_03.png" alt="">1168</a> 
									<a class="you" href="" class="mostpinglun"><img src="imgs/imgs01/message_03.png" alt="">1168</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 以下是footer -->
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
					<li class="share"><span class="weibo"></span> <span
						class="weixin"></span></li>

				</ul>
				<ul class="list5">
					<li class="phonenum">400 820 8820</li>
					<li>周一至周日</a></li>
					<li>9:00~20:00</li>
					<li class="zixun"></li>

				</ul>
			</div>
			<div class="con2">Copyright © 2013-2014 www.6waner.cn All Right
				Reserved. 京ICP备11</div>
		</div>
	</div>

	


	<script>
		var imgwrapin = document.getElementById('imgwrapin');
		var buu1 = document.getElementsByClassName("buu1")[0];
		var buu2 = document.getElementsByClassName("buu2")[0];
		var roll = imgwrapin.getElementsByClassName('roll')[0];
		var imgs = imgwrapin.getElementsByTagName('img');
		var leftimg = document.getElementsByClassName("leftimg")[0];

		var imgWidth = imgs[0].clientWidth;
		var marginRight = 26;
		var maxdist = imgWidth * (imgs.length - 4) + marginRight
				* (imgs.length - 4);

		var step = imgWidth + marginRight;
		var timer1;
		var scrollLeft = 0;

		function moveRight() {
			buu1.onclick = null;
			buu2.onclick = null;
			var start = imgwrapin.scrollLeft;
			var endscrollLeft = imgwrapin.scrollLeft + step;
			if (endscrollLeft >= maxdist) {
				endscrollLeft = maxdist
			}
			timer1 = setInterval(function() {
				start += 2;
				if (start >= endscrollLeft) {
					start = endscrollLeft;
					clearInterval(timer1);
					buu2.onclick = moveRight;
					buu1.onclick = moveLeft;
				}
				imgwrapin.scrollLeft = start
			}, 1);
		}

		function moveLeft() {
			buu1.onclick = null;
			buu2.onclick = null;
			var start = imgwrapin.scrollLeft;
			var endscrollLeft = imgwrapin.scrollLeft - step;
			if (endscrollLeft <= 0) {
				endscrollLeft = 0;
			}
			timer1 = setInterval(function() {
				start -= 2;
				if (start <= endscrollLeft) {
					start = endscrollLeft;
					clearInterval(timer1);
					buu2.onclick = moveRight;
					buu1.onclick = moveLeft;
				}
				imgwrapin.scrollLeft = start
			}, 1);
		}

		buu2.onclick = moveRight;
		buu1.onclick = moveLeft;

		imgwrapin.onclick = function(ev) {
			var e = ev || window.event;
			leftimg.src = e.target.src;
		}
	</script>
	

<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>

<!-- 获取当前酒店评论 -->
<script type="text/javascript">
function getDisNum(){
	var disNum;
	$.ajax({
		type:"post",
		url:"getDisNum",
		async: false,
		data:{hid:${hotel.hid}},
		success:function(data){
			disNum = data;
			console.log("总条数="+pages)
		},
		error:function(){
			console.log("请求失败");
		},
		dataType:"json",
	});
	return disNum;
}
function loadDis(pagNum){
	((function(pagNum){
		console.log(pagNum)
		$.ajax({
			type:"post",
			url:"getDisJson",
			data:{hid:${hotel.hid},pagNum:pagNum},
			success:function(data){
				console.log("请求成功");
				
				for(var i=0 ;i<data.length;i++){
					var content = data[i].dis_content;
					var now = data[i].dis_date;
					var name = data[i].user.uname;
					//动态创建评论模块
			        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+name+' : </a> <span class="my-pl-con">&nbsp;'+ content +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> </div><div class="hf-list-con"></div></div> </div>';
			        
			        $('.comment-show').append(oHtml);
			        $('#disnum').html(getDisNum());
			          
					
				}
			},
			error:function(){
				console.log("请求失败");
			},
			dataType:"json"
			
		});
		
	}(pagNum)));
	

}


window.onload=function (){
	loadDis(1);
};

</script>


<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        console.log(oSize);
        //动态创建评论模块
       
        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
        }
        $.ajax({
	    		type:"post",
	    		url:"addDisJson",
	    		data:{hid:${hotel.hid},content:oSize,time:now,user_id:1},
	    		success:function(data){
	    			
	    		},
	    		error:function(){
	    		},
	    		complete:function(){
	    			$('.comment-show').empty();
	    			loadDis(1);//插入成功返回第一页
	    			$("#pageController .pageNum").val(pageNum);
	    		},
	    		dataType:"json"
	    		
	    	})
	    	 
	    
    });
</script>
<!-- 分页控制 -->
<script type="text/javascript">
	function getPages(){//获取总页数
		var pages;
		$.ajax({
			type:"post",
			url:"getPages",
			async: false,
			data:{hid:${hotel.hid}},
			success:function(data){
				pages = data;
				console.log("总页数="+pages)
			},
			error:function(){
				console.log("请求失败");
			},
			dataType:"json",
		});
		return pages;	
	}
	
	var pageNum = 1;
	var pages = getPages();
	$("#pageController .pages").html(pages);
	
	$("#pageController").on("click",".btn",function(){
		
		if($(this).hasClass("start")){//回到首页
			pageNum = 1;
			console.log("首页");
		}
		if($(this).hasClass("end")){//最后一页
			pageNum = pages;
			console.log("尾页")
		}
		if($(this).hasClass("go")){//跳转
			pageNum = $("#pageController .pageNum").val();
			
			console.log("跳转:"+pageNum+"页")
		}
		if($(this).hasClass("up")){//上一页
			console.log("上一页")
			pageNum--;
		}
		if($(this).hasClass("down")){//下一页
			console.log("下一页")
			pageNum++;
		}
		
		if(pageNum<1){
			pageNum = 1;
		}
		if(pageNum>pages){
			pageNum = pages;
		}
		
		$('.comment-show').empty();
		loadDis(pageNum);
		$("#pageController .pageNum").val(pageNum);
		
	});
</script>


	

</body>
</html>