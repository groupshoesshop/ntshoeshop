
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.OrderDetailsEntity;
import com.group6.ntshoeshop.entites.OrdersEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailsRepository extends CrudRepository<OrderDetailsEntity, Integer>{
    List<OrderDetailsEntity> findByOrder(OrdersEntity order);
}
