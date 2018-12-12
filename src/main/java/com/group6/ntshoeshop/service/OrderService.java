/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.OrdersEntity;
import com.group6.ntshoeshop.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
     @Autowired
    OrderRepository orderRepo;
     
     public OrdersEntity addOrder(OrdersEntity order){
         return orderRepo.save(order);
     }
     
     public OrdersEntity getNewOrder(){
         return orderRepo.findTop1ByOrderByOrderIdDesc();
     }
}
