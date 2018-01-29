package com.jnmd.liuwan.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.Discuss;
import com.jnmd.liuwan.exception.DiscussException;
import com.jnmd.liuwan.mapper.DiscussMapper;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class DiscussService {
	@Resource
	private DiscussMapper discussMapper;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Discuss> getHotelDis(Map<String, Integer> map){
		return discussMapper.getHotelDis(map);
	}
	
	@Transactional(rollbackFor=DiscussException.class)
	public void addhotelDis(Map<String, Object> map) {
		discussMapper.addhotelDis(map);
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int getDisNum(int obj) {//获取评论数量
		return discussMapper.getDisNum(obj);
	}
}
