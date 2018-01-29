package com.jnmd.liuwan.domain;

import java.util.List;

public class BusCompany {
	private int company_id;
	private int cid;
	private String company_name;
	private String company_add;
	private String company_msg;
	private String company_pic;
	
	private List<BusMessage> company_bus_message;
	
	public BusCompany() {
		super();
	}
	public BusCompany(int cid, String company_name, String company_add, String company_msg, String company_pic,List<BusMessage> company_bus_message) {
		super();
		this.cid = cid;
		this.company_name = company_name;
		this.company_add = company_add;
		this.company_msg = company_msg;
		this.company_pic = company_pic;
		this.company_bus_message=company_bus_message;
	}
	public BusCompany(int company_id, int cid, String company_name, String company_add, String company_msg,
			String company_pic,List<BusMessage> company_bus_message) {
		super();
		this.company_id = company_id;
		this.cid = cid;
		this.company_name = company_name;
		this.company_add = company_add;
		this.company_msg = company_msg;
		this.company_pic = company_pic;
		this.company_bus_message=company_bus_message;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_add() {
		return company_add;
	}
	public void setCompany_add(String company_add) {
		this.company_add = company_add;
	}
	public String getCompany_msg() {
		return company_msg;
	}
	public void setCompany_msg(String company_msg) {
		this.company_msg = company_msg;
	}
	public String getCompany_pic() {
		return company_pic;
	}
	public void setCompany_pic(String company_pic) {
		this.company_pic = company_pic;
	}
	public List<BusMessage> getCompany_bus_message() {
                return company_bus_message;
	}
        public void setCompany_bus_message(List<BusMessage> company_bus_message) {
                this.company_bus_message = company_bus_message;
        }
        @Override
        public String toString() {
            return "BusCompany [company_id=" + company_id + ", cid=" + cid + ", company_name=" + company_name
                    + ", company_add=" + company_add + ", company_msg=" + company_msg + ", company_pic="
                    + company_pic + ", company_bus_message=" + company_bus_message + "]";
        }
        
	
}
