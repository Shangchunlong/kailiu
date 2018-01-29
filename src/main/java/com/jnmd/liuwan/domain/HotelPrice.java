package com.jnmd.liuwan.domain;

import java.util.List;

public class HotelPrice {				//酒店价格类
	private int hpid;					//酒店价格id
	private Province province;			//城市对象
	private HouseType houseType;			//酒店级别对象
	private double price;				//酒店房间价格
	private int area;					//酒店房间面积
	private int floor;					//酒店房间楼层
	private char smoke;					//是否无烟
	private int peomax;					//房间容纳的人数
	private double beforeprice;
	private List<HousePic> housePic;		//酒店图片对象
	
	
	public double getBeforeprice() {
		return beforeprice;
	}
	public void setBeforeprice(double beforeprice) {
		this.beforeprice = beforeprice;
	}
	public int getHpid() {
		return hpid;
	}
	public void setHpid(int hpid) {
		this.hpid = hpid;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public HouseType getHouseType() {
		return houseType;
	}
	public void setHouseType(HouseType houseType) {
		this.houseType = houseType;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public char getSmoke() {
		return smoke;
	}
	public void setSmoke(char smoke) {
		this.smoke = smoke;
	}
	public int getPeomax() {
		return peomax;
	}
	public void setPeomax(int peomax) {
		this.peomax = peomax;
	}
	public List<HousePic> getHousePic() {
		return housePic;
	}
	public void setHousePic(List<HousePic> housePic) {
		this.housePic = housePic;
	}
	public HotelPrice() {
		super();
	}
	
	public HotelPrice(int hpid, Province province, HouseType houseType, double price, int area, int floor, char smoke,
			int peomax, double beforeprice, List<HousePic> housePic) {
		super();
		this.hpid = hpid;
		this.province = province;
		this.houseType = houseType;
		this.price = price;
		this.area = area;
		this.floor = floor;
		this.smoke = smoke;
		this.peomax = peomax;
		this.beforeprice = beforeprice;
		this.housePic = housePic;
	}
	@Override
	public String toString() {
		return "HotelPrice [hpid=" + hpid + ", province=" + province + ", houseType=" + houseType + ", price=" + price
				+ ", area=" + area + ", floor=" + floor + ", smoke=" + smoke + ", peomax=" + peomax + ", housePic="
				+ housePic + "]";
	}
	
	
}
