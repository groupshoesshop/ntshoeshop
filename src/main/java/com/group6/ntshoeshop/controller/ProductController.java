
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.service.ProductDetailsService;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/product")
@SessionAttributes("cartItem")
public class ProductController {
    @Autowired
     ProductService productService;
    
    @Autowired
    ProductDetailsService productDetailsService;
    
    @Autowired
    PromotionDetailsService promotionDetailsService;
    
    @Autowired
    PromotionService promotionService;
    
    @GetMapping
    public String Default(HttpSession httpSession, Model model){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductModel> listProduct = productService.getListProducts(promotion);
        
        model.addAttribute("listProducts", listProduct);     
        return "product";
    }
    
    
    @GetMapping("/{productId}")
    public String ProductDetails(HttpSession httpSession ,Model model, @PathVariable int productId){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        List<PromotionDetailsEntity> listPromotionDetails = promotionDetailsService.getListPromotionDetails();
        ProductModel productModel = productService.getPoductPromotingById(productId, listPromotionDetails);
         model.addAttribute("product", productModel);
         model.addAttribute("productColor", productDetailsService.getListColorOfProductByProductId(productId));
         model.addAttribute("topOrders", productService.getListProductTop8OrderByDesc());
        return "productdetails";
    }
    

}
