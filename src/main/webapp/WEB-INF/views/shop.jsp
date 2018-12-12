

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>N&T Shoes Shop</title>
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <!--        navbar-->
        <div>
            <jsp:include page="navbar.jsp" />
        </div>
        <!--navbar-->

        <!--top selling products-->

        <div class="top-selling">
            <div class="container-fluid">
                <div class="row banner-top-product">
                    <div class="col-md-12 col-sm-12">
                        <div class="banner-top-selling">
                            <a class="banner-selling"  href=""><img  class=" img-banner -selling" src="${pageContext.request.contextPath}/resources/images/banchay_web_1200x400_1112018.jpg"></a>
                        </div>
                    </div>

                </div>

            </div>

            <div class="container detail-more">

                <div class="product-sec1">
                    <div class="heading-tittle">
                        <h3 class="heading-tittle">Sản Phẩm Bán Chạy</h3
                    </div>

                    <c:if test="${listTopOrders!=null && fn:length(listProducts)>0}">
                        <c:forEach var="product" items="${listTopOrders}" begin="0" end="7">
                            <div class="col-md-3 col-sm-6 product-mens">
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
                                        <c:if test="${product.discount == null}">
                                            <span class="product-new-top">Bán chạy</span>
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

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <!--end top selling products-->
        <!--top new products-->

        <div class="top-selling">
            <div class="container-fluid">
                <div class="row banner-top-product">
                    <div class="col-md-12 col-sm-12">
                        <div class="banner-top-selling">
                            <a class="banner-selling"  href=""><img  class=" img-banner -selling" src="${pageContext.request.contextPath}/resources/images/top-sp-moi_web_1200x400_2_1112018.jpg"></a>
                        </div>
                    </div>

                </div>

            </div>

            <div class="container detail-more">
                <div class="product-sec1">
                    <div class="heading-tittle">
                        <h3 class="heading-tittle">Sản Phẩm Mới</h3>
                    </div>
                    <c:forEach var="newProduct" items="${listProducts}">
                        <div class="col-md-3 col-sm-6  product-mens">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="${pageContext.request.contextPath}/resources/images/${newProduct.image1}" alt="">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="${pageContext.request.contextPath}/product/${newProduct.productId}" class="link-product-add-cart">Xem Sản Phẩm</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">Mới</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <a href="single.html">${newProduct.productName}</a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">${newProduct.unitprice}</span>

                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <a href="${pageContext.request.contextPath}/product/${newProduct.productId}"><button class="btn btn-info btn-add-cart">Xem sản phẩm</button></a>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </c:forEach>            

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <!--end top new products-->
        <!--top promotions products-->
        
        <c:if test="${promotion != null&& fn:length(promotion)>0}" >
            <div class="top-selling div-bottom">
                <div class="container-fluid">
                    <div class="row banner-top-product">
                        <div class="col-md-12 col-sm-12">
                            <div class="banner-top-selling">
                                <a class="banner-selling"  href=""><img  class=" img-banner -selling" src="${pageContext.request.contextPath}/resources/images/top-sp-moi_web_1200x400_2_1112018.jpg"></a>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="container detail-more">

                    <div class="product-sec1">
                        <div class="heading-tittle">
                            <h3 class="">Khuyến Mãi</h3>

                            <p>Những sản phẩm thuộc bộ sưu tập cũ được bán giá cực tốt</p>


                        </div>
                        <c:forEach var="promotion" items="${promotion}" begin="0" end="7">
                            <div class="col-md-3 col-sm-6  product-mens">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item">
                                        <img src="${pageContext.request.contextPath}/resources/images/${promotion.image1}" alt="">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="${pageContext.request.contextPath}/product/${promotion.productId}" class="link-product-add-cart">Xem Sản Phẩm</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Sales ${promotion.percent} %</span>
                                    </div>
                                    <div class="item-info-product ">
                                        <h4>
                                            <a href="single.html">${promotion.productName}</a>
                                        </h4>
                                        <div class="info-product-price">
                                            <span id="item-price-promotion" class="item_price">${promotion.discount}</span>
                                            <del>${promotion.price}</del>
                                        </div>
                                        <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <a href="${pageContext.request.contextPath}/product/${promotion.productId}"><button class="btn btn-info btn-add-cart">Xem sản phẩm</button></a>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </c:forEach>            

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </c:if>
        <!--end top promotions products-->



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
