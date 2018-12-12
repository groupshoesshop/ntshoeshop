
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.CategoryProviderEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryProviderRepository extends CrudRepository<CategoryProviderEntity, Integer>{
    
}
