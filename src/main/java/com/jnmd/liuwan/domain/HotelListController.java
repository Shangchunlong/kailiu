package com.jnmd.liuwan.domain;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.service.HotelService;

@Controller
@Scope("prototype")
public class HotelListController {
    @Resource
    private HotelService hotelService;
    
    //json数据取得动态的HTML页面
    @RequestMapping("page01")
    public ModelAndView pageController() throws ServletException, IOException{
        ModelAndView mv=new ModelAndView();
        mv.setViewName("page01");
        return mv;
    }
    
    //返回hotel的json形式的数据
    @RequestMapping("getHotelJson")
    @ResponseBody
    public Map<String,Object> getHotelJson(HttpServletRequest request){
        //获取前台传过来的字段
        String address=request.getParameter("address");
        int price=Integer.parseInt(request.getParameter("price"));
        String houseType=request.getParameter("houseType");
        //调用service的方法，并将参数传入
        List<Hotel> hotels=hotelService.getHotels(address,price,houseType);
        //获取页码
        int pageNum=Integer.parseInt(request.getParameter("pageNum"));
        //返回每页所需展示的酒店信息（包含房间信息）
        List<Hotel> returnHotels=new ArrayList<>();
        if(hotels.size()-(pageNum-1)*3>=3){
            returnHotels.add(hotels.get((pageNum-1)*3));
            returnHotels.add(hotels.get((pageNum-1)*3+1));
            returnHotels.add(hotels.get((pageNum-1)*3+2));
        }else{
            for(int i=(pageNum-1)*3;i<hotels.size();i++){
                returnHotels.add(hotels.get(i));
            }
        }
        //获取总条数
        int totalSize=hotelService.getHotelTotalCount(address, price, houseType);
        //获取总页数
        int totalPage=0;
        if(totalSize%3==0){
            totalPage=totalSize/3;
        }else{
            totalPage=totalSize/3+1;
        }
        //获取酒店数量
        int houseCount=hotelService.getHouseCount(address, price, houseType);
        //返回map值
        Map<String,Object> map=new HashMap<>();
        map.put("houseCount", houseCount);
        map.put("totalSize", totalSize);
        map.put("totalPage", totalPage);
        map.put("returnHotels", returnHotels);
        
        return map;
    }
    

}
