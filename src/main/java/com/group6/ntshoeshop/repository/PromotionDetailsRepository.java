package com.group6.ntshoeshop.repository;


import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionDetailsRepository extends CrudRepository<PromotionDetailsEntity, Integer>{
//    @Query("SELECT pd FROM PromotionDetailsRepository WHERE pd.promotion.promotionId = 1 AND pd.product.productId = 9")
    PromotionDetailsEntity findByPromotionAndProduct(PromotionsEntity promotion, ProductEntity product);
    List<PromotionDetailsEntity> findByPromotion(PromotionsEntity promotion);
    List<PromotionDetailsEntity> findByProduct(ProductEntity product);
}
