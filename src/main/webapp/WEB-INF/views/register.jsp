

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
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
        <div class="container">
            <div class="register-form  login-form">
                <h3 style="text-align: center;">Register</h3>
                
                <form action="" method="post">
                    <div class="form-group">
                        <label for="name">Tên khách hàng: </label>
                        <input type="text" class="form-control" id="name" value="${user.name}" name="name">
                    </div>
                    <div class="form-group">
                        <label for="address">Địa chỉ: </label>
                        <input type="text" class="form-control" id="address"  value="${user.address}" name="address">
                    </div>
                    <div class="form-group">
                        <label for="phonenumber">Số điện thoại liên hệ: </label>
                        <input type="tel" class="form-control" id="phonenumber" value="${user.phonenumber}" name="phonenumber">
                    </div>
                    <div class="form-group">
                        <label for="birthday">Ngày sinh: </label>
                        <input type="date" class="form-control" id="birthday" value="${user.birthday}" name="birthday">
                    </div>
                    <div class="form-group">
                        <label for="email">Email: </label><span style="color: red;">${errorEmail}</span>
                        <input type="email" class="form-control" id="email"  value="${user.email}" name="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control" id="pwd" name="password">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="form-control btn btn-success" value="Đăng kí">
                    </div>
                </form>
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
