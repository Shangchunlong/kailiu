package com.jnmd.liuwan.mapper.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.BusMessage;




@Repository
public interface BusMessageMapper {
	/**
	* 保存巴士信息
	*
	* @param busmessage
	* 		BusMessage
	*
	*/
	public void saveBusmessage(BusMessage busmessage);
	/**
	* 查询巴士信息
	*
	* @param busmessage
	* 		BusMessage
	*
	*/
	public List<BusMessage> getBusMessage();
	/**
	* 删除巴士信息
	*
	* @param id
	* 		int
	*
	*/
	public void delBusMessage(int bus_id);
	
	
	public void updateBusMessage(BusMessage busmessage);
	
	public BusMessage getBusMessageId(int bus_id);
	
	
	
	
	
	
}
