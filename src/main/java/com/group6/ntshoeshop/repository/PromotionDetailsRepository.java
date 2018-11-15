package com.group6.ntshoeshop.repository;


import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionDetailsRepository extends CrudRepository<PromotionDetailsEntity, Integer>{
//    @Query("SELECT pd FROM PromotionDetailsRepository WHERE pd.promotion.promotionId = 1 AND pd.product.productId = 1")
    PromotionDetailsRepository findByPromotionAndProduct(@Param("promotion") PromotionsEntity promotion,@Param("product") ProductEntity product);
}
