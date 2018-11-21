
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.ProductDetailsEntity;
import java.io.Serializable;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailsRepository extends CrudRepository<ProductDetailsEntity, Integer>{
    @Query("SELECT pd FROM ProductDetailsEntity pd WHERE pd.product.productId = :productId AND pd.quantity > 0  GROUP BY pd.productColor.colorId")
    List<ProductDetailsEntity> getListColorProductById(@Param("productId") int productId);
    
    @Query("SELECT pd FROM ProductDetailsEntity pd WHERE pd.product.productId = :productId AND pd.productColor.colorId= :colorId AND pd.quantity > 0  ORDER BY pd.productSize.sizeId")
    List<ProductDetailsEntity> getSizeProductByIdAndColorId(@Param("productId") int productId, @Param("colorId") int colorId);

}
