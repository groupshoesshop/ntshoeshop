
package com.group6.ntshoeshop.controller;


import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionDetailsService;
import com.group6.ntshoeshop.service.PromotionService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
@SessionAttributes("cartItem")
public class HomeController {
    @Autowired
     ProductService productService;
    
    @Autowired
     PromotionService promotionService;
    
    @Autowired
     PromotionDetailsService promotionDetailsService;
    
    @GetMapping
    public String Default(Model model, HttpSession httpSession){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
model.addAttribute("listProducts", productService.getListProductTop8OrderByDesc());
        
        List<PromotionDetailsEntity> listPromotionDetails = promotionDetailsService.getListPromotionDetails();
        List<ProductModel> listpromotionProducts = productService.getListProductPromotion(listPromotionDetails);
        model.addAttribute("promotion", listpromotionProducts);

        return "shop";
    }
}
