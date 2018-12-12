
package com.group6.ntshoeshop.repository;


import com.group6.ntshoeshop.entites.CategoryProviderEntity;
import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<ProductEntity, Integer>{
    
//    @Query("SELECT p FROM ProductEntity p ORDER BY p.productId DESC")
    List<ProductEntity> findAllByOrderByProductIdDesc();
    
    List<ProductEntity> findTop3ByCategoryType(CategoryTypeEntity category);
    List<ProductEntity> findTop8ByOrderByProductIdDesc();
    
//    String query = "SELECT p FROM com.group6.ntshoeshop.entites.ProductEntity p "
//            + "WHERE p.productId IN (SELECT pd.product.productId "
//            + "FROM com.group6.ntshoeshop.entites.OrderDetailsEntity o INNER JOIN  com.group6.ntshoeshop.entites.ProductDetailsEntity pd "
//            + "WHERE o.productDetails.productDetailId = pd.productDetailId "
//            + "GROUP BY pd.product.productId "
//            + "ORDER BY COUNT(pd.product.productId) DESC)";
    String query1 = "SELECT * FROM product p " +
                        "WHERE p.productId IN (SELECT prd.productId " +
                        "FROM orderdetails o INNER JOIN  productdetails prd " +
                        "WHERE o.productDetailId = prd.productDetailId " +
                        "GROUP BY prd.productId " +
                        "ORDER BY COUNT(prd.productId) DESC)";
    @Query(value = query1, nativeQuery = true)
    List<ProductEntity> findProductByTopOrders();
    
//    ================================
    List<ProductEntity> findByProductNameContaining(String productName );
    List<ProductEntity> findByCategoryType(CategoryTypeEntity categoryType);
    List<ProductEntity> findByCategoryProvider(CategoryProviderEntity categoryProvider);
    String Query2 = "SELECT *  FROM product ORDER BY (REPLACE(unitprice,'.','') * 1 ) DESC";
    @Query (value = Query2, nativeQuery = true)
    List<ProductEntity> findAllProductByPriceDesc();
    
    String Query3 = "SELECT *  FROM product ORDER BY (REPLACE(unitprice,'.','') * 1 ) ASC";
    @Query (value = Query3, nativeQuery = true)
    List<ProductEntity> findAllProductByPriceAsc(); 
}
