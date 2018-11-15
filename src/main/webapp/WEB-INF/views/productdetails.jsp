

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
        <style>
             .flex-active-slide  li{
                 border: 2px solid red;
             }
             .activeColor{
                 background-color: #e6e6e6;
             }
         </style>
        
    </head>
    <body>
        <!--        navbar-->
        <div>
            <jsp:include page="navbar.jsp" />
        </div>
        <!--navbar-->
        
        <!--content 1-->
        <div class="container" style="margin-top: 20px;">
            <div class="row">
                
                    
                <div class="col-md-5">
                    <div style="width: 90%">
                        <div id="container" class="cf">

                            <div id="main" role="main">
                                <section class="slider">
                                    <div id="slider" class="flexslider">
                                        <ul class="slides">
                                            <li>
                                                <img style="width: 100%" src="${pageContext.request.contextPath}/resources/images/${product.image1}" />
                                            </li>
                                            <li>
                                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/${product.image2}" />
                                            </li>
                                            <li>
                                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/${product.image3}" />
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="carousel" class="flexslider">
                                        <ul class="slides" >
                                            <li>
                                                <img style="width: 100%" src="${pageContext.request.contextPath}/resources/images/${product.image1}" />
                                            </li>
                                            <li>
                                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/${product.image2}" />
                                            </li>
                                            <li>
                                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/${product.image3}" />
                                            </li>
                                            
                                        </ul>
                                    </div>
                                </section>

                            </div>


                        </div>
  
                    </div>
                   
                </div>
                    <div class="col-md-4">
                        <c:if test="${promotion.productName  != null}">
                            
                            <div class="product-details">
                            <h3 class="prodduct-name">${product.productName}</h3>
                            <h4 class="product-price">Sell off ${promotion.percent}%</h4>
                            <h4 class="product-price">${promotion.discount} đ  &nbsp; <span><del style="color: gray">${promotion.price} đ</del></span> &nbsp; </h4>
                            
                        </c:if>
                        <c:if test="${promotion.productName  == null}">
                            <div class="product-details">
                                <h3 class="prodduct-name">${product.productName}</h3>
                                <h4 class="product-price">${product.unitprice} đ</h4>
                        </c:if>
                        
                        
                            <h4>Chọn màu</h4>
                            <div class="product-color">
                                
                                    <c:forEach var="color" items="${productColor}">
                                        <span>
                                            <button type="submit" class="btn btn-default color-product" data-color="${color.productColor.colorId}">${color.productColor.colorName}</button>
                                            <button hidden data-product-get-color="${color.product.productId}" class="productId-getColor" >${color.product.productName}</button>
                                        </span>
                                        
                                        
                                    </c:forEach>
                                
                            </div>
                            <h4>Chọn Size</h4>
                            <div id="product-size" class="product-color">
                                
                                
                            </div>
                        </div>
                        <div >
                            <button type="submit" class="btn-add-cart">
                                <h4>MUA NGAY</h4>
                                <span>Giao tận nhà, đổi trả dễ dàng</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h4>MÔ TẢ SẢN PHẨM</h4>
                        <div style="margin-top: 10px;">
                            <p>${product.description}</p>
                        </div>
                        
                    </div>
            </div>
            
        </div>
        <!--end content 1-->
        <!--top selling products-->
      
      <div class="top-selling">
         

           <div class="container">
      
              <div class="product-sec1">
                  <div class="heading-tittle">
                      <h3 class="heading-tittle">Sản Phẩm Bán Chạy</h3>
                     
                  </div>
                  <c:forEach var="topSelling" items="${ListTopSelling}">
                      <div class="col-md-3 col-sm-6 product-mens">
                          <div class="men-pro-item simpleCart_shelfItem">
                              <div class="men-thumb-item">
                                  <img src="${pageContext.request.contextPath}/resources/images/${topSelling.image1}" alt="">
                                  <div class="men-cart-pro">
                                      <div class="inner-men-cart-pro">
                                          <a href="${pageContext.request.contextPath}/product/${topSelling.productId}" class="link-product-add-cart">Xem Sản Phẩm</a>
                                      </div>
                                  </div>
                                  <span class="product-new-top">Bán Chạy</span>
                              </div>
                              <div class="item-info-product ">
                                  <h4>
                                      <a href="single.html">${topSelling.productName}</a>
                                  </h4>
                                  <div class="info-product-price">
                                      <span class="item_price">${topSelling.unitprice}</span>
                                      
                                  </div>
                                  <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                      <form action="#" method="post">
                                          <fieldset>
                                              <input type="hidden" name="cmd" value="_cart" />
                                              <input type="hidden" name="add" value="1" />
                                              <input type="hidden" name="business" value=" " />
                                              <input type="hidden" name="item_name" value="Almonds, 100g" />
                                              <input type="hidden" name="amount" value="149.00" />
                                              <input type="hidden" name="discount_amount" value="1.00" />
                                              <input type="hidden" name="currency_code" value="USD" />
                                              <input type="hidden" name="return" value=" " />
                                              <input type="hidden" name="cancel_return" value=" " />
                                              <input class="btn btn-info btn-add-cart" type="submit" name="submit" value="Add to cart" class="button" />
                                          </fieldset>
                                      </form>
                                  </div>

                              </div>
                          </div>
                      </div>

                  </c:forEach>            
 
                  </div>
                  <div class="clearfix"></div>
              </div>
          </div>
      <!--end top selling products-->
        <!--        footer-->
        <div>
            <jsp:include page="footer1.jsp" />
        </div>
<!--        //script-->
        <div>
            <!-- jQuery -->
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
             <!-- FlexSlider -->
            <script defer src="${pageContext.request.contextPath}/resources/js/jquery.flexslider.js"></script>

            <script type="text/javascript">
              $(function(){
                SyntaxHighlighter.all();
              });
              $(window).load(function(){
                $('#carousel').flexslider({
                  animation: "slide",
                  controlNav: false,
                  animationLoop: false,
                  slideshow: false,
                  itemWidth: 100,
                  itemMargin: 0,
                  asNavFor: '#slider'
                });

                $('#slider').flexslider({
                  animation: "slide",
                  controlNav: false,
                  animationLoop: false,
                  slideshow: false,
                  sync: "#carousel",
                  start: function(slider){
                    $('body').removeClass('loading');
                  }
                });
              });
            </script>

            
            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
