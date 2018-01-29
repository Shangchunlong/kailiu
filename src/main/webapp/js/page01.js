var wrap=document.getElementsByClassName('wrap')[0];
var options=wrap.getElementsByClassName('options')[0];
var realarea=options.getElementsByClassName('realarea')[0];


/**************************地区选择*****************************/
var arealis=realarea.getElementsByTagName('li');

function ajaxReq(area,price,roomtype,pageNum){
	$.ajax({
		type:'post',
		url:'getHotelJson',
		data:'address='+area+'&price='+price+'&houseType='+roomtype+'&pageNum='+pageNum+'&t='+new Date().getTime(),
		dataType:'json',
		success:function (map){
			paging(map.totalPage,map.totalSize);
			$('.band var').html(map.houseCount);
			handleJson(map.returnHotels);//????
//			automove();
		},
		error:function (){
			alert('链接失败');
		}
	})
}
function ajaxRequest(area,price,roomtype,pageNum){
	$.ajax({
		type:'post',
		url:'getHotelJson',
		data:'address='+area+'&price='+price+'&houseType='+roomtype+'&pageNum='+pageNum+'&t='+new Date().getTime(),
		dataType:'json',
		success:function (map){
			handleJson(map.returnHotels);
			$('.band var').html(map.houseCount);
//			automove();
		},
		error:function (){
			alert('链接失败');
		}
	})
}

var lastcheck=0;
for (var i = 0; i < arealis.length; i++) {
	arealis[i].index=i;
	arealis[i].onclick=function(){
		if(lastcheck==0){
			arealis[lastcheck].style.color='#3c3c3c';
		}else{
			arealis[lastcheck].className='';
		};

		if(this.index==0){
			arealis[this.index].style.color='#ffa000';
		}else{
			arealis[this.index].className='example';
		};
		area.value=this.innerText; 
		ajaxReq($('#area').val(),$('#price').val(),$('#roomtype').val(),1);
		lastcheck=this.index;
	}
}

/************************价格区间选择*************************/
var pricejc=options.getElementsByClassName('pricejc')[0];
var priceas=pricejc.getElementsByTagName('a');
var lastcheck2=0;
console.log(priceas.length);
for (var i = 0; i < priceas.length; i++) {
	priceas[i].index=i;
	priceas[i].onclick=function(){
		if (lastcheck2==0) {
			priceas[lastcheck2].style.color='#3c3c3c';
		}else{
			priceas[lastcheck2].style.background='url(imgs/imgs01/notclick_07.png) 0px 0px no-repeat';
		};

		if (this.index==0) {
			priceas[this.index].style.color='#ffa000';
		}else{
			priceas[this.index].style.background='url(imgs/imgs01/click_09.png) 0px 0px no-repeat';
		};
//		price.value=this.index;这句无法赋值，用jQuery的方法赋值解决
		$('#price').val(this.index);
		ajaxReq($('#area').val(),$('#price').val(),$('#roomtype').val(),1);
		lastcheck2=this.index;
	}
}
/************************床型选择********************/
var upbottom=options.getElementsByClassName('upbottom')[0];
var sizelis=upbottom.getElementsByTagName('li');
var lastcheck3=0;
/*console.log(sizelis.length);*/
for (var i = 0; i < sizelis.length; i++) {
	sizelis[i].index=i;
	sizelis[i].onclick=function(){
		if (lastcheck3==0) {
		sizelis[0].style.color='#3c3c3c';
		}else{
			sizelis[lastcheck3].style.background='none';
		};

		if (this.index==0) {
			sizelis[0].style.color='#ffa000';
		}else{
			sizelis[this.index].style.background='url(imgs/imgs01/yuanjiaojuxing_03.png) 0 0 no-repeat';
		};
		roomtype.value=this.innerText;
		ajaxReq($('#area').val(),$('#price').val(),$('#roomtype').val(),1);
		lastcheck3=this.index;
		}
	
}
/***********************重置筛选条件*****************/
var resetbutton=options.getElementsByClassName('resetbutton')[0];

