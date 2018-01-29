package com.jnmd.liuwan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.BusCompany;
import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.exception.BusMessageException;
import com.jnmd.liuwan.mapper.admin.BusMessageMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class AdminBusService {
    
    @Resource
    private BusMessageMapper busMessageMapper;
   
    
    /*增加巴士信息*/
    @Transactional(rollbackFor=BusMessageException.class)
    public void saveBusmessage(BusMessage busmessage){
    	 busMessageMapper.saveBusmessage(busmessage);
    	 System.out.println("Service busmessage="+busmessage);
    }
    
    /*查询巴士信息*/
    @Transactional(propagation=Propagation.SUPPORTS)
    public List<BusMessage> getBusmessage(){
    	return busMessageMapper.getBusMessage();
    }
    /*删除巴士信息*/
    @Transactional(rollbackFor=BusMessageException.class)
    public void delBusMessage(int bus_id){
    	busMessageMapper.delBusMessage(bus_id);
    }
    
    /*更新巴士信息*/
    @Transactional(rollbackFor=BusMessageException.class)
    public void updateBusMessage(BusMessage Busmessage){
    	busMessageMapper.updateBusMessage(Busmessage);
		
    }

	public BusMessage getBusMessageId(int bus_id) {
		return busMessageMapper.getBusMessageId(bus_id);
		
	}

	
    
    
    
 /*   public void updateBusMessage(int bus_id){
    	busMessageMapper.updateBusMessage(bus_id);
    }*/
    
    
    
    
}
