package com.jnmd.liuwan.domain;

public class City {
		private int cityid;
		private String cityname;
		public City() {
			super();
		}
		public City(String cityname) {
			super();
			this.cityname = cityname;
		}
		public City(int cityid, String cityname) {
			super();
			this.cityid = cityid;
			this.cityname = cityname;
		}
		public int getCityid() {
			return cityid;
		}
		public void setCityid(int cityid) {
			this.cityid = cityid;
		}
		public String getCityname() {
			return cityname;
		}
		public void setCityname(String cityname) {
			this.cityname = cityname;
		}
		@Override
		public String toString() {
			return "City [cityid=" + cityid + ", cityname=" + cityname + "]";
		}
		
}
