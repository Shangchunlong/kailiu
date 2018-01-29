package com.jnmd.liuwan.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.liuwan.domain.HOrder;
import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.OidrAndUid;
import com.jnmd.liuwan.mapper.HotelOrderMapper;


@Service
@Transactional(propagation=Propagation.REQUIRED)
public class HotelOrderService {
	@Resource
	private HotelOrderMapper hotelOrderMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	public Map<String,Object> getHotelOrder(int ohid){
		return hotelOrderMapper.getHotelOrder(ohid);
	}
	
    // 生成新的订单编号
    @Transactional(propagation = Propagation.REQUIRED)
    public void createNewOrderNumber(OidrAndUid oau) {
        hotelOrderMapper.createNewOrderNumber(oau);
    }

    // 生成新的订单
    @Transactional(propagation = Propagation.REQUIRED)
    public void createNewOrder(HOrder horder) {
        hotelOrderMapper.createNewOrder(horder);
    }
    
    //查询相关的酒店信息
    @Transactional(propagation = Propagation.REQUIRED)
    public Hotel findHotelmsgByHid(int hid){
        return hotelOrderMapper.findHotelmsgByHid(hid);
    }
    //查询酒店中相关的房间类型信息
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Map<String, Object>> findhousetypeByhpid(int hpid){
        return hotelOrderMapper.findhousetypeByhpid(hpid);
    }
    //查询酒店的图片路径
    @Transactional(propagation = Propagation.REQUIRED)
    public List<String> findpicPathByhid(int hid){
        return hotelOrderMapper.findpicPathByhid(hid);
    }
    
    //根据hid查询相关的订单信息
    @Transactional(propagation = Propagation.REQUIRED)
    public HOrder findOrdermsgByHid(int ohid){
        return hotelOrderMapper.findOrdermsgByHid(ohid);
    }
}
