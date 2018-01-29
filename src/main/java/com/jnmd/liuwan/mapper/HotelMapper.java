package com.jnmd.liuwan.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import java.util.List;

import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.HotelMid;
import com.jnmd.liuwan.domain.HotelPic;
import com.jnmd.liuwan.domain.HotelPrice;


@Repository
public interface HotelMapper {
	public Hotel getHotel(int hid);
  	public List<HotelPrice>  getHotelMsg(int hid);
  	public List<Hotel> getRecommendHotels();
  	
  	
    public List<Hotel> getHotels(Map<String,Object> map);
    public List<HotelPic> getHotelPics(int hid);
    public List<HotelMid> getHotelMids(Map<String,Object> map);
    //获取符合条件的所有酒店的集合，以获取酒店总条数
    public int getHotelTotalCount(Map<String,Object> map);
    //获取符合条件的所有房间总条数
    public int getHouseCount(Map<String,Object> map);
}
