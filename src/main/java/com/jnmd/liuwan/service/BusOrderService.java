package com.jnmd.liuwan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.BusMessage;
import com.jnmd.liuwan.domain.BusOrder;
import com.jnmd.liuwan.domain.Orders;
import com.jnmd.liuwan.mapper.BusOrderMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class BusOrderService {
	@Resource
	private BusOrderMapper  busOrderMapper;
	//生成订单编号
	@Transactional(propagation = Propagation.REQUIRED)
	public void createNewOrderNumber(Orders orders){
		busOrderMapper.createNewOrderNumber(orders);
	}
	
	// 生成新的订单
    @Transactional(propagation = Propagation.REQUIRED)
    public void createNewOrder(BusOrder busOrder) {
    	busOrderMapper.createNewOrder(busOrder);
    }
    
    @Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
    public BusOrder findBusOrderByID(int Obid){
    	return busOrderMapper.findBusOrderByID(Obid);
    }
    
}
