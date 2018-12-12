
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.ProductRepository;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/search")
public class SearchController {
    
     @Autowired
     ProductService productService;
    
    @Autowired
     ProductRepository productRepo;
    
     @Autowired
    PromotionService promotionService;
    
    @PostMapping
    public String ProductName(Model model, @RequestParam String search ){
        
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductEntity> listProduct = productRepo.findByProductNameContaining(search);
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("listProducts", listProducts);
        return "product";
    }
    
}
