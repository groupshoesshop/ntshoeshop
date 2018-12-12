
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.CategoryProviderEntity;
import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;

import com.group6.ntshoeshop.repository.ProductRepository;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepo; 
    
    @Autowired
    private PromotionDetailsService promotionDetailsService; 
    
    @Autowired
    private PromotionService promotionService;
    
   
//    get all product
    public List<ProductEntity> getListProduct(){
        return productRepo.findAllByOrderByProductIdDesc();
    }
    
    //get product by product id
    public ProductEntity getProductById(int productId){
        return productRepo.findOne(productId);
    }
//   public List<ProductEntity> getListProductOrderByDesc(){
//       return productRepo.findAllOrderByProductIdDesc();
//   }
   
//    get new product
   public List<ProductEntity> getListProductTop8OrderByDesc(){
       return productRepo.findTop8ByOrderByProductIdDesc();
   }
   
  
   
   //get list product promoting
    
    
   
    //calculate price affter discount
    public int ResultPriceAffterPromotion(String price, String percent){
        double dPrice = Double.parseDouble(price.replace(".", ""));
        double dPercent = Double.parseDouble(percent);
        double discount = (dPrice/100)*dPercent;
        return (int) Math.ceil(dPrice - discount);
        
    }
    
    //format price to VND
    public String formatNumberPrice(int dDiscount){
        if(dDiscount < 1000){
            return String.valueOf(dDiscount);
        }
        try {
            NumberFormat formatPrice = new DecimalFormat("###,###");
            String discount = formatPrice.format(dDiscount);
            discount = discount.replace(",", ".");
            return discount;
        } catch (Exception e) {
            return "";
        }
    }
    
     // get all products
