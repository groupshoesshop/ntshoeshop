
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.CategoryProviderEntity;
import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.CategoryProviderRepository;
import com.group6.ntshoeshop.repository.CategoryTypeRepository;
import com.group6.ntshoeshop.repository.ProductRepository;
import com.group6.ntshoeshop.service.CategoryProviderService;
import com.group6.ntshoeshop.service.CategoryTypeService;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author KA
 */
@Controller
@RequestMapping("/Brand")
public class CategoryProviderController {
    
    @Autowired
    CategoryProviderService categoryProviderService;
    
    @Autowired
    private CategoryProviderRepository categoryProviderRepo;
    
    @Autowired
    ProductService productService;
    
    @Autowired
    PromotionService promotionService;
    
    @Autowired
    ProductRepository productRepo;
    
    @GetMapping("/{providerId}")
    public String CategoryProvider(Model model, @PathVariable int providerId){
    
        PromotionsEntity promotion = promotionService.getPromotion();
        CategoryProviderEntity categoryProvider = categoryProviderRepo.findOne(providerId);
        List<ProductEntity> listProduct = productService.getProductByCategoryBrand(categoryProvider);
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("listProducts", listProducts);
        return "product";
    }

}
