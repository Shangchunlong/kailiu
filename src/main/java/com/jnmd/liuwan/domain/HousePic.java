package com.jnmd.liuwan.domain;

public class HousePic {			//房间图片类
	private int hpid;			//房间图片id
	private String picPath;		//房间图片路径
	private HotelPrice hotelPrice;		//房间价格对象
	public int getHpid() {
		return hpid;
	}
	public void setHpid(int hpid) {
		this.hpid = hpid;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	
	public HotelPrice getHotelPrice() {
		return hotelPrice;
	}
	public void setHotelPrice(HotelPrice hotelPrice) {
		this.hotelPrice = hotelPrice;
	}
	public HousePic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HousePic(int hpid, String picPath, HotelPrice hotelPrice) {
		super();
		this.hpid = hpid;
		this.picPath = picPath;
		this.hotelPrice = hotelPrice;
	}
	@Override
	public String toString() {
		return "HousePic [hpid=" + hpid + ", picPath=" + picPath + ", housePrice=" + hotelPrice + "]";
	}
	
}
