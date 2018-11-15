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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PromotionDetailsService {
   
    @Autowired
    private PromotionDetailsRepository promotionDetailsRepo;
    
    @Autowired
    PromotionService promotionService;
    
    
    public PromotionDetailsEntity getPromotionDetailsOfProductByProductId(ProductEntity product){
        PromotionsEntity promotion = promotionService.getPromotion();
        
        return (PromotionDetailsEntity) promotionDetailsRepo.findByPromotionAndProduct(promotion, product);
    }
}
