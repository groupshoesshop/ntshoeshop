
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.CategoryTypeEntity;
import com.group6.ntshoeshop.entites.CommentEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.entites.ProductModel;
import com.group6.ntshoeshop.entites.PromotionDetailsEntity;
import com.group6.ntshoeshop.entites.PromotionsEntity;
import com.group6.ntshoeshop.entites.RattingEntity;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.model.RateModel;
import com.group6.ntshoeshop.repository.CategoryTypeRepository;
import com.group6.ntshoeshop.repository.ProductRepository;
import com.group6.ntshoeshop.service.CommentService;
import com.group6.ntshoeshop.service.ProductDetailsService;
import com.group6.ntshoeshop.service.ProductService;
import com.group6.ntshoeshop.service.PromotionDetailsService;
import com.group6.ntshoeshop.service.PromotionService;
import com.group6.ntshoeshop.service.RatingService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/product")
@SessionAttributes("cartItem")
public class ProductController {
    @Autowired
     ProductService productService;
    @Autowired
     ProductRepository productRepo;
    
    @Autowired
    ProductDetailsService productDetailsService;
    
    @Autowired
    PromotionDetailsService promotionDetailsService;
    
    @Autowired
    PromotionService promotionService;
    
    @Autowired
    RatingService rateService;
    @Autowired
    CommentService commentService;
    
    @Autowired
    CategoryTypeRepository categoryTypeRepo;
    
    @GetMapping
    public String Default(HttpSession httpSession, Model model){
     
        
        
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductEntity> listProduct = productRepo.findAllByOrderByProductIdDesc();
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        
        model.addAttribute("listProducts", listProducts);     
        return "product";
    }
    
    @GetMapping("/promotion")
    public String ProductPromotion(HttpSession httpSession, Model model){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductEntity> listProduct = productRepo.findAllByOrderByProductIdDesc();
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        
        model.addAttribute("listProducts", listProducts);     
        return "product";
    }
    
    
    @GetMapping("/{productId}")
    public String ProductDetails(HttpSession httpSession ,Model model, @PathVariable int productId){
        PromotionsEntity promotion = promotionService.getPromotion();
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        //Rate
        int totalRate = 0;
        int avgRate;
        ProductEntity product = productRepo.findOne(productId);
        int categoryId = product.getCategoryType().getTypeId();
        CategoryTypeEntity category = categoryTypeRepo.findOne(categoryId);
        List<ProductEntity> listProduct = productRepo.findTop3ByCategoryType(category);
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("moreProduct", listProducts);
        
        List<RattingEntity> listRates = rateService.getRateByProduct(product);
        for (int i = 0; i < listRates.size(); i++) {
            int rate = listRates.get(i).getRate();
            totalRate += rate;
        }
        
        if(totalRate == 0){
            avgRate = 0;
        }else{
            avgRate = totalRate / listRates.size();
        }
        model.addAttribute("avgRate", avgRate);
        model.addAttribute("rate", listRates.size());
            //get by rate
            RateModel rate1 = rateService.getRateProductByRate(product, 1);
            model.addAttribute("rate1", rate1);
            RateModel rate2 = rateService.getRateProductByRate(product, 2);
            model.addAttribute("rate2", rate2);
            RateModel rate3 = rateService.getRateProductByRate(product, 3);
            model.addAttribute("rate3", rate3);
            RateModel rate4 = rateService.getRateProductByRate(product, 4);
            model.addAttribute("rate4", rate4);
            RateModel rate5 = rateService.getRateProductByRate(product, 5);
            model.addAttribute("rate5", rate5);
//            end get by rate
        //end rate
        //comment
        List<CommentEntity> listComments = commentService.getAllCommentByProduct(product);
        model.addAttribute("comments", listComments);
//        end comment
        List<PromotionDetailsEntity> listPromotionDetails = promotionDetailsService.getListPromotionDetails();
        ProductModel productModel = productService.getPoductPromotingById(productId, listPromotionDetails);
         model.addAttribute("product", productModel);
         model.addAttribute("productColor", productDetailsService.getListColorOfProductByProductId(productId));
         model.addAttribute("topOrders", productService.getListProductTop8OrderByDesc());
        return "productdetails";
    }
    @GetMapping("/descending")
    public String PriceDescending(Model model){
        
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductEntity> listProduct = productRepo.findAllProductByPriceDesc();
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("listProducts", listProducts);
        return "product";
    }

    @GetMapping("/ascending")
    public String PriceAscending(Model model){
        
        PromotionsEntity promotion = promotionService.getPromotion();
        List<ProductEntity> listProduct = productRepo.findAllProductByPriceAsc();
        List<ProductModel> listProducts = productService.getListProducts(promotion, listProduct);
        model.addAttribute("listProducts", listProducts);
        return "product";
    }

}