resetbutton.onclick=function(){
	if(lastcheck!=0){
		arealis[lastcheck].className='';
		arealis[0].style.color='#ffa000';

	}
	if (lastcheck2!=0) {
		priceas[lastcheck2].style.background='url(imgs/imgs01/notclick_07.png) 0px 0px no-repeat';
		priceas[0].style.color='#ffa000';
	}
	if (lastcheck3!=0) {
		sizelis[lastcheck3].style.background='none';
		sizelis[0].style.color='#ffa000';
	}
	
	area.value='全部';
	$('#price').val(0);
	roomtype.value='全部';
	ajaxReq($('#area').val(),$('#price').val(),$('#roomtype').val(),1);
	lastcheck=0;
	lastcheck2=0;
	lastcheck3=0;
}



/*******************************AJAX进入刷新及局部刷新***********************************/

window.onload=function(){
	ajaxReq('全部',0,'全部',1);
//	automove();
	
}	

function handleJson(jsons){
	var n=0;		//第几个酒店
	var m=0;		//第几个房间
	$('.content_in').html('');
	if(jsons.length<=0){
//		alert("Sorry,没有符合条件的酒店根本");
		$('.content_in').append($('<div class="cont cont1">\
										<div class="conup">\
											<div class="nowarn">\
												<h5>Sorry,没有找到符合您条件的酒店根本</h5>\
												<p>请适当调整您的搜索条件或<a class="lookall" href="javascript:;">查看全部酒店</a></p>\
											</div>\
										</div>\
									</div>'));
		
		$('.lookall').on("click",function(){
			if(lastcheck!=0){
				arealis[lastcheck].className='';
				arealis[0].style.color='#ffa000';

			}
			if (lastcheck2!=0) {
				priceas[lastcheck2].style.background='url(imgs/imgs01/notclick_07.png) 0px 0px no-repeat';
				priceas[0].style.color='#ffa000';
			}
			if (lastcheck3!=0) {
				sizelis[lastcheck3].style.background='none';
				sizelis[0].style.color='#ffa000';
			}
			
			area.value='全部';
			$('#price').val(0);
			roomtype.value='全部';
			ajaxReq($('#area').val(),$('#price').val(),$('#roomtype').val(),1);
			lastcheck=0;
			lastcheck2=0;
			lastcheck3=0;
		});
	}else{
		for(var i=0;i<jsons.length;i++){
			 if(jsons[i].hotelMids.length<=0){
				 continue;
			 }
			deal(jsons[i],n,m);
			n++;
			m+=jsons[i].hotelMids.length;
		}
	}
}

