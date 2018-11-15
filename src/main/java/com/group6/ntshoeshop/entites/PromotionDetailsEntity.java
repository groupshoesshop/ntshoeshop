
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "promotiondetails")
public class PromotionDetailsEntity implements Serializable{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int promotionDetailsId;
  
  @OneToOne
  @JoinColumn(name = "productId")
  private ProductEntity product;
  
  @OneToOne
  @JoinColumn(name = "promotionId")
  private PromotionsEntity promotion;

    public int getPromotionDetailsId() {
        return promotionDetailsId;
    }

    public void setPromotionDetailsId(int promotionDetailsId) {
        this.promotionDetailsId = promotionDetailsId;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }

    public PromotionsEntity getPromotion() {
        return promotion;
    }

    public void setPromotion(PromotionsEntity promotion) {
        this.promotion = promotion;
    }

   
  
  
}
