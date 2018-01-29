package com.jnmd.liuwan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.BusOrder;
import com.jnmd.liuwan.mapper.OrderSucMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class OrderSucService {
	@Resource
	public OrderSucMapper orderSucMapper;
	
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
	public BusOrder getBusOrderByID(int obid){
		return orderSucMapper.getBusOrderByID(obid);
	}
}