/*******************************AJAX局部刷新***********************************/
function deal(json,n,pageHouse){
	
	$('.content_in').append($('<div class="cont cont1">\
			<div class="conup">\
			<div class="upleft">\
				<div class="upleft_outer">\
					<div class="upleftcon">\
					</div>\
				</div>\
			</div>\
			<div class="upright">\
				<div class="tit titt1">\
				<h3><a href="javascript:;"></a></h3>\
					<!-- 喜欢评论 -->\
					<div class="like">\
						<div>\
							<a class="img imglike" href="javascript:;"><img src="imgs/imgs01/heart_03.png" alt=""></a>\
							<a class="alllike" href="javascript:;">喜欢</a>\
							<a href="javascript:;" class="amount">1168</a>\
						</div>\
						<div>\
							<a class="img discuss" href="javascript:;"><img src="imgs/imgs01/message_03.png" alt=""></a>\
							<a class="alllike" href="javascript:;">评论</a>\
							<a href="javascript:;" class="amount id="dis1168" ">1168</a>\
						</div>\
					</div>\
				</div>\
				<div class="concon">\
					<div class="address">\
						<h3 class="add">地 址:</h3>\
						<p></p>\
					</div>\
					<div class="hotel">\
						<h3 class="add hotelname">酒店特色:</h3>\
						<p></p>\
					</div>\
					<div class="hotelbottom">\
						<h3 class="add hotelname">服 务:</h3>\
						\
					</div>\
				</div>\
			</div>\
		</div>\
		<div class="condown condown1">\
			<div class="room_intr_wrap">\
			<div class="ri_title ">\
				<div class="rit_clo rit_1"></div>\
				<div class="rit_clo rit_2">房型</div>\
				<div class="rit_clo rit_2">早餐</div>\
				<div class="rit_clo rit_2">宽带</div>\
				<div class="rit_clo rit_2">床型</div>\
				<div class="rit_clo rit_2">房价</div>\
				<div class="rit_clo rit_2">现价</div>\
				<div class="rit_clo rit_3"></div>\
			</div>\
			<ul class="ri_info">\
				\
			</ul>\
		</div>\
		</div>\
	</div>'));
	//添加酒店图片
	for(var i=0;i<json.hotelPics.length;i++){
		$('.upleftcon:eq('+(n)+')').append($('<img src='+json.hotelPics[0].picPath+' alt="">'));
	}
	//添加酒店名字及星级
	$('.tit:eq('+(n)+') h3 a').html(json.name);
	//为酒店名字添加链接
	$('.tit:eq('+(n)+') h3 a').attr('href','hotelDetails?hid='+json.hid);
	for(var i=0;i<json.level;i++){
		$('.tit:eq('+(n)+') h3').after($('<img src="imgs/imgs01/yellowstar.png" alt="">'));
	}
	//添加地址，特色，服务
	$('.address:eq('+(n)+') p').html(json.detailsaddress);
	$('.hotel:eq('+(n)+') p').html(json.feature);
	if(json.serverDesc.indexOf('早')!=-1){
		$('.hotelbottom:eq('+(n)+')').append($('<p class="service"><img src="imgs/imgs01/xinyongka_03.png" alt=""><span>提供早餐</span></p>'));
	}
	if(json.serverDesc.indexOf('无线')!=-1){
		$('.hotelbottom:eq('+(n)+')').append($('<p class="service ppp"><img src="imgs/imgs01/wifi_03.png" alt=""><span>无线网络</span></p>'));
	}
	if(json.serverDesc.indexOf('信用卡')!=-1){
		$('.hotelbottom:eq('+(n)+')').append($('<p class="service ppp"><img src="imgs/imgs01/zaocan_03.png" alt=""><span>信用卡服务</span></p>'));
	}
	
	//添加房间信息
//		<img src="imgs/imgs01/hotel03_03.jpg" alt="房间">
	for(var i=0;i<json.hotelMids.length;i++){
		var m=(pageHouse+i)*6;
		var hp=json.hotelMids.length*n;
		$('.ri_info:eq('+(n)+')').append($('<li class="rii_last">\
						<div class="rii_pic">\
							<div class="riip_1"></div>\
						</div>\
						<div class="rii_clo"></div>\
						<div class="rii_clo"></div>\
						<div class="rii_clo"></div>\
						<div class="rii_clo"></div>\
						<div class="rii_clo rii_1"></div>\
						<div class="rii_clo rii_2"></div>\
						<div class="rii_3"><div class="fastbook"><a href="javascript:;">速订<a></div></div>\
					</li>'));
		//添加图片
		$('.riip_1:eq('+(i+pageHouse)+')').append('<img src='+json.hotelMids[i].hotelPrice[0].housePic[0].picPath+' alt="房间">');
		//添加房间类型
		$('.rii_clo:eq('+(0+m)+')').html(json.hotelMids[i].hotelPrice[0].houseType.houseType);
		console.log(n);
		//添加早餐
		if(json.serverDesc.indexOf('早')!=-1){
			$('.rii_clo:eq('+(1+m)+')').html('含早');
		}else{
			$('.rii_clo:eq('+(1+m)+')').html('无');
		}
		//添加无线
		if(json.serverDesc.indexOf('无线')!=-1){
			$('.rii_clo:eq('+(2+m)+')').html('免费');
		}else{
			$('.rii_clo:eq('+(2+m)+')').html('无');
		}
		//添加床型
		if(json.hotelMids[i].hotelPrice[0].houseType.houseType.indexOf('套房')!=-1){
			$('.rii_clo:eq('+(3+m)+')').html('套床');
		}else if(json.hotelMids[i].hotelPrice[0].houseType.houseType.indexOf('大床房')!=-1){
			$('.rii_clo:eq('+(3+m)+')').html('大床');
		}else if(json.hotelMids[i].hotelPrice[0].houseType.houseType.indexOf('双人间')!=-1){
			$('.rii_clo:eq('+(3+m)+')').html('双人床');
		}else if(json.hotelMids[i].hotelPrice[0].houseType.houseType.indexOf('标准间')!=-1){
			$('.rii_clo:eq('+(3+m)+')').html('单人床');
		}else{
			$('.rii_clo:eq('+(3+m)+')').html('床');
		}
		//添加房价
		$('.rii_clo:eq('+(4+m)+')').html('&yen; '+Math.floor(json.hotelMids[i].hotelPrice[0].price*1.1));
		$('.rii_clo:eq('+(5+m)+')').html('&yen; '+json.hotelMids[i].hotelPrice[0].price);
		//设置速订链接属性
		$('.fastbook:eq('+(i+pageHouse)+') a').attr('href','createHotelOrdertemp?hid='+json.hid+'&hpid='+json.hotelMids[i].hotelPrice[0].hpid);
	}
}
/*******************************AJAX局部刷新***********************************/
/*******************************大图滚动***********************************/

