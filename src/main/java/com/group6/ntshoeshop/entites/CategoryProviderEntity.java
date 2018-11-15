
package com.group6.ntshoeshop.entites;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "categoryprovider")
public class CategoryProviderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int providerId;
    private String providerName;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "providerId")
    private Set<ProductEntity> product;

    public int getProviderId() {
        return providerId;
    }

    public void setProviderId(int providerId) {
        this.providerId = providerId;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public Set<ProductEntity> getProduct() {
        return product;
    }

    public void setProduct(Set<ProductEntity> product) {
        this.product = product;
    }

    
    
}
