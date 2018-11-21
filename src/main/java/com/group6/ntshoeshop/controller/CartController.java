/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.model.CartItem;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/cart")
@SessionAttributes("cartItem")
public class CartController {
    
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
    
}
