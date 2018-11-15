
package com.group6.ntshoeshop.controller;


import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
     ProductService productService;
    
    @Autowired
     PromotionService promotionService;
    
    @GetMapping
    public String Default(Model model){
    model.addAttribute("listProducts", productService.getListProductTop8OrderByDesc());
//    model.addAttribute("promotion", productService.getListProductPromotion());
//    model.addAttribute("product", productService.getPoductPromotingById(9));
    model.addAttribute("promotions", promotionService.getPromotion());
    
        
        return "shop";
    }
}
