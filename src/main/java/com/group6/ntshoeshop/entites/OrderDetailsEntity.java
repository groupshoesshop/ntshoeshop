
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetails")
public class OrderDetailsEntity implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderDetailId;
    @OneToOne
    @JoinColumn(name ="orderId" )
    private OrdersEntity order;
    @OneToOne
    @JoinColumn(name = "productDetailId")
    private ProductDetailsEntity productDetails;
    @OneToOne
    @JoinColumn(name = "promotionId")
    private PromotionsEntity promotion;
   
    private String unitprice;
    
    private String quantity;

    public OrderDetailsEntity() {
    }

    public OrderDetailsEntity(int orderDetailId, OrdersEntity order, ProductDetailsEntity productDetails, PromotionsEntity promotion, String unitprice, String quantity) {
        this.orderDetailId = orderDetailId;
        this.order = order;
        this.productDetails = productDetails;
        this.promotion = promotion;
        this.unitprice = unitprice;
        this.quantity = quantity;
    }

    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public OrdersEntity getOrder() {
        return order;
    }

    public void setOrder(OrdersEntity order) {
        this.order = order;
    }

    public ProductDetailsEntity getProductDetails() {
        return productDetails;
    }

    public void setProductDetails(ProductDetailsEntity productDetails) {
        this.productDetails = productDetails;
    }

    public PromotionsEntity getPromotion() {
        return promotion;
    }

    public void setPromotion(PromotionsEntity promotion) {
        this.promotion = promotion;
    }

    public String getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(String unitprice) {
        this.unitprice = unitprice;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

   
    
    
}
