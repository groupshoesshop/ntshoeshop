/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.repository;


import com.group6.ntshoeshop.entites.ProductEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<ProductEntity, Integer>{
    
//    @Query("SELECT p FROM ProductEntity p ORDER BY p.productId DESC")
//    List<ProductEntity> findAllOrderByProductIdDesc();
    
    List<ProductEntity> findTop8OByOrderByProductIdDesc();
}
