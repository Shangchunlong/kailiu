package com.jnmd.liuwan.controller.user;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.service.HotelOrderService;

@Controller
@Scope("prototype")
public class HotelOrderDetailsController {
    @Resource
    private HotelOrderService hotelOrderService;

    @RequestMapping("/detailsController")
    public ModelAndView detail(HttpServletRequest request, HttpServletResponse response) {

        int ohid = Integer.parseInt(request.getParameter("ohid"));
        Map<String, Object> hotelOrder = hotelOrderService.getHotelOrder(ohid);
        int hid = (int) hotelOrder.get("hid");
        int hpid = (int) hotelOrder.get("hpid");
        Hotel hotel = hotelOrderService.findHotelmsgByHid(hid);
        List<Map<String, Object>> housetypeAndprice = hotelOrderService.findhousetypeByhpid(hpid);
        List<String> picPaths = hotelOrderService.findpicPathByhid(hid);
        String picPath = picPaths.get(0);
        System.out.println("157896494641");
        System.out.println(picPath);

        if (hotel.getServerDesc().contains("早")) {
            hotelOrder.put("zao", true);
        }
        if (hotel.getServerDesc().contains("无")) {
            hotelOrder.put("wu", true);
        }
        if (hotel.getServerDesc().contains("信用卡")) {
            hotelOrder.put("xin", true);
        }

        String[] names = ((String) hotelOrder.get("hotelguests")).split(" ");

        // 入住的时间
        int i = (int) hotelOrder.get("omoney");
        int b = (int) hotelOrder.get("hotelsum");
        double c = (double) housetypeAndprice.get(0).get("price");

        int day = (int) (i / c / b);

        hotelOrder.put("day", day);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("detailHotelOrder");
        mv.addObject("hotel", hotel);
        mv.addObject("picPath", picPath);
        mv.addObject("housetypeAndprice", housetypeAndprice);
        mv.addObject("hotelOrder", hotelOrder);
        mv.addObject("names", names);
        return mv;
    }

}
