package com.jnmd.liuwan.domain;

public class HotelPic {		//酒店图片类
	private int pid;     //酒店图片id
	private String picPath;  //酒店图片路径
	private Hotel hotel;   //酒店对象
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public HotelPic() {
		super();
	}
	public HotelPic(int pid, String picPath, Hotel hotel) {
		super();
		this.pid = pid;
		this.picPath = picPath;
		this.hotel = hotel;
	}
	@Override
	public String toString() {
		return "HotelPic [pid=" + pid + ", picPath=" + picPath + ", hotel=" + hotel + "]";
	}
	
}
