

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>N&T Shoes Shop</title>
        <jsp:include page="header.jsp" />
        <style>
             .flex-active-slide  li{
                 border: 2px solid red;
             }
             .activeColor{
                 background-color: #e6e6e6;
             }
             .activeSize{
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
            <div class="row" style="padding-top: 20px;">
                <div class="col-md-9 product-detail-content">
                    <div class="row">
                      <div class="col-md-6 col-sm-6">
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
                    <div class="col-md-6 col-sm-6" id="product-details">
                        <c:if test="${product  != null}">
                            <div class="product-details">
                                <input type="text" name="productId" class="productId" hidden value="${product.productId}" />
                                <h3 class="prodduct-name">${product.productName}</h3>
                                <input type="text" hidden name="productName" value="${product.productName}" />
                                <c:if test="${product.percent  != null}">
                                    <h4 class="product-price">Sell off ${product.percent}%</h4>
                                    <h4 class="product-price product-unitprice" data-price="${product.discount}">${product.discount} đ  &nbsp; <span><del style="color: gray">${product.price} đ</del></span> &nbsp; </h4>
                                  <input type="text" hidden name="price" value="${product.discount}" />  
                                  <input type="text" hidden name="promotionId" class="promotion" value="${product.promotionId}" />  
                                </c:if>

                        </c:if>
                                <c:if test="${product.percent  == null}"> 
                                    <h4 class="product-price product-unitprice"  data-price="${product.price}">${product.price} đ</h4>
                                    <input type="text" hidden name="price" value="${product.price}" />  
                                </c:if>


                                <h4>Chọn màu</h4>
                                <div class="product-color">
                                    
                                    <c:forEach var="color" items="${productColor}">
                                        <span>
                                            <a  class="btn btn-default color-product" data-color="${color.productColor.colorId}">${color.productColor.colorName}</a>
                                            <a hidden data-product-get-color="${color.product.productId}" class="productId-getColor" >${color.product.productName}</a>
                                        </span>    
                                    </c:forEach>
                                    
                                </div>
                                <h4>Chọn Size</h4>
                                <div id="product-size" class="product-color">


                                </div>
                            </div>
                            <div style="border: 1px solid #ddd; padding: 10px; border-radius: 5px; background: #ddd;">
                                <h4>MÔ TẢ SẢN PHẨM</h4>
                                <div style="margin-top: 10px;">
                                    <p>${product.description}</p>
                                </div>
                            </div>
                            <div >
                                <button type="submit" id="add-to-card" class="btn-add-cart">
                                    <h4>MUA NGAY</h4>
                                    <span>Giao tận nhà, đổi trả dễ dàng</span>
                                </button>
                            </div>
                        </div>   
                    </div>
                    <div class="row">
                       <!--Ratting-->
                                <div class="col-md-12 div-ratting" >

                                    <div class="row">
                                        <div class="table-rating" id="table-rating" style="width: 100%">
                                            <div>
                                                <div class="col-md-3 col-sm-3 col-xs-4">
                                                    <div style="text-align: center;margin-top: 30px;margin-bottom:30px;">
                                                        <span style="font-size: 50px; color: #fd9727; font-weight: bold;">${avgRate} <i class="fa fa-star" aria-hidden="true"></i></span><br>
                                                        <span>${rate} đánh giá</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-8" style="border-left: 1px solid #ddd; border-right:  1px solid #ddd;">
                                                    <div class="row"  style="margin: 0;">
                                                        <div class="side" style="margin: 0;">
                                                            <div>5 <i class="fa fa-star"></i></div>
                                                        </div>
                                                        <div class="middle">
                                                            <div class="bar-container">
                                                                <div class="bar-5" style="width: ${rate5.percent}%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div><span>${rate5.numberVotes} Đánh giá</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin: 0;">
                                                        <div class="side">
                                                            <div>4 <i class="fa fa-star"></i></div>
                                                        </div>
                                                        <div class="middle">
                                                            <div class="bar-container">
                                                                <div class="bar-4"  style="width: ${rate4.percent}%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div><span>${rate4.numberVotes} Đánh giá</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="margin: 0;">
                                                        <div class="side">
                                                            <div>3 <i class="fa fa-star"></i></div>
                                                        </div>
                                                        <div class="middle">
                                                            <div class="bar-container">
                                                                <div class="bar-3"  style="width: ${rate3.percent}%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div><span>${rate3.numberVotes} Đánh giá</span></div>
                                                        </div>    
                                                    </div>
                                                    <div class="row" style="margin: 0;">
                                                        <div class="side">
                                                            <div>2 <i class="fa fa-star"></i></div>
                                                        </div>
                                                        <div class="middle">
                                                            <div class="bar-container">
                                                                <div class="bar-2"  style="width: ${rate2.percent}%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="right">
                                                            <div><span>${rate2.numberVotes} Đánh giá</span></div>
                                                        </div>      
                                                    </div>
                                                    <div class="row" style="margin: 0;">
                                                        <div class="side">
                                                            <div>1 <i class="fa fa-star"></i></div>
                                                        </div>
                                                        <div class="middle">
                                                            <div class="bar-container">
                                                                <div class="bar-1"  style="width: ${rate1.percent}%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="right"  style="margin: 0;">
                                                            <div> <span>${rate1.numberVotes} Đánh giá</span></div>
                                                        </div>     
                                                    </div>

                                                </div>
                                                <div class="col-md-3 col-sm-3 col-xs-12 rating-col-sm">
                                                    <div style="text-align: center">
                                                        <button class="btn btn-success open-rating">Gửi đánh giá của bạn</button>
                                                        <button class="btn btn-default close-rating" style="display: none;">Đóng lại</button>
                                                    </div>

                                                </div>
                                            </div>
                                            <div style="border-top: 1px solid #ddd;">
                                                <div  class="rateDisplay" style="display: none;" >
                                                    <div class="row">
                                                        <fieldset class="rating" id="ratingSystem">
                                                        <span>Chọn đánh giá của bạn: </span>
                                                        <input type="radio" id="star5" name="rating" data-product="${product.productId}" value="5" /><label class = "full" for="star5"></label>
                                                        <input type="radio" id="star4" name="rating" data-product="${product.productId}" value="4" /><label class = "full" for="star4" ></label>
                                                        <input type="radio" id="star3" name="rating" data-product="${product.productId}" value="3" /><label class = "full" for="star3" ></label>
                                                        <input type="radio" id="star2" name="rating" data-product="${product.productId}" value="2" /><label class = "full" for="star2" ></label>
                                                        <input type="radio" id="star1" name="rating" data-product="${product.productId}" value="1"  /><label class = "full" for="star1" ></label>
                                                    </fieldset>
                                                    </div>
                                                        <c:if test="${user == null}">
                                                            <div class="row">

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <textarea class="form-control" rows="3" data-product="${product.productId}" id="comment" placeholder="Nhập đánh giá về sản phẩm"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group col-md-6">
                                                                        <input type="text" class="form-control" id="customer-name" placeholder="Họ Tên">
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <input type="text" class="form-control" id="email-customer" placeholder="Email">
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <button style="width: 100%" class="btn btn-primary btn-send-rating">Gửi đánh giá</button>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </c:if>
                                                        <c:if test="${user != null}">
                                                            <div class="row">

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <textarea class="form-control" rows="3" data-product="${product.productId}" id="comment" placeholder="Nhập đánh giá về sản phẩm"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group col-md-6">
                                                                        <input type="hidden" class="form-control" id="customer-name" value="${user.name}" placeholder="Họ Tên">
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <input type="hidden" class="form-control" id="email-customer" value="${user.email}"  placeholder="Email">
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <button style="width: 100%" class="btn btn-primary btn-send-rating">Gửi đánh giá</button>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </c:if>
                                                    

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-12 comment-product" style="">
                                    <c:if test="${comments != null}">
                                        <div  id="user-comment-product">
                                            <ul>
                                        <c:forEach var="comment" items="${comments}">
                                                    <li class="user-comment">
                                                        <span>Bởi: <span style="font-weight: bold;"> ${comment.name}</span></span>
                                                        <br>
                                                        <span>${comment.comment}</span>
                                                    </li>   
                                        </c:forEach>
                                            </ul>
                                        </div>
                                    </c:if>
                                    <c:if test="${comments == null}">
                                        aaaaaaaaaaaaaaa
                                    </c:if>
                                   
                                </div>
                                
                        <!--end Rating-->             
                    </div>
                                               
                </div> 
                        
                <div class="col-md-3">
                    <div class="show-more-product" >
                        <h4 style="margin: 10px; border-bottom: 2px solid #ddd;">Sản phẩm cùng thể loại</h4>
                        <c:if test="${moreProduct!=null}">
                            <c:forEach var="product" items="${moreProduct}">
                                <div class="col-md-12 product-mens">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="${pageContext.request.contextPath}/resources/images/${product.image1}" alt="${product.productName}">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="${pageContext.request.contextPath}/product/${product.productId}" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>

                                            <c:if test="${product.discount != null}">
                                                <span class="product-new-top">Sell ${product.percent} %</span>
                                            </c:if>
                                        </div>
                                        <div class="item-info-product ">
                                            <h4>
                                                <a href="${pageContext.request.contextPath}/product/${product.productName}${product.productId}">${product.productName}</a>
                                            </h4>
                                            <div class="info-product-price">

                                                <c:if test="${product.discount != null}">
                                                    <span class="item_price">${product.discount}</span>
                                                    <del>${product.price}</del>
                                                </c:if>
                                                <c:if test="${product.discount == null}">
                                                    <span class="item_price">${product.price}</span>


                                                </c:if>

                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                <a href="${pageContext.request.contextPath}/product/${product.productId}"><button class="btn btn-info btn-add-cart">Xem sản phẩm</button></a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>         
        </div>
        <!--end content 1-->
        
        <!--top selling products-->
      
      <div class="top-selling div-bottom">
         

          <div class="container detail-more" >
      
              <div class="product-sec1">
                  <div class="heading-tittle">
                      <h3 class="heading-tittle" style="border-bottom: 1px solid #ddd;">Sản Phẩm Bán Chạy</h3>
                     
                  </div>
                  <c:forEach var="topOrders" items="${topOrders}" begin="0" end="3">
                      <div class="col-md-3 col-sm-6 product-mens">
                          <div class="men-pro-item simpleCart_shelfItem">
                              <div class="men-thumb-item">
                                  <img src="${pageContext.request.contextPath}/resources/images/${topOrders.image1}" alt="">
                                  <div class="men-cart-pro">
                                      <div class="inner-men-cart-pro">
                                          <a href="${pageContext.request.contextPath}/product/${topOrders.productId}" class="link-product-add-cart">Xem Sản Phẩm</a>
                                      </div>
                                  </div>
                                  <span class="product-new-top">Bán Chạy</span>
                              </div>
                              <div class="item-info-product ">
                                  <h4>
                                      <a href="single.html">${topOrders.productName}</a>
                                  </h4>
                                  <div class="info-product-price">
                                      <span class="item_price">${topOrders.unitprice}</span>
                                      
                                  </div>
                                  <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                      <a href="${pageContext.request.contextPath}/product/${topOrders.productId}"><button class="btn btn-info btn-add-cart">Xem sản phẩm</button></a>
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
