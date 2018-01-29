package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.exception.BusCompanyException;
import com.jnmd.liuwan.mapper.admin.BusCompanyMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class BusCompanyService {
    
    @Resource
    private BusCompanyMapper busCompanyeMapper;
   
    
    /*增加巴士公司信息*/
    @Transactional(rollbackFor=BusCompanyException.class)
    public void saveBusCompany(BusCompany busCompany){
    	 busCompanyeMapper.saveBusCompany(busCompany);
    }
    
    /*查询巴士公司信息*/
    @Transactional(propagation=Propagation.SUPPORTS)
    public List<BusCompany> getBusCompany(){
    	return busCompanyeMapper.getBusCompany();
    }
    /*删除巴士公司信息*/
    @Transactional(rollbackFor=BusCompanyException.class)
    public void delBusCompany(int company_id){
    	busCompanyeMapper.delBusCompany(company_id);
    }
    
    /*更新巴士公司信息*/
    @Transactional(rollbackFor=BusCompanyException.class)
    public void updateBusCompany(BusCompany busCompany){
    	busCompanyeMapper.updateBusCompany(busCompany);
		
    }

	public BusCompany getBusCompanyId(int company_id) {
		return busCompanyeMapper.getBusCompanyId(company_id);
		
	} 
}
