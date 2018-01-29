package com.jnmd.liuwan.controller.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.service.BusService;
import com.jnmd.liuwan.domain.Page;

@Controller
@Scope("prototype")
public class BusController {
	@Resource
	private BusService busService;
	/**
     * bus01界面，查询所有巴士公司信息
     * @return
     */
	@RequestMapping("/getBusCompanys")
	public ModelAndView getBusCompanys(String currentPage){
	       
	       int count = busService.getCompanyCount();
	       System.err.println(count);
	       Page page = new Page(currentPage, count, 2);
	       List<BusCompany> busCompanys = busService.getPageBusCompanys(page);
	       //查询巴士类型  返回List集合
	      //List<BusMessage> busModel= busService.getBusModel();
	       ModelAndView mv =new ModelAndView();
	       
	       mv.setViewName("bus01");
	      
	       mv.addObject("busCompanys",busCompanys);
	       mv.addObject("page",page);
	       //mv.addObject("busModel",busModel);
	       return mv;
	    }
	/**
     * bus02界面，根据点击的公司详情传递company_id,查询busMessage表中所有bus信息
     * @param company_id
     * @return
     */
    @RequestMapping("/{company_id}/getBusMessage")
    public ModelAndView getMessage(@PathVariable("company_id")int company_id,String currentPage){
    	int count = busService.getBusCount();
	       System.err.println(count);
	       Page page = new Page(currentPage, count, 2);
	       System.err.println("------------------");
         List<BusMessage> busMessages = busService.getBusMessage(company_id,page); 
         System.err.println("============");
         BusCompany busCompany=busService.getBusCompany2(company_id);
      
      ModelAndView mv =new ModelAndView();
      mv.setViewName("bus02");
      mv.addObject("busMessage",busMessages);
      mv.addObject("busCompany",busCompany);
      mv.addObject("page",page);
      return mv;
    }
    
    /**
     * bus03界面，查询所有巴士公司信息
     * @return
     */
	//查询景点  返回List集合   bus3页面
	@RequestMapping("{bus_id}/getOrderMassage")
	public ModelAndView getOrderMassage(@PathVariable("bus_id")int bus_id ,Integer uid){
		uid=1;
		//查询景点  返回List集合
		BusMessage busMessage = busService.getBusByID(bus_id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bus03");
		mv.addObject("busMessage",busMessage);
		mv.addObject("uid",uid);
		return mv;
	}
	
}
