package com.jnmd.liuwan.domain;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.HOrder;
import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.domain.OidrAndUid;
import com.jnmd.liuwan.service.HotelOrderService;

@Controller
@Scope("prototype")
public class CreateHotelOrderController {

    @Resource
    private HotelOrderService hotelOrderService;

    @RequestMapping("/createHotelOrdertemp")
    public ModelAndView createHotelOrdertemp(int hpid, int hid) {// 接受参数跳转到page03页面(需要参数酒店价格id，酒店id)
        int uid = 1;//从Session中获取，这是临时代码
        System.out.println("hid=" + hid);
        System.out.println("hpid=" + hpid);

        Map<String, Boolean> map = new HashMap<String, Boolean>();
        Hotel hotel = hotelOrderService.findHotelmsgByHid(hid);// 查找酒店信息
        List<Map<String, Object>> housetypeAndprice = hotelOrderService.findhousetypeByhpid(hpid);
        List<String> picPaths = hotelOrderService.findpicPathByhid(hid);
        String picPath = picPaths.get(0);
        if (hotel.getServerDesc().contains("早")) {
            map.put("zao", true);
        }
        if (hotel.getServerDesc().contains("无线")) {
            map.put("wu", true);
        }
        if (hotel.getServerDesc().contains("信")) {
            map.put("xin", true);
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("map", map);
        mv.addObject("hpid", hpid);
        mv.addObject("uid", uid);
        mv.addObject("hotel", hotel);
        mv.addObject("picPath", picPath);
        mv.addObject("housetypeAndprice", housetypeAndprice);
        mv.setViewName("page03");
        return mv;
    }

    @RequestMapping("/createHotelOrder")
    public String createHotelOrder(String per1, String per2, String per3, HOrder ho, int hid, int hpid,
            int uid) {// 进行数据存储工作，并将一些参数传递给下一环节

        OidrAndUid oau = new OidrAndUid(uid);
        hotelOrderService.createNewOrderNumber(oau);// 创建订单编号
        ho.setOid(oau.getOid());// 获取并赋值订单编号
        ho.setHid(hid);// 酒店信息表id
        ho.setHpid(hpid);// 酒店价格表id
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String hoteldate = formatter.format(date);
        ho.setHoteldate(hoteldate);// 下单时间
        String hotelguests = per1;
        if (per2 != null) {
            hotelguests = hotelguests + " " + per2;
            if (per3 != null) {
                hotelguests = hotelguests + " " + per3;
            }
        }
        ho.setHotelguests(hotelguests);// 住客姓名
        hotelOrderService.createNewOrder(ho);
        return "redirect:/HotelOrderPayment?ohid=" + ho.getOhid();
    }

}
