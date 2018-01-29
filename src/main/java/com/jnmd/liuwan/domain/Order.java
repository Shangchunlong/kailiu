package com.jnmd.liuwan.domain;

import java.util.List;

public class Order {			//订单类
	private int oid;			//订单id
	private List<User> user;			//用户对象
	public Order() {
		super();
	}
	public Order(int oid, List<User> user) {
		super();
		this.oid = oid;
		this.user = user;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", user=" + user + "]";
	}
	
}
