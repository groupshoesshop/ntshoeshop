
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.repository.PromotionRepository;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PromotionService {
    @Autowired
    private PromotionRepository promotionRepo;
    
    //find infomation promotion in currendate
    public PromotionsEntity getPromotion(){
        Date date = new Date();
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        String currenDay = dateFormat.format(date);
        return promotionRepo.findByDateStartBeforeAndDateCloseAffter(currenDay);
    }
}
