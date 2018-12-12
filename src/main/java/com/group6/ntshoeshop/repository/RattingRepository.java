
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.RattingEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RattingRepository extends CrudRepository<RattingEntity, Integer>{
    List<RattingEntity> findByProduct(ProductEntity product);
    List<RattingEntity> findByProductAndRate(ProductEntity product, int rate);
}
