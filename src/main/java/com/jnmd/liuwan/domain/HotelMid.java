package com.jnmd.liuwan.domain;

import java.util.List;

public class HotelMid {			//价格中间类
	private int mid;			//价格中间表id
	private List<HotelPrice> hotelPrice;	//酒店价格对象的集合
	private Hotel hotel;		//酒店对象
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public List<HotelPrice> getHotelPrice() {
		return hotelPrice;
	}
	public void setHotelPrice(List<HotelPrice> hotelPrice) {
		this.hotelPrice = hotelPrice;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public HotelMid() {
		super();
	}
	public HotelMid(int mid, List<HotelPrice> hotelPrice, Hotel hotel) {
		super();
		this.mid = mid;
		this.hotelPrice = hotelPrice;
		this.hotel = hotel;
	}
	@Override
	public String toString() {
		return "HotelMid [mid=" + mid + ", hotelPrice=" + hotelPrice + ", hotel=" + hotel + "]";
	}
	
}
