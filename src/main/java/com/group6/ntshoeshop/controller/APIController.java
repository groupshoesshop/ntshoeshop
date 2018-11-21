

package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.ProductDetailsEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.service.ProductDetailsService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/api")
@SessionAttributes("cartItem")
public class APIController {
    
    @Autowired(required = true)
    ProductDetailsService productDetailService;
    
    @GetMapping("/get-product-size-by-color")
    @ResponseBody
    public String getSizeProductByColorId(@RequestParam int productId,@RequestParam int colorId){
        String html = "";
        List<ProductDetailsEntity> listProducts = productDetailService.getSizeProductByIdAndColorId(productId, colorId);
        for (ProductDetailsEntity listProduct : listProducts) {
            html += "<a class='btn btn-default size-product' data-size='"+listProduct.getProductSize().getSizeId() +"'>"+ listProduct.getProductSize().getSizeName()+ "</a>";
            
       }
        return html;
    }
    @GetMapping("/add-to-cart")
    @ResponseBody
    public String addToCart(@RequestParam int productId, @RequestParam String productName
    ,@RequestParam String price,@RequestParam String colorName,@RequestParam int colorId,
     @RequestParam String sizeName, @RequestParam int sizeId, HttpSession httpSession){
       
       if(null == httpSession.getAttribute("cartItem")){
           List<CartItem> listCartItems = new ArrayList<CartItem>() ;
           CartItem item = new CartItem();
           item.setProductId(productId);
           item.setProductName(productName);
           item.setPrice(price);
           item.setColorId(colorId);
           item.setColorName(colorName);
           item.setSizeId(sizeId);
           item.setSizeName(sizeName);
           item.setQuantity(1);
           listCartItems.add(item); 
           httpSession.setAttribute("cartItem", listCartItems);
       
            return listCartItems.size() + "";
       }else{
           int location = checkItemInCart(httpSession, productId, colorId, sizeId);
           List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
           if(location == -1){
               CartItem item = new CartItem();
               item.setProductId(productId);
               item.setProductName(productName);
               item.setPrice(price);
               item.setColorId(colorId);
               item.setColorName(colorName);
               item.setSizeId(sizeId);
               item.setSizeName(sizeName);
               item.setQuantity(1);
               listCartItems.add(item);
           }else{
               int newQuantity = listCartItems.get(location).getQuantity() +1;
               listCartItems.get(location).setQuantity(newQuantity);
           }
           return listCartItems.size() + "";
       }
       
    }
    
    private int checkItemInCart(HttpSession httpSession,int productId, int colorId, int sizeId){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        for (int i = 0; i < listCartItems.size(); i++) {
            if(listCartItems.get(i).getProductId() == productId && listCartItems.get(i).getColorId() == colorId && listCartItems.get(i).getSizeId() == sizeId){
                return i;
            }
        }
        return -1;
    }
    
    @GetMapping("/update-to-cart")
    @ResponseBody
    public void updateQuantityProductToCart(HttpSession httpSession, @RequestParam int productId,
             @RequestParam int colorId, @RequestParam int sizeId,  @RequestParam int quantity){
        if(null != httpSession.getAttribute("cartItem")){
            List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
            int location = checkItemInCart(httpSession, productId, colorId, sizeId);
            listCartItems.get(location).setQuantity(quantity);
        }
    }
    
    @GetMapping("/remove-item-to-cart")
    @ResponseBody
    public void removeItemToCart(HttpSession httpSession, @RequestParam int productId,
             @RequestParam int colorId, @RequestParam int sizeId,  @RequestParam int quantity){
        if(null != httpSession.getAttribute("cartItem")){
            List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
            int location = checkItemInCart(httpSession, productId, colorId, sizeId);
            listCartItems.remove(location);
        }
    }
}
