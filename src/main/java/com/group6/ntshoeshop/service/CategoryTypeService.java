/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.repository.CategoryTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author KA
 */
@Service
public class CategoryTypeService {
    
    @Autowired
    private CategoryTypeRepository categoryTypeRepo;
    
    
}
