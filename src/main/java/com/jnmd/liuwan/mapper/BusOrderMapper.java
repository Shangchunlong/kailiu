package com.jnmd.liuwan.mapper;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.BusOrder;
import com.jnmd.liuwan.domain.Orders;


@Repository
public interface BusOrderMapper {

	public void createNewOrder(BusOrder busOrder);
	//生成订单编号
	public void createNewOrderNumber(Orders orders);
	
	//订单信息
	public  BusOrder findBusOrderByID(int obid);
}
