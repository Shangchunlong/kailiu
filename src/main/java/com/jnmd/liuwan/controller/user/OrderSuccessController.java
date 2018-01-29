package com.jnmd.liuwan.controller.user;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.domain.BusOrder;
import com.jnmd.liuwan.service.BusService;
import com.jnmd.liuwan.service.OrderSucService;
@Controller
@Scope("prototype")
public class OrderSuccessController {
	@Resource
	private BusService busService;
	@Resource
	private OrderSucService orderSucService;
	@RequestMapping("/orderSuccess")
	public ModelAndView getOrderAndBus(int obid,int busid){
		BusMessage busMessage = busService.getBusByID(busid);
		BusOrder busOrder =orderSucService.getBusOrderByID(obid);
		ModelAndView mv= new ModelAndView();
		String phone = busOrder.getPhone();
		String phone1 = "";
        for(int i = 0; i < phone.length(); i++){
            if(i >= 3 && i <= 6){
                phone1 = phone1 + "*";
            }else{
                
                phone1 = phone1 + phone.charAt(i);
            }
        }
        busOrder.setPhone(phone1);
        //获取当前时间后3小时时间
        Calendar calendar = Calendar.getInstance();
		 calendar.set(Calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY) + 1);
		 String times=new SimpleDateFormat("yyyy-MM-ddHH").format(calendar.getTime());
		 System.out.println(times);
		 String times1=times.substring(0,times.length()-2);
		 String times2=times.substring(times.length()-2)+":00";
		mv.addObject("busMessage",busMessage);
		mv.addObject("busOrder",busOrder);
		mv.addObject("times1",times1);
		mv.addObject("times2",times2);
		mv.setViewName("bus05");
		return mv;
	}
	
	@RequestMapping("/orderDetails")
	public ModelAndView orderDetails(int obid,int busid){
		BusMessage busMessage = busService.getBusByID(busid);
		BusOrder busOrder =orderSucService.getBusOrderByID(obid);
		ModelAndView mv= new ModelAndView();
		Date date=new Date();//取时间
	      Calendar calendar = new GregorianCalendar();
	      calendar.setTime(date);
	      calendar.add(calendar.DATE,1);//把日期往前减少一天，若想把日期向后推一天则将负数改为正数
	      date=calendar.getTime(); 
	     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	     String dateString = formatter.format(date);
		mv.addObject("busMessage",busMessage);
		mv.addObject("busOrder",busOrder);
		mv.addObject("dateString",dateString);
		
		mv.setViewName("bus06");
		return mv;
	}
}
