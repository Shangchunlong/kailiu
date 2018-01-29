package com.jnmd.liuwan.domain;

public class OidrAndUid {
    private int oid;
    private int uid;
    public OidrAndUid() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public OidrAndUid(int uid) {
        super();
        this.uid = uid;
    }

    public OidrAndUid(int oid, int uid) {
        super();
        this.oid = oid;
        this.uid = uid;
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

    @Override
    public String toString() {
        return "OidrAndUid [oid=" + oid + ", uid=" + uid + "]";
    }
    
    
}
