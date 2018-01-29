package com.jnmd.liuwan.domain;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.jnmd.liuwan.domain.HOrder;
import com.jnmd.liuwan.domain.Hotel;
import com.jnmd.liuwan.service.HotelOrderService;
import com.jnmd.liuwan.utils.PaymentUtil;


@Controller
@Scope("prototype")
public class HotelRecommendController {
    @Resource
    private HotelOrderService hotelOrderService;
    @RequestMapping("HotelOrderPayment")
    public ModelAndView HotelOrderPayment(int ohid){//接受上一环节的一些数据，做下一步的操作
        HOrder horder = hotelOrderService.findOrdermsgByHid(ohid);
        Hotel hotel = hotelOrderService.findHotelmsgByHid(horder.getHid());
        List<Map<String, Object>> housetypeAndprice = hotelOrderService.findhousetypeByhpid(horder.getHpid());
        ModelAndView mv = new ModelAndView();
        String phone = horder.getPhonenumber();
        String phone1 = "";
        for(int i = 0; i < phone.length(); i++){
            if(i >= 3 && i <= 6){
                phone1 = phone1 + "*";
            }else{
                
                phone1 = phone1 + phone.charAt(i);
            }
        }
        horder.setPhonenumber(phone1);
        mv.addObject("horder", horder);
        mv.addObject("hotel", hotel);
        mv.addObject("housetypeAndprice", housetypeAndprice);
        mv.setViewName("page04");
        return mv;
    }
    
    @RequestMapping("createQRCode")  //生成二维码
    public void createQRCode(int ohid, HttpServletResponse response) {  
        HOrder horder = hotelOrderService.findOrdermsgByHid(ohid);
        Hotel hotel = hotelOrderService.findHotelmsgByHid(horder.getHid());
        List<Map<String, Object>> housetypeAndprice = hotelOrderService.findhousetypeByhpid(horder.getHpid());
        //生成订单  
        // String orderInfo = createOrderInfo(orderId);  
        //调统一下单API  
        //String code_url = httpOrder(orderInfo);  
        String code_url = "订单号："+ohid+"\n订单金额：￥"+horder.getOmoney()+"\n您的选择："+hotel.getName()+","+housetypeAndprice.get(0).get("houseType")+","+horder.getHotelsum()+"间\n入住日期"+horder.getBegindate();  
        //将返回预支付交易链接（code_url）生成二维码图片  
        //这里使用的是zxing   <span style="color:#ff0000;"><strong>说明1(见文末)</strong></span>  
        try {  
            int width = 400;  
            int height = 400;  
            String format = "png";  
            Hashtable hints = new Hashtable();  
            hints.put(EncodeHintType.CHARACTER_SET, "utf-8");  
            BitMatrix bitMatrix = new MultiFormatWriter().encode(code_url, BarcodeFormat.QR_CODE, width, height, hints);  
            OutputStream out = null;  
            out = response.getOutputStream();  
            MatrixToImageWriter.writeToStream(bitMatrix, format, out);
            out.flush();  
            out.close();  
        } catch (Exception e) {  
        
        }  
      
    }  
    @RequestMapping("PayOrder")//使用第三方支付 易宝进行支付
    public ModelAndView PayOrder(HttpServletRequest request, HttpServletResponse response){
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String ordernum=request.getParameter("ordernum");
        String money=request.getParameter("money");
        String pd_FrpId=request.getParameter("pd_FrpId");
        
        
        
        String p0_Cmd = "Buy";//业务类型
        String p1_MerId = "10001126856";//商户编号
        String p2_Order = "201608080000006";//商户订单号
        String p3_Amt = money;//支付金额
        String p4_Cur = "CNY";//交易币种
        String p5_Pid = "hotelorder";  //商品名称
        String p6_Pcat = "unknown";//商品种类
        String p7_Pdesc = "descrition";//商品描述
        String p8_Url = "http://localhost:8080/liuwan/ResponsePayOrder";//商户接受支付成功的数据的地址，可以带参数
        String p9_SAF = "1";//送货地址：为1，需要用户将送货地址留在易宝支付系统，为0，不需要，默认为0
        String pa_MP = "unknown";//商户扩展信息
        String pr_NeedResponse="1"; //应答机制
        String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl");
        //签名数据 商户编号 密钥
        
        request.setAttribute("p0_Cmd",p0_Cmd );
        request.setAttribute("p1_MerId",p1_MerId );
        request.setAttribute("p2_Order", p2_Order);
        request.setAttribute("p3_Amt", p3_Amt);
        request.setAttribute("p4_Cur",p4_Cur );
        request.setAttribute("p5_Pid",p5_Pid );
        request.setAttribute("p6_Pcat",p6_Pcat );
        request.setAttribute("p7_Pdesc",p7_Pdesc );
        request.setAttribute("p8_Url",p8_Url );
        request.setAttribute("pa_MP",pa_MP );
        request.setAttribute("pr_NeedResponse",pr_NeedResponse );
        request.setAttribute("hmac",hmac );
        request.setAttribute("p9_SAF",p9_SAF );
        request.setAttribute("pd_FrpId", pd_FrpId);
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("paytemp");
        return mv;
    }
    
    @RequestMapping("ResponsePayOrder")//接受订单完成后返回的信息
    public ModelAndView ResponsePayOrder(HttpServletRequest request, HttpServletResponse response){
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("11111");
        String p1_MerId = request.getParameter("p1_MerId");
        String r0_Cmd = request.getParameter("r0_Cmd");
        String r1_Code = request.getParameter("r1_Code");//支付结果。1代表成功
        String r2_TrxId = request.getParameter("r2_TrxId");
        String r3_Amt = request.getParameter("r3_Amt");
        String r4_Cur= request.getParameter("r4_Cur");
        String r5_Pid= request.getParameter("r5_Pid");
        String r6_Order = request.getParameter("r6_Order");//订单编号
        String r7_Uid = request.getParameter("r7_Uid");
        String r8_MP = request.getParameter("r8_MP");
        String r9_BType = request.getParameter("r9_BType");//1浏览器访问的。2点对点
        String hmac = request.getParameter("hmac");
        ModelAndView mv = new ModelAndView();
        
        
        //数据校验
        boolean ok = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP, r9_BType, "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl");
        if(!ok){
                mv.setViewName("payorderfail");
        }else{
                if("1".equals(r1_Code)){
                        //支付成功：根据订单号更改订单状态。  点卡或充值时注意表单的重复提交问题。
                        if("2".equals(r9_BType)){
                                //可以更改订单号状态  由未支付变为已支付
                        }
                        
                        mv.setViewName("page05");
                }
        }
        return mv;
    }
}
