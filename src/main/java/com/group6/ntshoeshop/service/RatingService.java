
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.RattingEntity;
import com.group6.ntshoeshop.model.RateModel;
import com.group6.ntshoeshop.repository.RattingRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingService {
    @Autowired
    RattingRepository ratingRepo;
    
    public void addNewRating(RattingEntity rating){
        
        ratingRepo.save(rating);
    }
    
    //get rate product by Product
    public List<RattingEntity> getRateByProduct(ProductEntity product){
        List<RattingEntity> listRates = ratingRepo.findByProduct(product);
        return listRates;
    }
    
    //get rate product by product and rate
    public RateModel getRateProductByRate(ProductEntity product, int rate){
        RateModel rateModel = new RateModel();
        List<RattingEntity> listRates = ratingRepo.findByProduct(product);
        List<RattingEntity> listRatesByRate = ratingRepo.findByProductAndRate(product, rate);
        int numberVotes = 0;
        int percent;
        if(listRatesByRate.size() > 0){
            numberVotes = listRatesByRate.size();
        }
        
        if(numberVotes == 0){
           rateModel.setNumberVotes(0);
            rateModel.setPercent(0); 
        }else{
            int datra = listRates.size();
            int datduoc = listRatesByRate.size();
            double percents = (100 / datra) * datduoc ; // dòng này lỗi
            rateModel.setNumberVotes(numberVotes);
            percent = (int) percents;
            rateModel.setPercent(percent); 
        }
        
        return rateModel;
    }
}
