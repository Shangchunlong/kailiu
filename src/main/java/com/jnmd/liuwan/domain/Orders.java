package com.jnmd.liuwan.domain;

import java.util.List;

public class Orders {			//订单类
	private int oid;			//用户id
	private int uid;			//订单id
	private List<User> user;			//用户对象
	public Orders() {
		super();
	}
	public Orders(int oid, int uid, List<User> user) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.user = user;
	}
	public Orders(int uid) {
		super();
		this.uid = uid;
	}
	public Orders(int uid, List<User> user) {
		super();
		this.uid = uid;
		this.user = user;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", uid=" + uid + ", user=" + user + "]";
	}
	
	
	
}
