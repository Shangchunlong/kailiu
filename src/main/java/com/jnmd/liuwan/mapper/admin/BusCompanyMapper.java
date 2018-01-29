package com.jnmd.liuwan.mapper.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;




@Repository
public interface BusCompanyMapper {
	/**
	* 保存巴士公司信息
	*
	* @param busmessage
	* 		BusMessage
	*
	*/
	public void saveBusCompany(BusCompany busCompany);
	/**
	* 查询巴士公司信息
	*
	* @param busmessage
	* 		BusMessage
	*
	*/
	public List<BusCompany> getBusCompany();
	/**
	* 删除巴士公司信息
	*
	* @param id
	* 		int
	*
	*/
	public void delBusCompany(int company_id);
	
	
	public void updateBusCompany(BusCompany busCompany);
	
	public BusCompany getBusCompanyId(int company_id);
	
	
	
	
	
	
}
