package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.mapper.BusMapper;
import com.jnmd.liuwan.domain.Page;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class BusService {
    
    @Resource
    private BusMapper busMapper;
   //查询巴士类型  返回List集合
    public List<BusMessage> getBusModel(int company_id){
    	return busMapper.getBusModel(company_id);
    }
    /**
     * 
     * @param company_id
     * @return BusCompany
     */
    @Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
    public  BusCompany getCompanyByID(int company_id){
        return busMapper.getCompanyByID(company_id);
    }
    //-----------------------------------------
    /**
     * bus01界面查询所有公司总信息
     * 调用mapper中的方法
     * @return
     *          BusMapper.getBusCompanys();
     */
     @Transactional(propagation=Propagation.SUPPORTS)
    public List<BusCompany> getPageBusCompanys(Page page){
        return busMapper.getPageBusCompanys(page);
    }
     /*public List<BusCompany> getPageBusCompanys(PageBean pageBean){
    	 return busMapper.getPageBusCompanys(pageBean);
     }*/
     
     @Transactional(propagation=Propagation.SUPPORTS)
    public int getCompanyCount(){
         return busMapper.getCompanyCount();
     }
     @Transactional(propagation=Propagation.SUPPORTS)
     public int getBusCount(){
    	 return busMapper.getBusCount();
     }
    
    /**
     * bus02界面查询某公司具体巴士信息
     * @param company_id
     * @return List<BusMessage>
     */
    @Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
    public  List<BusMessage> getBusMessage(int company_id,Page page){
        return busMapper.getBusMessage(company_id,page);
    }
    
    /**
     * bus02界面查询某公司信息
     * @param company_id
     * @return List<BusCompany>
     */
    @Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
    public  BusCompany getBusCompany2(int company_id){
        return busMapper.getBusCompany2(company_id);
    }
    /**
     * bus03界面查询某公司对应巴士信息
     * @param bus_id
     * @return BusMessage
     */
    @Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
    public BusMessage getBusByID(int bus_id){
		return busMapper.getBusByID(bus_id);
    	
    }
    
    
    
    
    
    
}
