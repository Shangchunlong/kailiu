package com.jnmd.liuwan.controller.user;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.service.HotelOrderService;

@Controller
@Scope("prototype")
public class HotelOrderController {

    @Resource
    private HotelOrderService hotelOrderService;

    @RequestMapping("/finshController")
    public ModelAndView jinru(int ohid) {
        Map<String, Object> hotelOrder = hotelOrderService.getHotelOrder(ohid);
        int hid = (int) hotelOrder.get("hid");
        int hpid = (int) hotelOrder.get("hpid");
        List<Map<String, Object>> housetypeAndprice = hotelOrderService.findhousetypeByhpid(hpid);
        List<String> picPaths = hotelOrderService.findpicPathByhid(hid);
        String picPath = picPaths.get(0);
        Hotel hotel = hotelOrderService.findHotelmsgByHid(hid);

        if (hotel.getServerDesc().contains("早")) {
            hotelOrder.put("zao", true);
        }
        if (hotel.getServerDesc().contains("无")) {
            hotelOrder.put("wu", true);
        }
        if (hotel.getServerDesc().contains("信用卡")) {
            hotelOrder.put("xin", true);
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        Date date = null;
        try {
            date = (Date) hotelOrder.get("hoteldate");
        } catch (Exception e) {
            e.printStackTrace();
        }

        calendar.setTime(date);
        
        calendar.set(calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY)+3 );
        String time = sdf.format(calendar.getTime());

        // 入住的时间
        int i = (int) hotelOrder.get("omoney");
        int b = (int) hotelOrder.get("hotelsum");
        double c = (double) housetypeAndprice.get(0).get("price");

        int day = (int) (i / c / b);
        hotelOrder.put("day", day);
        hotelOrder.put("time", time);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("page05");
        mv.addObject("hotel", hotel);
        mv.addObject("picPath", picPath);
        mv.addObject("housetypeAndprice", housetypeAndprice);
        mv.addObject("hotelOrder", hotelOrder);
        return mv;
    }

}
