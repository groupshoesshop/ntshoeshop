

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="container detail-more" style="margin-bottom:  20px;">
            <div class="row">
                
                <div class="col-md-12">
                    
                    <h4 style="text-align: center;  padding-bottom: 20px; padding-top: 20px;">Danh sách sản phẩm</h4>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <th>Màu</th>
                                <th>Size</th>
                                <th>Số lượng</th>
                                <th>Giá</th>
                                <th>Ngày mua</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:if test="${ordermanager != null}">
                                <c:forEach var="order" items="${ordermanager}">
                                    <tr>
                                        <td >${order.productDetails.product.productName}</td>
                                        <td> ${order.productDetails.productColor.colorName}</td>
                                        <td >${order.productDetails.productSize.sizeName}</td>
                                        <td >${order.quantity}</td>
                                        <td >${order.unitprice}</td>
                                        <td> ${order.order.date}</td>
                                        
                                    </tr>
                                </c:forEach>
                            </c:if>
                            
                            
                        </tbody>
                    </table>
                </div>
                
            </div>
        </div>
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
