
package com.jnmd.liuwan.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.service.BusCompanyService;

@Controller
@Scope("prototype")
public class BusCompanyController {
	
	@Resource
	private BusCompanyService busCompanyService;
	
	/*增加巴士公司*/
	@RequestMapping("/addBusCompany")
	public String addBusCompany(){
		return "forward:/WEB-INF/jsp/admin/BusCompanyAdd.jsp";
	}
	@RequestMapping("/saveBusCompany")
	public String saveBusCompany(BusCompany busCompany){
		System.out.println("controller----------");
		busCompanyService.saveBusCompany(busCompany);
		return "forward:/WEB-INF/jsp/admin/BusCompanyAddSucc.jsp";
	}
	/*删除巴士公司*/
	@RequestMapping("/{company_id}/delBusCompanySucc")
	public String delBusCompanySucc(@PathVariable("company_id")int company_id){
		busCompanyService.delBusCompany(company_id);
		return"forward:/WEB-INF/jsp/admin/BusCompanyDelSucc.jsp";
	}
	/*更新巴士公司*/
	@RequestMapping("/{company_id}/updateBusCompany")
	public ModelAndView updateBusCompany(ModelAndView mv,@PathVariable("company_id")int company_id){
		BusCompany busCompanyId = busCompanyService.getBusCompanyId(company_id);
		mv.setViewName("forward:/WEB-INF/jsp/admin/BusCompanyUpdate.jsp");
		mv.addObject("busCompanyId",busCompanyId);
		return mv;
	}
	@RequestMapping("/{company_id}/updateBusCompanySucc")
	public String updateBusCompanySucc(BusCompany busCompany,@PathVariable("company_id")int company_id){
		busCompanyService.updateBusCompany(busCompany);
		return "forward:/WEB-INF/jsp/admin/BusCompanyUpdateSucc.jsp";
		
	}
	/*查询巴士公司*/
	@RequestMapping("/getBusCompany")
	public ModelAndView getBusCompany(){
		List<BusCompany> busCompany=busCompanyService.getBusCompany();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("forward:/WEB-INF/jsp/admin/BusCompanyList.jsp");
		mv.addObject("busCompany",busCompany);
		return mv;
	}
}
