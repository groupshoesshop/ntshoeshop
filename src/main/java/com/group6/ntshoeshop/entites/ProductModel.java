
package com.group6.ntshoeshop.entites;


public class ProductModel {
     private int productId;
    private String productName;
    private String price;
    private String percent;
    private String discount;
    private int categoryType;
    private int categoryProvider;
    private String description;
    private String image1;
    private String image2;
    private String image3;
    private int promotionId;

    public ProductModel() {
    }

    public ProductModel(int productId, String productName, String price,  int categoryType, int categoryProvider, String description, String image1, String image2, String image3) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
       
        this.categoryType = categoryType;
        this.categoryProvider = categoryProvider;
        this.description = description;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
    }

    
    public ProductModel(int productId, String productName, String price, String percent, String discount, int categoryType, int categoryProvider, String description, String image1, String image2, String image3) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.percent = percent;
        this.discount = discount;
        this.categoryType = categoryType;
        this.categoryProvider = categoryProvider;
        this.description = description;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
    }

    public ProductModel(int productId, String productName, String price, String percent, String discount, int categoryType, int categoryProvider, String description, String image1, String image2, String image3, int promotionId) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.percent = percent;
        this.discount = discount;
        this.categoryType = categoryType;
        this.categoryProvider = categoryProvider;
        this.description = description;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.promotionId = promotionId;
    }

    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public int getCategoryType() {
        return categoryType;
    }

    public void setCategoryType(int categoryType) {
        this.categoryType = categoryType;
    }

    public int getCategoryProvider() {
        return categoryProvider;
    }

    public void setCategoryProvider(int categoryProvider) {
        this.categoryProvider = categoryProvider;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }
    
    
}
