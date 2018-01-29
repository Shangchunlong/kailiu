
package com.jnmd.liuwan.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.service.AdminBusService;
import com.jnmd.liuwan.service.BusService;

@Controller
@Scope("prototype")
public class BusMessageController {
	
	@Resource
	private AdminBusService adminBusService;
	
	/*增加巴士信息*/
	@RequestMapping("/addBusMessage")
	public String addBusMessage(){
		return "forward:/WEB-INF/jsp/admin/BusMessageAdd.jsp";
	}
	@RequestMapping("/saveBusmessage")
	public String saveBusmessage(BusMessage busmessage){
		System.out.println("controller----------");
		adminBusService.saveBusmessage(busmessage);
		System.out.println(busmessage);
		return "forward:/WEB-INF/jsp/admin/BusMessageAddSucc.jsp";
	}
	/*删除巴士信息*/
	@RequestMapping("/{bus_id}/delBusMessageSucc")
	public String delBusMessageSucc(@PathVariable("bus_id")int bus_id){
		System.out.println("delBusMessage--"+bus_id);
		adminBusService.delBusMessage(bus_id);
		return"forward:/WEB-INF/jsp/admin/BusMessageDelSucc.jsp";
	}
	/*更新巴士信息*/
	@RequestMapping("/{bus_id}/updateBusMessage")
	public ModelAndView updateBusMessage(ModelAndView mv,@PathVariable("bus_id")int bus_id){
		System.out.println("update=====");
		BusMessage busMessageId = adminBusService.getBusMessageId(bus_id);
		System.out.println(busMessageId);
		mv.setViewName("forward:/WEB-INF/jsp/admin/BusMessageUpdate.jsp");
		mv.addObject("busMessageId",busMessageId);
		return mv;
	}
	@RequestMapping("/{bus_id}/updateBusMessageSucc")
	public String updateBusMessageSucc(BusMessage busmessage,@PathVariable("bus_id")int bus_id){
		System.out.println("upsucc=====");
		adminBusService.updateBusMessage(busmessage);
		System.out.println(busmessage);
		return "forward:/WEB-INF/jsp/admin/BusMessageUpdateSucc.jsp";
		
	}
	/*查询巴士信息*/
	@RequestMapping("/getBusMessage")
	public ModelAndView getBusMessage(){
		List<BusMessage> busmessage=adminBusService.getBusmessage();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("forward:/WEB-INF/jsp/admin/BusMessageList.jsp");
		mv.addObject("busmessage",busmessage);
		return mv;
		
	}
	
	
	
	
}
