
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "shippingorders")
public class ShippingOrdersEntity implements Serializable{
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int shippingId;
     @OneToMany(cascade = CascadeType.ALL)
     @JoinColumn(name = "orderId")
    private Set<OrdersEntity>  listOrder;
     
    private String ShippingDate;
    private String destinationDate;
    private String shippingType;

    public ShippingOrdersEntity() {
    }

    public int getShippingId() {
        return shippingId;
    }

    public void setShippingId(int shippingId) {
        this.shippingId = shippingId;
    }

    public Set<OrdersEntity> getListOrder() {
        return listOrder;
    }

    public void setListOrder(Set<OrdersEntity> listOrder) {
        this.listOrder = listOrder;
    }

    public String getShippingDate() {
        return ShippingDate;
    }

    public void setShippingDate(String ShippingDate) {
        this.ShippingDate = ShippingDate;
    }

    public String getDestinationDate() {
        return destinationDate;
    }

    public void setDestinationDate(String destinationDate) {
        this.destinationDate = destinationDate;
    }

    public String getShippingType() {
        return shippingType;
    }

    public void setShippingType(String shippingType) {
        this.shippingType = shippingType;
    }
    
    
}
