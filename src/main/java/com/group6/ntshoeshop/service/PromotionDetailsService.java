/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.service;


import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.PromotionDetailsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PromotionDetailsService {
   
    @Autowired
    PromotionDetailsRepository promotionDetailsRepo;
    
    @Autowired
    PromotionService promotionService;
    
    @Autowired
    ProductService productService;
    
    
    
    // câu query đang có vấn đề ================================
//    public PromotionDetailsEntity getPromotionDetailsOfProductByPromotionAndProduct(PromotionsEntity promotion, ProductEntity product){
//
//        return (PromotionDetailsEntity) promotionDetailsRepo.findByPromotionAndProduct(promotion, product);
//    }
    //===========================================================
    //get list promoting details : lấy được dữ liệu
    public List<PromotionDetailsEntity> getListPromotionDetails(){
        PromotionsEntity promotion = promotionService.getPromotion();
        List<PromotionDetailsEntity> listPromotion = promotionDetailsRepo.findByPromotion(promotion);
        return listPromotion;
    }
    
    //get promotiondetails of product promoting by productId
    public boolean checkPromotiondetailsByProductId(int productId){
        PromotionDetailsEntity promotionDetails = new PromotionDetailsEntity();
        boolean check = false;
        List<PromotionDetailsEntity> listPromotion = getListPromotionDetails();
        for (int i = 0; i < listPromotion.size(); i++) {
            if (listPromotion.get(i).getProduct().getProductId() == productId) {
                check = true;
                break;
            }
        }
        return check;
    }
    
//    ============================================================================
    //get list Promottion details by product : lấy được dữ liệu
//    public List<PromotionDetailsEntity> getListProductPromotion(){
//        ProductEntity product = productService.getProductById(9);
//        List<PromotionDetailsEntity> listPromotions = promotionDetailsRepo.findByProduct(product);
//        return listPromotions;
//    }
//    ==========================================================================
}
