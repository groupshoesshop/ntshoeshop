/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.ProductRepository;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepo; 
    @Autowired
    private PromotionDetailsService promotionDetailsService; 
    
    public List<ProductEntity> getListProduct(){
        return (List<ProductEntity>) productRepo.findAll();
    }
    
//   public List<ProductEntity> getListProductOrderByDesc(){
//       return productRepo.findAllOrderByProductIdDesc();
//   }
   
   public List<ProductEntity> getListProductTop8OrderByDesc(){
       return productRepo.findTop8OByOrderByProductIdDesc();
   }
   
   //get list product promoting
    @Autowired
    private PromotionService promotionService;
    
//    // get list product promoting
//    public List<ProductModel> getListProductPromotion(){
//        PromotionsEntity promotion = promotionService.getPromotion();
//        List<PromotionDetailsEntity> listPromotion = promotion.getListPromotionDetails();
//        List<ProductModel> listProductModel = new ArrayList<ProductModel>();
//        for (int i = 0; i < listPromotion.size(); i++) {
//            int productId = listPromotion.get(i).getProduct().getProductId();
//             String productName = listPromotion.get(i).getProduct().getProductName();
//            String price =  listPromotion.get(i).getProduct().getUnitprice();
//            String percent = listPromotion.get(i).getPromotion().getAmount().replace(".", "") ;
//            int dDiscount = ResultPriceAffterPromotion(price, percent);
//            String discount =  formatNumberPrice(dDiscount);
//            int categoryType = listPromotion.get(i).getProduct().getCategoryType().getTypeId();
//            int categoryProvider = listPromotion.get(i).getProduct().getCategoryProvider().getProviderId();
//            String description = listPromotion.get(i).getProduct().getDescription();
//            String image1 = listPromotion.get(i).getProduct().getImage1();
//            String image2 = listPromotion.get(i).getProduct().getImage2();
//            String image3 = listPromotion.get(i).getProduct().getImage3();
//            ProductModel productModel = new ProductModel(productId, productName, price, percent, discount, categoryType, categoryProvider, description, image1, image2, image3);
//            listProductModel.add(productModel);
//            System.out.println("name: "+ listProductModel.get(i).getProductName());
//        }
//        
//        return listProductModel;
//    }
//    
    //calculate price affter discount
    public int ResultPriceAffterPromotion(String price, String percent){
        double dPrice = Double.parseDouble(price.replace(".", ""));
        double dPercent = Double.parseDouble(percent);
        double discount = (dPrice/100)*dPercent;
        return (int) Math.ceil(dPrice - discount);
        
    }
    
    //format price to VND
    public String formatNumberPrice(int dDiscount){
        if(dDiscount < 1000){
            return String.valueOf(dDiscount);
        }
        try {
            NumberFormat formatPrice = new DecimalFormat("###,###");
            String discount = formatPrice.format(dDiscount);
            discount = discount.replace(",", ".");
            return discount;
        } catch (Exception e) {
            return "";
        }
    }
    
    //find promotion product by product id
    public ProductModel getPoductPromotingById(int productId){
        ProductEntity product = productRepo.findOne(productId);
        PromotionDetailsEntity promotionDetails = promotionDetailsService.getPromotionDetailsOfProductByProductId(product);
        
        
        String productName = product.getProductName();
            String price =  product.getUnitprice();
            int categoryType = product.getCategoryType().getTypeId();
            int categoryProvider = product.getCategoryProvider().getProviderId();
            String description = product.getDescription();
            String image1 = product.getImage1();
            String image2 = product.getImage2();
            String image3 = product.getImage3();
        if(promotionDetails!=null){
            PromotionsEntity promotion = promotionDetails.getPromotion();
            
            
            String percent = promotion.getAmount();
            int IntDiscount = ResultPriceAffterPromotion(price, percent);
            String discount =  formatNumberPrice(IntDiscount);
            
            ProductModel productModel = new ProductModel(productId, productName, price, percent, discount, categoryType, categoryProvider, description, image1, image2, image3);
            return productModel;
        }else{
            ProductModel productModel = new ProductModel(productId, productName, price, categoryType, categoryProvider, description, image1, image2, image3);
        return productModel;
        }
    }
}
