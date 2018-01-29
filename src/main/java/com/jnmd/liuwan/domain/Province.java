package com.jnmd.liuwan.domain;

public class Province {   //城市类
    private int cityId;
    private String cityName;
    
    
    public Province() {
        super();
    }

    public Province(String cityName) {
        super();
        this.cityName = cityName;
    }

    public Province(int cityId, String cityName) {
        super();
        this.cityId = cityId;
        this.cityName = cityName;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    @Override
    public String toString() {
        return "Province [cityId=" + cityId + ", cityName=" + cityName + "]";
    }
    
    
}
