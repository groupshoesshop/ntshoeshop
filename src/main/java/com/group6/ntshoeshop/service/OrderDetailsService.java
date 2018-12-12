
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.OrderDetailsEntity;
import com.group6.ntshoeshop.entites.OrdersEntity;
import com.group6.ntshoeshop.repository.OrderDetailsRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailsService {
   @Autowired
    OrderDetailsRepository orderDetailsRepo;
    
    public List<OrderDetailsEntity> getListOrderDetailsManager(OrdersEntity order){

        return orderDetailsRepo.findByOrder(order);
    } 
}
