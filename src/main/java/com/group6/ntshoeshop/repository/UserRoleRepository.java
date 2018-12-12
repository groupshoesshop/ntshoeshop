
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.UserRoleEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleRepository extends CrudRepository<UserRoleEntity, Integer>{
    
}
