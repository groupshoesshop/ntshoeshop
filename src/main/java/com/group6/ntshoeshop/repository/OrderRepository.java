
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.OrdersEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<OrdersEntity, Integer>{
    OrdersEntity findTop1ByOrderByOrderIdDesc(); 
    List<OrdersEntity> findByCustomerNameAndEmailOrderByOrderIdDesc(String customerName,String email);
}
