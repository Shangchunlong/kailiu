package com.jnmd.liuwan.domain;

public class BusMessage {
    private int bus_id;
    private int pid;
    private String bustypename;
    private String bus_num;
    private String bus_pic;
    private String bus_peoplenum;
    private String bus_scenic;
    private int bus_discount;
    private int bus_price;
    private int company_id;
    private String start_add;
    private String end_add;
    
    
    private BusCompany buscompany;


    public BusMessage() {
        super();
    }


    public BusMessage(int bus_id, int pid, String bustypename, String bus_pic,String bus_num, String bus_scenic,String bus_peoplenum,
            int bus_discount,int bus_price, int company_id, String start_add, String end_add, BusCompany buscompany) {
        super();
        this.bus_id = bus_id;
        this.pid = pid;
        this.bustypename = bustypename;
        this.bus_num = bus_num;
        this.bus_pic=bus_pic;
        this.bus_peoplenum = bus_peoplenum;
        this.bus_scenic=bus_scenic;
        this.bus_discount=bus_discount;
        this.bus_price = bus_price;
        this.company_id = company_id;
        this.start_add = start_add;
        this.end_add = end_add;
        this.buscompany = buscompany;
    }


    public int getBus_id() {
        return bus_id;
    }


    public void setBus_id(int bus_id) {
        this.bus_id = bus_id;
    }


    public int getPid() {
        return pid;
    }


    public void setPid(int pid) {
        this.pid = pid;
    }


    public String getBustypename() {
        return bustypename;
    }


    public void setBustypename(String bustypename) {
        this.bustypename = bustypename;
    }


    public String getBus_num() {
        return bus_num;
    }


    public void setBus_num(String bus_num) {
        this.bus_num = bus_num;
    }


    public String getBus_peoplenum() {
        return bus_peoplenum;
    }


    public void setBus_peoplenum(String bus_peoplenum) {
        this.bus_peoplenum = bus_peoplenum;
    }


    public String getBus_scenic() {
        return bus_scenic;
    }


    public void setBus_scenic(String bus_scenic) {
        this.bus_scenic = bus_scenic;
    }


    public int getBus_price() {
        return bus_price;
    }
    

    public int getBus_discount() {
        return bus_discount;
    }


    public void setBus_discount(int bus_discount) {
        this.bus_discount = bus_discount;
    }


    public void setBus_price(int bus_price) {
        this.bus_price = bus_price;
    }


    public int getCompany_id() {
        return company_id;
    }


    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }


    

    public String getStart_add() {
		return start_add;
	}


	public void setStart_add(String start_add) {
		this.start_add = start_add;
	}


	public String getEnd_add() {
		return end_add;
	}


	public void setEnd_add(String end_add) {
		this.end_add = end_add;
	}


	public BusCompany getBuscompany() {
        return buscompany;
    }


    public void setBuscompany(BusCompany buscompany) {
        this.buscompany = buscompany;
    }


    public String getBus_pic() {
        return bus_pic;
    }


    public void setBus_pic(String bus_pic) {
        this.bus_pic = bus_pic;
    }


	@Override
	public String toString() {
		return "BusMessage [bus_id=" + bus_id + ", pid=" + pid + ", bustypename=" + bustypename + ", bus_num=" + bus_num
				+ ", bus_pic=" + bus_pic + ", bus_peoplenum=" + bus_peoplenum + ", bus_scenic=" + bus_scenic
				+ ", bus_discount=" + bus_discount + ", bus_price=" + bus_price + ", company_id=" + company_id
				+ ", start_add=" + start_add + ", end_add=" + end_add + ", buscompany=" + buscompany + "]";
	}


   
    
    
}
