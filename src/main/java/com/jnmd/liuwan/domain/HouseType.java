package com.jnmd.liuwan.domain;

public class HouseType {		//酒店房间类型类
	private int houseId;		//酒店房间类型id
	private String houseType;	//房间类型
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public HouseType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HouseType(int houseId, String houseType) {
		super();
		this.houseId = houseId;
		this.houseType = houseType;
	}
	@Override
	public String toString() {
		return "HouseType [houseId=" + houseId + ", houseType=" + houseType + "]";
	}
	
}
