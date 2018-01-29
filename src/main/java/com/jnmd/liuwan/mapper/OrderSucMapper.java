package com.jnmd.liuwan.mapper;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.BusOrder;

@Repository
public interface OrderSucMapper {
	public BusOrder getBusOrderByID(int obid);
}
