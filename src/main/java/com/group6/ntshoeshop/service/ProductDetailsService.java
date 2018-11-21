
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.ProductDetailsEntity;
import com.group6.ntshoeshop.repository.ProductDetailsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductDetailsService {
    
    @Autowired
    ProductDetailsRepository productRepo;
    
    // Get list color of product
    public List<ProductDetailsEntity> getListColorOfProductByProductId(int productId){
        return productRepo.getListColorProductById(productId);
    }
    
//    get list size of product by productId and colorId
    public List<ProductDetailsEntity> getSizeProductByIdAndColorId(int productId, int colorId){
        
        return productRepo.getSizeProductByIdAndColorId(productId, colorId);
    }
}
