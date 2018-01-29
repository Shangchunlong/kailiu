package com.jnmd.liuwan.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.BusOrder;
import com.jnmd.liuwan.domain.Orders;
import com.jnmd.liuwan.service.BusOrderService;

@Controller
@Scope("prototype")
public class BusOrderController {
	@Resource
	private BusOrderService busOrderService;
	
	@RequestMapping("/{bus_id}/createBusOrder")
	public ModelAndView createBusOrder(@PathVariable("bus_id")int bus_id,BusOrder busOrder, int uid){
		System.out.println("添加");
		System.out.println(uid);
		
		//生成订单编号
		Orders orders= new Orders(uid);
		busOrderService.createNewOrderNumber(orders);
		
		//巴士订单时间
		Date date = new Date ();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat formatternum = new SimpleDateFormat("yyyyMMddHHmmss");
		String orderdate = formatter.format(date);
		String ordernum = formatternum.format(date);
		
		
		int a=(int) ((Math.random()*9+1)*100000);  
		busOrder.setOrderdate(orderdate);
		busOrder.setOrdernum(a+ordernum);;
		busOrder.setBus_id(bus_id);
		busOrderService.createNewOrder(busOrder);
		System.out.println(busOrder);
		//根据bus_id参数查询巴士信息
		busOrder=busOrderService.findBusOrderByID(busOrder.getObid());
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
		System.out.println(busOrder);
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("bOrder", busOrder);
		 mv.setViewName("bus04");
		 return mv;
		
	}
	
	
	
	
	
	
	
}
