

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <!--        navbar-->
        <div>
            <jsp:include page="navbar.jsp" />
        </div>
        <!--navbar-->
        <!--content-->
        <div class="top-selling">
         

          <div class="container">
      
              <div class="product-sec1">
                  <div class="heading-tittle">
                     <h3 class="heading-tittle">Tất cả sản phẩm</h3>
                     
                  </div>
                  <div class="seach-price">
                      <h4 style="padding-right: 10px;">SẮP XẾP THEO:  </h4>
                      <span><a href="">Bán chạy nhất</a></span>
                      <span class="free-space-category">|</span>
                      <span><a href="">Giảm dần</a></span>
                      <span class="free-space-category">|</span>
                      <span><a href="">Tăng dần</a></span>
                  </div>
                  
                  <!--product-->
                  <c:if test="${listProducts!=null && fn:length(listProducts)>0}">
                      <c:forEach var="product" items="${listProducts}">
                          <div class="col-md-3 product-mens">
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
                  </c:if>
                  <c:if test="${listProducts==null && fn:length(listProducts)<=0}">
                      <p style="color: red;">không tồn tại</p>
                  </c:if>
                              <!--end product-->

                  <div class="clearfix"></div>
              </div>
          </div>


      </div>
      <!--end top selling products-->
        <!--end content-->
        <!--        footer-->
        <div>
            <jsp:include page="footer1.jsp" />
        </div>
<!--        //script-->
        <div>
            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
