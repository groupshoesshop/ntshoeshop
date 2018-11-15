

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
        <div class="container cart-manager">
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
                            <tr>
                                <td>Rocky chukka Boots BO05008</td>
                                <td>Nâu</td>
                                <td>38</td>
                                <td><input type="number" value="1" style="width: 20%" /></td>
                                <td><span>690,000đ</span></td>
                                <td  style="text-align: right;"><button type="submit" class="btn btn-warning btn-delete-cart">Xóa</button></td>
                            </tr>
                            <tr>
                                <td>Rocky chukka Boots BO05008</td>
                                <td>Nâu</td>
                                <td>38</td>
                                <td><input type="number" value="1" style="width: 20%" /></td>
                                <td><span>690,000đ</span></td>
                                <td style="text-align: right;"><button type="submit" class="btn btn-warning btn-delete-cart">Xóa</button></td>
                            </tr>
                            <tr>
                                <td>Rocky chukka Boots BO05008</td>
                                <td>Nâu</td>
                                <td>38</td>
                                <td><input type="number" value="1" style="width: 20%" /></td>
                                <td><span>690,000đ</span></td>
                                <td style="text-align: right;"><button type="submit" class="btn btn-warning btn-delete-cart">Xóa</button></td>
                            </tr>
                            <tr>
                                <td>Rocky chukka Boots BO05008</td>
                                <td>Nâu</td>
                                <td>38</td>
                                <td><input type="number" value="1" style="width: 20%" /></td>
                                <td><span>690,000đ</span></td>
                                <td style="text-align: right;"><button type="submit" class="btn btn-warning btn-delete-cart">Xóa</button></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <div class="">
                        <h4 class="toal-price">Tổng Tiền: <span style="color: red;">690,000đ</span></h4>
                    </div>
                </div>
                <div class="col-md-4">
                    <h4 style="text-align: center; padding-bottom: 20px;  padding-top: 20px;">Thông Tin Khách Hàng</h4>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="customer-name">Tên Khách hàng:</label>
                            <input type="text" class="form-control" id="customer-name" placeholder="Nhập tên khách hàng" name="customer-name">
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ:</label>
                            <input type="text" class="form-control" id="address" placeholder="Địa chỉ nhận hàng" name="address">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Thông tin liên hệ:</label>
                            <input type="text" class="form-control" id="phone-number" placeholder="Số điện thoại liên hệ" name="phone-number">
                        </div>
                        
                        <button type="submit" class="btn btn-success" style="width: 100%;">Thanh toán</button>
                    </form>
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
