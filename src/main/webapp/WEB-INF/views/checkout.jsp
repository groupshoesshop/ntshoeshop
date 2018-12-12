

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!--content-->
        <div class="container cart-manager detail-more">
            
            <div class="row">
                
                <div class="col-md-8">
                    <h4 style="text-align: center;  padding-bottom: 20px; padding-top: 20px;">Danh sách sản phẩm</h4>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <th>Màu</th>
                                <th>Size</th>
                                <th>Số lượng</th>
                                <th>Giá</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody> 
                            
                            <c:if test="${cartItem != null}">
                                <c:forEach var="item" items="${cartItem}">
                                    <tr>
                                        <td class="product" data-product="${item.productId}">${item.productName}</td>
                                        <td class="color" data-color="${item.colorId}">${item.colorName}</td>
                                        <td class="size"  data-size="${item.sizeId}">${item.sizeName}</td>
                                        <td><input type="number" class="item-quantity" value="${item.quantity}" style="width: 20%; text-align: center;"  /></td>
                                        <td><span class="item-price" data-price="${item.price}">${item.price} </span> đ<span></span></td>
                                        <td style="text-align: right;"><button type="submit" class="btn btn-warning btn-delete-cart">Xóa</button></td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            
                            
                        </tbody>
                    </table>
                    <div class="">
                        <h4 class="toal-price" >Tổng Tiền: <span id="totalPrice" style="color: red;"></span><span> VND</span></h4>
                    </div>
                </div>
                <c:if test="${user != null}">
                    <div class="col-md-4">
                        <h4 style="text-align: center; padding-bottom: 20px;  padding-top: 20px;">Thông Tin Khách Hàng</h4>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="customer-name">Tên Khách hàng: ${user.name}</label>
                                <input type="hidden" class="form-control" id="customer-name" value="${user.name}" placeholder="Nhập tên khách hàng" name="customerName">
                            </div>
                            <div class="form-group">
                                <label for="address">Địa chỉ: ${user.address}</label>
                                <input type="hidden" class="form-control" id="address"  value="${user.address}" placeholder="Địa chỉ nhận hàng" name="address">
                            </div>
                            <div class="form-group">
                                <label for="email">Email: ${user.email}</label>
                                <input type="hidden" class="form-control" id="email"  value="${user.email}"  placeholder="Email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="phone-number">Thông tin liên hệ: ${user.phonenumber}</label>
                                <input type="hidden" class="form-control" id="phone-number" value="${user.phonenumber}"  placeholder="Số điện thoại liên hệ" name="phoneNumber">
                            </div>

                            <button type="submit" class="btn btn-success" style="width: 100%;">Đặt hàng</button>
                        </form>
                    </div>            
                </c:if>
                <c:if test="${user == null}">
                    <div class="col-md-4">
                        <h4 style="text-align: center; padding-bottom: 20px;  padding-top: 20px;">Thông Tin Khách Hàng</h4>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="customer-name">Tên Khách hàng:</label>
                                <input type="text" class="form-control" id="customer-name" placeholder="Nhập tên khách hàng" name="customerName">
                            </div>
                            <div class="form-group">
                                <label for="address">Địa chỉ:</label>
                                <input type="text" class="form-control" id="address" placeholder="Địa chỉ nhận hàng" name="address">
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="phone-number">Thông tin liên hệ:</label>
                                <input type="text" class="form-control" id="phone-number" placeholder="Số điện thoại liên hệ" name="phoneNumber">
                            </div>

                            <button type="submit" class="btn btn-success" style="width: 100%;">Thanh toán</button>
                        </form>
                    </div>            
                </c:if>
                
            </div>
        </div>
        <div id="myMessage" class="message">
            <div class="message-content">
                <div>
                    <span>Update số lượng thành công</span>
                </div>
                <div style="text-align: right;">
                    <button class="btn btn-default btn-close">OK</button>
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
