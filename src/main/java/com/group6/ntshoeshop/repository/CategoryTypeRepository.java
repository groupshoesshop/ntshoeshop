
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryTypeRepository extends CrudRepository<CategoryTypeEntity, Integer>{
    
}
