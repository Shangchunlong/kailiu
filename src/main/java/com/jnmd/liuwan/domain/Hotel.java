package com.jnmd.liuwan.domain;

import java.util.List;

public class Hotel {			//酒店信息类
    private int hid; // 酒店id

    private String name; // 酒店名称

    private String contact; // 酒店的联系方式

    private String address; // 酒店地址

    private String detailsaddress;

    private String feature; // 酒店的特色描述

    private int level; // 酒店级别

    private String serverDesc; // 酒店包含的服务

    private List<HotelMid> hotelMids; // 酒店价格中间表

    private List<HotelPic> hotelPics; // 酒店图片

    private String intime;

    private String outtime;

    public Hotel() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Hotel(String name, String contact, String address, String detailsaddress, String feature,
            int level, String serverDesc, List<HotelMid> hotelMids, List<HotelPic> hotelPics, String intime,
            String outtime) {
        super();
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.detailsaddress = detailsaddress;
        this.feature = feature;
        this.level = level;
        this.serverDesc = serverDesc;
        this.hotelMids = hotelMids;
        this.hotelPics = hotelPics;
        this.intime = intime;
        this.outtime = outtime;
    }

    public Hotel(int hid, String name, String contact, String address, String detailsaddress, String feature,
            int level, String serverDesc, List<HotelMid> hotelMids, List<HotelPic> hotelPics, String intime,
            String outtime) {
        super();
        this.hid = hid;
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.detailsaddress = detailsaddress;
        this.feature = feature;
        this.level = level;
        this.serverDesc = serverDesc;
        this.hotelMids = hotelMids;
        this.hotelPics = hotelPics;
        this.intime = intime;
        this.outtime = outtime;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetailsaddress() {
        return detailsaddress;
    }

    public void setDetailsaddress(String detailsaddress) {
        this.detailsaddress = detailsaddress;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getServerDesc() {
        return serverDesc;
    }

    public void setServerDesc(String serverDesc) {
        this.serverDesc = serverDesc;
    }

    public List<HotelMid> getHotelMids() {
        return hotelMids;
    }

    public void setHotelMids(List<HotelMid> hotelMids) {
        this.hotelMids = hotelMids;
    }

    public List<HotelPic> getHotelPics() {
        return hotelPics;
    }

    public void setHotelPics(List<HotelPic> hotelPics) {
        this.hotelPics = hotelPics;
    }

    public String getIntime() {
        return intime;
    }

    public void setIntime(String intime) {
        this.intime = intime;
    }

    public String getOuttime() {
        return outtime;
    }

    public void setOuttime(String outtime) {
        this.outtime = outtime;
    }

    @Override
    public String toString() {
        return "Hotel [hid=" + hid + ", name=" + name + ", contact=" + contact + ", address=" + address
                + ", detailsaddress=" + detailsaddress + ", feature=" + feature + ", level=" + level
                + ", serverDesc=" + serverDesc + ", hotelMids=" + hotelMids + ", hotelPics=" + hotelPics
                + ", intime=" + intime + ", outtime=" + outtime + "]";
    }
    
	
}
				
	