//    public  List<ProductModel> getAllProducts(){ 
//        List<ProductEntity> listProduct = productRepo.findAllByOrderByProductIdDesc();
//        List<ProductModel> listModels = new ArrayList<ProductModel>();
//        
//        listModels = getListProducts();
//        return listModels;
//    }
    
    //get all product selling and not sell
    public List<ProductModel> getListProducts(PromotionsEntity promotion, List<ProductEntity> listProduct){
//        PromotionsEntity promotion = promotionService.getPromotion();
//        List<ProductEntity> listProduct = productRepo.findAllByOrderByProductIdDesc();
        List<ProductModel> listModels = new ArrayList<ProductModel>();
        for (int i = 0; i < listProduct.size(); i++) {
            int productId = listProduct.get(i).getProductId();
            boolean check = promotionDetailsService.checkPromotiondetailsByProductId(productId);
            System.out.println("name product promotion: " + check);
            String productName = listProduct.get(i).getProductName();
            String price = listProduct.get(i).getUnitprice();
            int categoryType = listProduct.get(i).getCategoryType().getTypeId();
            int categoryProvider = listProduct.get(i).getCategoryProvider().getProviderId();
            String description = listProduct.get(i).getDescription();
            String image1 = listProduct.get(i).getImage1();
            String image2 = listProduct.get(i).getImage2();
            String image3 = listProduct.get(i).getImage3();
            try {
                if (check == true) {
                    String percent = promotion.getAmount();
                    int PromotionId = promotion.getPromotionId();
                    int IntDiscount = ResultPriceAffterPromotion(price, percent);
                    String discount = formatNumberPrice(IntDiscount);

                    ProductModel productModel = new ProductModel(productId, productName, price, percent, discount, categoryType, categoryProvider, description, image1, image2, image3, PromotionId);
                    listModels.add(productModel);
                    
                   
                } else{ 
                    ProductModel productModel = new ProductModel(productId, productName, price, categoryType, categoryProvider, description, image1, image2, image3);
                  listModels.add(productModel);
                    
                }
                   
            } catch (NullPointerException e) {
                  
                  System.out.println("loi: " + e + productId);
                
            }
           
            
           
        }
        return listModels;
    }
    
    //end get all product selling and not sell
    
    
    //get list Product Promotion in currentDate
    public List<ProductModel> getListProductPromotion(List<PromotionDetailsEntity> listPromotionDetails){
//        List<PromotionDetailsEntity> listPromotionDetails = promotionDetailsService.getListPromotionDetails();
        List<ProductModel> listModels = new ArrayList<ProductModel>();
        for (int i = 0; i < listPromotionDetails.size(); i++) {
            int productId = listPromotionDetails.get(i).getProduct().getProductId();
            String productName = listPromotionDetails.get(i).getProduct().getProductName();
            String price = listPromotionDetails.get(i).getProduct().getUnitprice();
            int categoryType = listPromotionDetails.get(i).getProduct().getCategoryType().getTypeId();
            int categoryProvider = listPromotionDetails.get(i).getProduct().getCategoryProvider().getProviderId();
            String description = listPromotionDetails.get(i).getProduct().getDescription();
            String image1 = listPromotionDetails.get(i).getProduct().getImage1();
            String image2 = listPromotionDetails.get(i).getProduct().getImage2();
            String image3 = listPromotionDetails.get(i).getProduct().getImage3();
            String percent = listPromotionDetails.get(i).getPromotion().getAmount();
            int IntDiscount = ResultPriceAffterPromotion(price, percent);
            String discount =  formatNumberPrice(IntDiscount);
//            listPromotionDetails.get(i).getPromotion().getPromotionId();
            
            ProductModel productModel = new ProductModel(productId, productName, price, percent, discount, categoryType, categoryProvider, description, image1, image2, image3);
            listModels.add(productModel);
        }
        return listModels;
    }
    //find promotion product by product id
    public ProductModel getPoductPromotingById(int productId, List<PromotionDetailsEntity> listPromotionDetails){
        
        ProductModel productModel = new ProductModel();
        ProductEntity product = productRepo.findOne(productId);
//        List<PromotionDetailsEntity> listPromotionDetails = promotionDetailsService.getListPromotionDetails();
        
        String productName = product.getProductName();
        String price = product.getUnitprice();
        int categoryType = product.getCategoryType().getTypeId();
        int categoryProvider = product.getCategoryProvider().getProviderId();
        String description = product.getDescription();
        String image1 = product.getImage1();
        String image2 = product.getImage2();
        String image3 = product.getImage3();
        if (null != listPromotionDetails && listPromotionDetails.size() > 0) {
            for (int i = 0; i < listPromotionDetails.size(); i++) {
                if (listPromotionDetails.get(i).getProduct().getProductId() == productId) {
                    String percent = listPromotionDetails.get(i).getPromotion().getAmount();
                    int IntDiscount = ResultPriceAffterPromotion(price, percent);
                    String discount = formatNumberPrice(IntDiscount);

                    productModel = new ProductModel(productId, productName, price, percent, discount, categoryType, categoryProvider, description, image1, image2, image3);

                    break;
                } else {
                    productModel = new ProductModel(productId, productName, price, categoryType, categoryProvider, description, image1, image2, image3);
                }
//            
            }
        } else {
            productModel = new ProductModel(productId, productName, price, categoryType, categoryProvider, description, image1, image2, image3);

        }
        
        return productModel;
    }
    
   // list top order
    public List<ProductEntity> getListTopOrders(){
       return productRepo.findProductByTopOrders();
    }
    
    //save product
    public void saveProduct(ProductEntity product){
        
        productRepo.save(product);
    }
    //    ========================================================================
//    Product by CategoryId
    
    public List<ProductEntity> getProductByCategoryTypeId(CategoryTypeEntity categoryType){
    
        List<ProductEntity> listProducts = productRepo.findByCategoryType(categoryType);
        
        return listProducts;
    }
    //  Product by Category Brand
    
    public List<ProductEntity> getProductByCategoryBrand(CategoryProviderEntity providerId){
    
        List<ProductEntity> listProducts = productRepo.findByCategoryProvider(providerId);
        
        return listProducts;
    }
    

//    ============================================================================
}
