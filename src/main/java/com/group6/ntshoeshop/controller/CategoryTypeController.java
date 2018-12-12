
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.CategoryTypeRepository;
import com.group6.ntshoeshop.repository.ProductRepository;
import com.group6.ntshoeshop.service.CategoryTypeService;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/CategoryType")
public class CategoryTypeController {
    @Autowired
    CategoryTypeService categoryTypeService;
    
    @Autowired
    private CategoryTypeRepository categoryTypeRepo;
    
    @Autowired
    ProductRepository productRepo;
    
    @Autowired
    ProductService productService;
    
    @Autowired
    PromotionService promotionService;
    
    @GetMapping("/{CategoryTypeId}")
    public String CategoryType(Model model, @PathVariable int CategoryTypeId){
    
        PromotionsEntity promotion = promotionService.getPromotion();
        CategoryTypeEntity categoryType = categoryTypeRepo.findOne(CategoryTypeId);
        List<ProductEntity> listProduct = productService.getProductByCategoryTypeId(categoryType);
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("listProducts", listProducts);
        return "product";
    }

}
