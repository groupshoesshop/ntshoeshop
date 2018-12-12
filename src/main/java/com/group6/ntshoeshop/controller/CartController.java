
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.OrderDetailsEntity;
import com.group6.ntshoeshop.entites.OrdersEntity;
import com.group6.ntshoeshop.entites.ProductDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.repository.OrderDetailsRepository;
import com.group6.ntshoeshop.repository.PromotionRepository;
import com.group6.ntshoeshop.service.OrderService;
import com.group6.ntshoeshop.service.ProductDetailsService;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/cart")
@SessionAttributes("cartItem")
public class CartController {
    
    @Autowired
    OrderService orderService;
    @Autowired
    ProductDetailsService productDetailService;
    @Autowired
    PromotionRepository promotionRepo;
    @Autowired
    OrderDetailsRepository orderDetailsRepo;
    @Autowired
    JavaMailSender mailSender;
    
    @GetMapping
    public String Default(HttpSession httpSession, Model model){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        
        if(null != httpSession.getAttribute("cartItem")){
             List<CartItem> listItem =  (List<CartItem>) httpSession.getAttribute("cartItem");
            model.addAttribute("cartItem", httpSession.getAttribute("cartItem"));
        }
       
        
        return "checkout";
    }
    
    @PostMapping
    public String Order(@RequestParam String customerName, @RequestParam String email, @RequestParam String address, @RequestParam String phoneNumber,
            HttpSession httpSession) throws MessagingException{
        if(null != httpSession.getAttribute("cartItem")){
//        SimpleMailMessage message = new SimpleMailMessage();
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, "utf-8");
//        message.setTo("nam.14dl1@gmail.com");
//        message.setSubject("Dat hang tren ntshoeshop");
        String htmlContent ="<h3>Thông tin đơn hàng</h3>";
        htmlContent = "<p>Chào bạn <span style='color: red; font-weight: bold;'>" + customerName +" </span>, Cảm ơn bạn đã ghé thăm ntshoeshop.</p> </br>";
        htmlContent += " <h4>Thông tin đơn hàng: </h4>";
        htmlContent += " <table style='border-collapse: collapse;'>";
        htmlContent += " <thead>"
                    + "<tr>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Tên Sản Phẩm</th>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Màu</th>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Size</th>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Giá</th>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Số Lượng</th>"
                        + "<th style='text-align: center; padding-left: 30px; padding-right: 30px;border: 1px solid #ddd;'>Thành tiền</th>"
                    + "</tr>"
                + "</thead>"
                + "<tbody>";
        OrdersEntity newOrder = new OrdersEntity();
        newOrder.setCustomerName(customerName);
        newOrder.setAddress(address);
        newOrder.setEmail(email);
        newOrder.setPhone(phoneNumber);
        Date date = new Date();
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        String currenDay = dateFormat.format(date);
        newOrder.setDate(currenDay);
        orderService.addOrder(newOrder);
        int totalPrice = 0;
        int totalPriceProduct;
        OrdersEntity order = orderService.getNewOrder();
        List<CartItem> listItem = (List<CartItem>) httpSession.getAttribute("cartItem");
            for (CartItem item : listItem) {
                int productId = item.getProductId();
                int colorId = item.getColorId();
                int sizeId = item.getSizeId();
                int price = Integer.parseInt(item.getPrice().replace(".", ""));
                int quantity = item.getQuantity();
                totalPriceProduct = price * quantity;
                totalPrice += totalPriceProduct;
                String StrTotalPriceProduct = formatNumberPrice(totalPriceProduct);
                OrderDetailsEntity orderDetails = new OrderDetailsEntity();
                orderDetails.setOrder(order);
                //lay ra doi tuong khuyen mai
                int promotionId = item.getPromotionId();
                if(promotionId != -1){
                    PromotionsEntity promotion = promotionRepo.findOne(promotionId);
                    orderDetails.setPromotion(promotion);
                }
                
                //lay ra doi tuong chi tiet sp
                ProductDetailsEntity productDetail = productDetailService.getProductDetailsByproductIdAndColorIdAndSizeId(productId, colorId, sizeId);
                orderDetails.setProductDetails(productDetail);
                orderDetails.setQuantity(String.valueOf(item.getQuantity()));
                orderDetails.setUnitprice(item.getPrice()); 
                orderDetailsRepo.save(orderDetails);
                int productDetailId = productDetail.getProductDetailId();
                productDetailService.updateQuantityProduct(productDetailId, quantity);
                htmlContent += "<tr>"
                                + "<td style='text-align: left;border: 1px solid #ddd;'>"+ item.getProductName()+ "</td>"
                                + "<td style='text-align: left;border: 1px solid #ddd;'>" +item.getColorName()+"</td>"
                                + "<td style='text-align: center;border: 1px solid #ddd;'>"+item.getSizeName() + "</td>"
                                + "<td style='text-align: right;border: 1px solid #ddd;'>"+item.getPrice() +"</td>"
                                + "<td style='text-align: center;border: 1px solid #ddd;'>" + item.getQuantity() + "</td>"
                                + "<td style='text-align: right;border: 1px solid #ddd;'>" + StrTotalPriceProduct + "</td>"
                            + "</tr>";

            }
            String totalPriceOrder = formatNumberPrice(totalPrice);
             htmlContent += "<tr>"
                                + "<td colspan='6' style='text-align: right;border: 1px solid #ddd;'> <span style='font-weight: bold;'>Tổng tiền: </span>"+ totalPriceOrder+ " VND </td>"
                                
                            + "</tr>";
            listItem.removeAll(listItem);
            
            htmlContent += "</tbody> "
                    + "</table>";
            htmlContent += "<p>Địa chỉ nhận hàng: "+order.getAddress()+"</p> ";
            htmlContent += "<p>Số điện thoại liên hệ: "+order.getPhone()+"</p> ";
            htmlContent += "<p>Ngày Đặt hàng: "+order.getDate()+"</p> ";
             htmlContent += "<a href='iviettech.vn'>NTShoeShop</a> <span> Cảm ơn bạn đã đồng hành cùng shop!!! </span> " + currenDay;
            message.setContent(htmlContent, "text/html; charset=UTF-8");
            
            helper.setTo(order.getEmail());
            helper.setSubject("Thông tin Đặt hàng tại ntshoeshop");
            
            this.mailSender.send(message);
        }
        
        
        
        return "redirect:/";
    }
    
     //format price to VND
    public String formatNumberPrice(int total){
        if(total < 1000){
            return String.valueOf(total);
        }
        try {
            NumberFormat formatPrice = new DecimalFormat("###,###");
            String totalPriceOrder = formatPrice.format(total);
            totalPriceOrder = totalPriceOrder.replace(",", ".");
            return totalPriceOrder;
        } catch (Exception e) {
            return "";
        }
    }
}
