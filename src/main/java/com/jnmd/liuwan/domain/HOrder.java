package com.jnmd.liuwan.domain;


public class HOrder {
    private Integer ohid;
    private Integer oid;
    private Integer hid;
    private Integer hpid;
    private String hoteldate;
    private String begindate;
    private String enddate;
    private Integer hotelsum;
    private String hotelguests;
    private String countryphone;
    private String phonenumber;
    private String Email;
    private String lasttime;
    private String billtype;
    private String billhead;
    private Integer omoney;
    public HOrder() {
        super();
        // TODO Auto-generated constructor stub
    }
    public HOrder(Integer oid, Integer hid, Integer hpid, String hoteldate, String begindate, String enddate,
            Integer hotelsum, String hotelguests, String countryphone, String phonenumber, String email,
            String lasttime, String billtype, String billhead, Integer omoney) {
        super();
        this.oid = oid;
        this.hid = hid;
        this.hpid = hpid;
        this.hoteldate = hoteldate;
        this.begindate = begindate;
        this.enddate = enddate;
        this.hotelsum = hotelsum;
        this.hotelguests = hotelguests;
        this.countryphone = countryphone;
        this.phonenumber = phonenumber;
        Email = email;
        this.lasttime = lasttime;
        this.billtype = billtype;
        this.billhead = billhead;
        this.omoney = omoney;
    }
    public HOrder(Integer ohid, Integer oid, Integer hid, Integer hpid, String hoteldate, String begindate,
            String enddate, Integer hotelsum, String hotelguests, String countryphone, String phonenumber,
            String email, String lasttime, String billtype, String billhead, Integer omoney) {
        super();
        this.ohid = ohid;
        this.oid = oid;
        this.hid = hid;
        this.hpid = hpid;
        this.hoteldate = hoteldate;
        this.begindate = begindate;
        this.enddate = enddate;
        this.hotelsum = hotelsum;
        this.hotelguests = hotelguests;
        this.countryphone = countryphone;
        this.phonenumber = phonenumber;
        Email = email;
        this.lasttime = lasttime;
        this.billtype = billtype;
        this.billhead = billhead;
        this.omoney = omoney;
    }
    public Integer getOhid() {
        return ohid;
    }
    public void setOhid(Integer ohid) {
        this.ohid = ohid;
    }
    public Integer getOid() {
        return oid;
    }
    public void setOid(Integer oid) {
        this.oid = oid;
    }
    public Integer getHid() {
        return hid;
    }
    public void setHid(Integer hid) {
        this.hid = hid;
    }
    public Integer getHpid() {
        return hpid;
    }
    public void setHpid(Integer hpid) {
        this.hpid = hpid;
    }
    public String getHoteldate() {
        return hoteldate;
    }
    public void setHoteldate(String hoteldate) {
        this.hoteldate = hoteldate;
    }
    public String getBegindate() {
        return begindate;
    }
    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }
    public String getEnddate() {
        return enddate;
    }
    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }
    public Integer getHotelsum() {
        return hotelsum;
    }
    public void setHotelsum(Integer hotelsum) {
        this.hotelsum = hotelsum;
    }
    public String getHotelguests() {
        return hotelguests;
    }
    public void setHotelguests(String hotelguests) {
        this.hotelguests = hotelguests;
    }
    public String getCountryphone() {
        return countryphone;
    }
    public void setCountryphone(String countryphone) {
        this.countryphone = countryphone;
    }
    public String getPhonenumber() {
        return phonenumber;
    }
    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
    public String getEmail() {
        return Email;
    }
    public void setEmail(String email) {
        Email = email;
    }
    public String getLasttime() {
        return lasttime;
    }
    public void setLasttime(String lasttime) {
        this.lasttime = lasttime;
    }
    public String getBilltype() {
        return billtype;
    }
    public void setBilltype(String billtype) {
        this.billtype = billtype;
    }
    public String getBillhead() {
        return billhead;
    }
    public void setBillhead(String billhead) {
        this.billhead = billhead;
    }
    public Integer getOmoney() {
        return omoney;
    }
    public void setOmoney(Integer omoney) {
        this.omoney = omoney;
    }
    @Override
    public String toString() {
        return "HOrder [ohid=" + ohid + ", oid=" + oid + ", hid=" + hid + ", hpid=" + hpid + ", hoteldate="
                + hoteldate + ", begindate=" + begindate + ", enddate=" + enddate + ", hotelsum=" + hotelsum
                + ", hotelguests=" + hotelguests + ", countryphone=" + countryphone + ", phonenumber="
                + phonenumber + ", Email=" + Email + ", lasttime=" + lasttime + ", billtype=" + billtype
                + ", billhead=" + billhead + ", omoney=" + omoney + "]";
    }
   
    
    
}
