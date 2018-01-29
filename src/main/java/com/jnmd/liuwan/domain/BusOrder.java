package com.jnmd.liuwan.domain;


public class BusOrder {
    private int obid;       //订单表id
    private int oid;
    private int bus_id;
    private String orderdate; //订单日期
    private String phone; 
    private String ordernum; 
    private String usename; 
    private String persons; 
    private BusMessage busMessage;
	public BusOrder() {
		super();
	}

	public BusOrder(int obid, int oid, int bus_id, String orderdate, String phone, String ordernum, String usename,
			String persons,BusMessage busMessage) {
		super();
		this.obid = obid;
		this.oid = oid;
		this.bus_id = bus_id;
		this.orderdate = orderdate;
		this.phone = phone;
		this.ordernum = ordernum;
		this.usename = usename;
		this.persons = persons;
		this.busMessage = busMessage;
	}

	public BusOrder(int oid, int bus_id, String orderdate, String phone, String ordernum, String usename, String persons,BusMessage busMessage) {
		super();
		this.oid = oid;
		this.bus_id = bus_id;
		this.orderdate = orderdate;
		this.phone = phone;
		this.ordernum = ordernum;
		this.usename = usename;
		this.persons = persons;
		this.busMessage = busMessage;
	}

	public int getObid() {
		return obid;
	}

	public void setObid(int obid) {
		this.obid = obid;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getBus_id() {
		return bus_id;
	}

	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}

	

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

	public String getUsename() {
		return usename;
	}

	public void setUsename(String usename) {
		this.usename = usename;
	}

	public String getPersons() {
		return persons;
	}

	public void setPersons(String persons) {
		this.persons = persons;
	}
	
	public BusMessage getBusMessage() {
		return busMessage;
	}

	public void setBusMessage(BusMessage busMessage) {
		this.busMessage = busMessage;
	}

	@Override
	public String toString() {
		return "BusOrder [obid=" + obid + ", oid=" + oid + ", bus_id=" + bus_id + ", busdate=" + orderdate + ", phone="
				+ phone + ", ordernum=" + ordernum + ", usename=" + usename + ", persons=" + persons + ", busMessage="
				+ busMessage + "]";
	}

	

	
    
}
