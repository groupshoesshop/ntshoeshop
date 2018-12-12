

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
        <div class="container cart-manager detail-more">
            <h4 style="text-align: center;  padding-bottom: 60px; padding-top: 20px;">Thông tin khách hàng</h4>
            
            <div class="row">
                
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Tên Khách Hàng:</h4>
                        </div>
                        <div class="col-md-7">
                            <h4>${user.name}</h4>
                        </div>
                    </div>
                        <br>
                        <br>
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Ngày Sinh:</h4>
                        </div>
                        <div class="col-md-7">
                            <h4>${user.birthday}</h4>
                        </div>
                    </div>
                        <br>
                        <br>
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Địa chi:</h4>
                        </div>
                        <div class="col-md-7">
                            <h4>${user.address}</h4>
                        </div>
                    </div>
                        <br>
                        <br>
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Điện Thoại Liên Hệ:</h4>
                        </div>
                        <div class="col-md-7">
                            <h4>${user.phonenumber}</h4>
                        </div>
                    </div>
                        <br>
                        <br>
                    <div class="row">
                        <div class="col-md-5">
                            <h4>Email:</h4>
                        </div>
                        <div class="col-md-7">
                            <h4>${user.email}</h4>
                        </div>
                    </div>
                    
                    
                    
                </div>
                <div class="col-md-6">
                    
                        <c:if test="${user != null}">
                            <form action="" method="post">
                             <div class="form-group">
                            <input type="hidden" readonly class="form-control" value="${user.userId}" name="userId">
                            <label for="customer-name">Tên Khách hàng:</label>
                            <input type="text" class="form-control" id="customer-name" value="${user.name}" name="name">
                        </div>
                        <div class="form-group">
                            <label for="address">Birthday:</label>
                            <input type="text" class="form-control" id="birthday" value="${user.birthday}" name="birthday">
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ:</label>
                            <input type="text" class="form-control" id="address" value="${user.address}" name="address">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Điện thoại liên hệ:</label>
                            <input type="text" class="form-control" id="phone-number" value="${user.phonenumber}" name="phonenumber">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Email:</label>
                            <input type="text" readonly class="form-control" value="${user.email}" name="email">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Mật khẩu:</label><span style="color: red;"> ${password}</span>
                            <input type="password" required class="form-control" value="" placeholder="password" name="password">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Mật khẩu mới: </label>
                            <input type="password" required class="form-control" value="" placeholder="new password" name="newPassword">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Nhập lại mật khẩu: </label> <span style="color: red;">${repPassword}</span>
                            <input type="password" required class="form-control" value="" placeholder="rep password" name="repPassword">
                        </div>
                        
                        <button type="submit" class="btn btn-success" style="width: 100%;">Update Profile</button>   
                            </form>
                        </c:if>
                    
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
