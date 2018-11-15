
package com.group6.ntshoeshop.entites;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "productcolor")
public class ProductColorEntity implements Serializable{
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int colorId;
    private String colorName;

    public ProductColorEntity() {
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
    
    
}
