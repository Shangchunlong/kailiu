package com.jnmd.liuwan.domain;

public class Papers {		//证件类
	private int papersid;		//证件类型id
	private String papersname;	//证件名
	public Papers() {
		super();
	}
	public Papers(int papersid, String papersname) {
		super();
		this.papersid = papersid;
		this.papersname = papersname;
	}
	public int getPapersid() {
		return papersid;
	}
	public void setPapersid(int papersid) {
		this.papersid = papersid;
	}
	public String getPapersname() {
		return papersname;
	}
	public void setPapersname(String papersname) {
		this.papersname = papersname;
	}
	@Override
	public String toString() {
		return "Papers [papersid=" + papersid + ", papersname=" + papersname + "]";
	}
	
}
