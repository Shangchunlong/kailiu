package com.jnmd.liuwan.controller.user;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Discuss;
import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.HotelPic;
import com.jnmd.liuwan.domain.HotelPrice;
import com.jnmd.liuwan.service.DiscussService;
import com.jnmd.liuwan.service.HotelService;

@Controller
@Scope("prototype")
public class HotelDetailsController {
	@Resource
	private HotelService HotelService;
	@Resource
	private DiscussService discussService;

	private static int ONE_PAGE_DIS_NUM = 5;//每页有五条评论

	@RequestMapping("/hotelDetails")
	public ModelAndView hotelDetails(@RequestParam("hid") int hid) {

		Hotel hotel = HotelService.getHotel(hid);// 获取酒店信息
		List<HotelPrice> hotelPrice = HotelService.getHotelMsg(hid);// 获取酒店详细信息
		List<Hotel> hotels = HotelService.getRecommendHotels();
		ModelAndView modelAndView = new ModelAndView("page02");
		modelAndView.addObject("hotel", hotel);
		modelAndView.addObject("houses", hotelPrice);
		modelAndView.addObject("hotels", hotels);
		return modelAndView;

	}

	@RequestMapping(value = "/getDisJson")
	@ResponseBody
	public List<Discuss> getjson(@RequestParam("hid") int obj,int pagNum) {
		Map<String, Integer> map = new HashMap();
		int num = (pagNum-1)*5;
		map.put("obj", obj);
		map.put("num", num);
		List<Discuss> list = discussService.getHotelDis(map);
		return list;
	}
	@RequestMapping(value = "/getPages")
	@ResponseBody
	public int getPages(@RequestParam("hid") int obj) {
		int disNum = discussService.getDisNum(obj);//获取评论条数
		int pages = (int) Math.ceil((disNum*1.0)/ONE_PAGE_DIS_NUM) ;//计算总页码数
		return pages;
	}
	
	@RequestMapping(value = "/getDisNum")
	@ResponseBody
	public int getDisNum(@RequestParam("hid") int obj) {
		int disNum = discussService.getDisNum(obj);//获取评论条数
		return disNum;
	}
	
	
	@RequestMapping(value = "/addDisJson")
	@ResponseBody
	public String addjson(@RequestParam("hid") int obj,String content,String time,int user_id) {
		Map<String, Object> map = new HashMap();
		
		map.put("obj", obj);
		map.put("dis_content", content);
		map.put("dis_date", time);
		map.put("user_id", user_id);
		map.put("flag", 0);
		
		discussService.addhotelDis(map);
		return "success";
		
	}

}
