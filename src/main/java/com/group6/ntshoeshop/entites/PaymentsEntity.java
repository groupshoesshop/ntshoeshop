
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "payments")
public class PaymentsEntity implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int payentId;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "orderId")
    private OrdersEntity orders;
    private String amount;
    private String Date;

    public PaymentsEntity() {
    }

    public int getPayentId() {
        return payentId;
    }

    public void setPayentId(int payentId) {
        this.payentId = payentId;
    }

    public OrdersEntity getOrders() {
        return orders;
    }

    public void setOrders(OrdersEntity orders) {
        this.orders = orders;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }
    
    
}
