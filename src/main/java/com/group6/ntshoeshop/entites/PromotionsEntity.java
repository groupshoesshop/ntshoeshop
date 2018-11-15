
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import java.util.List;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "promotions")
public class PromotionsEntity implements Serializable{
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int promotionId;
    private String promotionName;
    
    private String amount;
    private String dateStart;
    private String dateClose;
    private String description;
    private String image;
    
    @ManyToMany(cascade = CascadeType.ALL)
    List<PromotionDetailsEntity> listPromotionDetails;

    public PromotionsEntity() {
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }

    public String getPromotionName() {
        return promotionName;
    }

    public void setPromotionName(String promotionName) {
        this.promotionName = promotionName;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    public String getDateClose() {
        return dateClose;
    }

    public void setDateClose(String dateClose) {
        this.dateClose = dateClose;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<PromotionDetailsEntity> getListPromotionDetails() {
        return listPromotionDetails;
    }

    public void setListPromotionDetails(List<PromotionDetailsEntity> listPromotionDetails) {
        this.listPromotionDetails = listPromotionDetails;
    }

   
    
}
