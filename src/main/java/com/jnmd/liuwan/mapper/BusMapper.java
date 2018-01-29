package com.jnmd.liuwan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.domain.Page;
@Repository
public interface BusMapper {
	//bus01页面 查询巴士公司
	public List<BusCompany> getPageBusCompanys(Page page);
	//查询公司的巴士类型
	public List<BusMessage> getBusModel(int company_id);
	
	public List<BusMessage> getBusMessage(@Param("company_id")int company_id,@Param("page")Page page);
	
	//根据公司ID查询公司名称
	public BusCompany getCompanyByID(int company_id);
	
	//分页查询公司
	//public List<BusCompany> getPageBusCompanys(PageBean pageBean);
	//查询公司数量
	public int getCompanyCount();
	//查询巴士数量
	public int getBusCount();
	
    public BusCompany getBusCompany2(int company_id);
    
    //页面3信息   根据巴士ID查询巴士信息
	public BusMessage getBusByID(int bus_id);
}