function move(box,imgs,timer1,d) {
	var start=box.scrollLeft;
	var end=d*imgs[0].clientWidth;
	var min=0;
	var max=10;
	var change=end-start;
	var every=change/max;
	clearInterval(timer1);
	timer1=setInterval(function() {
		min++;
		if (min>max) {
			return;
		};
		start+=every;
		box.scrollLeft=start;
	},40);	
}

function automove(timer,timer1,imgs,box,d) {
	clearInterval(timer);
	timer=setInterval(function() {
		d++;
//		console.log(d);
		if (d>=imgs.length) {
			d=0;
			box.scrollLeft=0;
		};
		move(box,imgs,timer1,d);
	},2000);
}
	function move(boxouter){
		var box=boxouter.getElementsByClassName("upleft_outer")[0];
		var uplls=boxouter.getElementsByClassName('upll')[0];
		var upleftcons=box.getElementsByClassName('upleftcon');
		var uplrs=boxouter.getElementsByClassName('uplr')[0];
		var imgs=upleftcons[0].getElementsByTagName("img");
		var d=0,per=0,timer,timer1;
		var oli=imgs[0].cloneNode(true);
		upleftcons[0].appendChild(oli);
		/*********************/
		/*********************/
		automove(timer,timer1,imgs,box,d);
		/*uplls.onclick=function(){
//			console.log(d);
			
			clearInterval(timer);
			d--;
			if (d<0) {
				d=imgs.length-2;
				box.scrollLeft=(d+1)*imgs[0].clientWidth;
			};
			move(box,imgs,timer1,d);
			automove(timer,timer1,imgs,box,d);
		};
		uplrs.onclick=function(){
//			console.log(d);
			clearInterval(timer);
			d++;
			if (d>=imgs.length) {
				d=1;
				box.scrollLeft=(d-1)*imgs[0].clientWidth;
			};
			move(box,imgs,timer1,d);
			automove(timer,timer1,imgs,box,d);
		};*/
	};
function automove(){
	var uplefts=document.getElementsByClassName('upleft');
	console.log(uplefts.length);
	for (var i = uplefts.length - 1; i >= 0; i--) {
		console.log(uplefts[i]);
		move(uplefts[i]);
	};
}
/*******************************大图滚动***********************************/
	

/*分页*/
/*var totalPage=3;
$("#page").paging({
    pageNo:1,
    totalPage: totalPage,
    totalSize: 300,
    callback: function(num) {
    	ajaxRequest($('#area').val(),$('#price').val(),$('#roomtype').val(),num);
    }
})*/

function paging(totalPage,totalSize){
	$("#page").paging({
	    pageNo:1,
	    totalPage: totalPage,
	    totalSize: totalSize,
	    callback: function(num) {
	    	$('#page a').attr('href','#anchorURL');
	    	ajaxRequest($('#area').val(),$('#price').val(),$('#roomtype').val(),num);
	    }
	})
	$('#page a').attr('href','#anchorURL');
}
