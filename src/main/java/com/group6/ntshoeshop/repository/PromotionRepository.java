package com.group6.ntshoeshop.repository;


import com.group6.ntshoeshop.entites.PromotionsEntity;
import java.util.Date;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionRepository extends CrudRepository<PromotionsEntity, Integer>{
    
    @Query("SELECT p FROM PromotionsEntity p WHERE STR_TO_Date(p.dateStart,'%d/%m/%Y') <= STR_TO_Date( :curentDate,'%d/%m/%Y') and  STR_TO_Date( :curentDate,'%d/%m/%Y') <= STR_TO_Date(p.dateClose,'%d/%m/%Y')  ")
    public PromotionsEntity findByDateStartBeforeAndDateCloseAffter(@Param("curentDate") String curentDate);
}
