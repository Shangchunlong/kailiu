package com.jnmd.liuwan.domain;

public class Discuss {
	private int did;
	private User user;
	private int obj;
	private String dis_content;
	private String dis_date;
	private int flag;

	public Discuss() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Discuss(int did, User user, int obj, String dis_content, String dis_date, int flag) {
		super();
		this.did = did;
		this.user = user;
		this.obj = obj;
		this.dis_content = dis_content;
		this.dis_date = dis_date;
		this.flag = flag;
	}

	public Discuss(User user, int obj, String dis_content, String dis_date, int flag) {
		super();
		this.user = user;
		this.obj = obj;
		this.dis_content = dis_content;
		this.dis_date = dis_date;
		this.flag = flag;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getObj() {
		return obj;
	}

	public void setObj(int obj) {
		this.obj = obj;
	}

	public String getDis_content() {
		return dis_content;
	}

	public void setDis_content(String dis_content) {
		this.dis_content = dis_content;
	}

	public String getDis_date() {
		return dis_date;
	}

	public void setDis_date(String dis_date) {
		this.dis_date = dis_date;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "dis_content:" + dis_content+", User:"+user+", time:"+dis_date;
	}

}
