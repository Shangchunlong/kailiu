package com.jnmd.liuwan.service;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.HotelMid;
import com.jnmd.liuwan.domain.HotelPic;
import com.jnmd.liuwan.domain.HotelPrice;
import com.jnmd.liuwan.mapper.HotelMapper;

@Service
public class HotelService {
	@Resource
	private HotelMapper hotelMapper;
	
	public List<Hotel> getHotels(String address,int price,String houseType){
            Map<String,Object> map=new HashMap<>();
            map.put("address", address);
            //获取酒店列表
            List<Hotel> hotels=hotelMapper.getHotels(map);
             for(Hotel hotel:hotels){
            System.out.println("Service:"+hotel);
        }
            map.put("price", price);
            map.put("houseType", houseType);
            
            //iterator遍历时修改遍历的集合，用此方法不会报错
            Iterator<Hotel> it = hotels.iterator();
            while(it.hasNext()){
                Hotel hotel = it.next();
                //添加图片路径
                List<HotelPic> hotelPics=hotelMapper.getHotelPics(hotel.getHid());
                hotel.setHotelPics(hotelPics);
                //获取中间表集合
                map.put("hid", hotel.getHid());
                List<HotelMid> hotelMids=hotelMapper.getHotelMids(map);
                if(hotelMids==null||hotelMids.size()<=0){
                    it.remove();
                }else{
                    hotel.setHotelMids(hotelMids);
                }
            }
          
            return hotels;
        }
	//获取酒店数
	public int getHotelTotalCount(String address,int price,String houseType){
	    Map<String,Object> map=new HashMap<>();
            map.put("address", address);
            map.put("price", price);
            map.put("houseType", houseType);
            
            int total=hotelMapper.getHotelTotalCount(map);
            return total;
	}
	
	//获取房间数
	public int getHouseCount(String address,int price,String houseType){
	    Map<String,Object> map=new HashMap<>();
	    map.put("address", address);
	    map.put("price", price);
	    map.put("houseType", houseType);
	    
	    int total=hotelMapper.getHouseCount(map);
	    return total;
	}

	public List<HotelPrice> getHotelMsg(int hid) {
		return hotelMapper.getHotelMsg(hid);
	}
	
	public List<Hotel> getRecommendHotels(){
		return hotelMapper.getRecommendHotels();
	}
	
	public Hotel getHotel(int hid) {
		return hotelMapper.getHotel(hid);
	}
	    
	
}
