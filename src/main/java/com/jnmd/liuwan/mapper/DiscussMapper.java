package com.jnmd.liuwan.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jnmd.liuwan.domain.Discuss;


@Repository
public interface DiscussMapper {
	public List<Discuss> getHotelDis(Map<String, Integer> map);
	public void addhotelDis(Map<String, Object> map);
	public int getDisNum(int obj);
}
