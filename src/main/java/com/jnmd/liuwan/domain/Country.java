package com.jnmd.liuwan.domain;

public class Country {
	private int countrycode;		//国家id
	private String countryname;		//国家名字
	public Country() {
		super();
	}
	public Country(int countrycode, String countryname) {
		super();
		this.countrycode = countrycode;
		this.countryname = countryname;
	}
	public int getCountrycode() {
		return countrycode;
	}
	public void setCountrycode(int countrycode) {
		this.countrycode = countrycode;
	}
	public String getCountryname() {
		return countryname;
	}
	public void setCountryname(String countryname) {
		this.countryname = countryname;
	}
	@Override
	public String toString() {
		return "Country [countrycode=" + countrycode + ", countryname=" + countryname + "]";
	}
	
}
