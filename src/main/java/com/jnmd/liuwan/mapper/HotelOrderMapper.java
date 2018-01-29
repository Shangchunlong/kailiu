package com.jnmd.liuwan.mapper;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;



import com.jnmd.liuwan.domain.HOrder;
import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.OidrAndUid;


@Repository
public interface HotelOrderMapper {
    public Map<String,Object> getHotelOrder(int ohid);
    public void createNewOrderNumber(OidrAndUid oau);
    public void createNewOrder(HOrder horder);
    public Hotel findHotelmsgByHid(int hid);
    public HOrder findOrdermsgByHid(int ohid);
    public List<Map<String, Object>> findhousetypeByhpid(int hpid);
    public List<String> findpicPathByhid(int hid);
}
