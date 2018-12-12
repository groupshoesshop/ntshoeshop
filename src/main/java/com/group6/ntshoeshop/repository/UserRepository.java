
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.UsersEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<UsersEntity, Integer>{
    UsersEntity findByEmailAndPassword (String email, String password);
    UsersEntity findByEmail(String email);
}
