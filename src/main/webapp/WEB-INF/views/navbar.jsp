

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="fix-top-nav">
  <div class="container">
      <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-hidden">
              <ul class="" style="    margin: auto; margin-top: 15px;"> 
              <li> <p style="color: #9d9d9d; margin: auto; font-weight: bold;">Hotline: 0123456789   |   0123789456</p></li>
          </ul>
          </div>
          
          <div class="col-md-6  col-sm-6 col-xs-12">
            <ul class="nav-fixed" style="">
                <c:if test="${user != null}">
                    <li class="dropdown"><span class="glyphicon glyphicon-user" style="color: #9d9d9d;"></span>
                        <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.name}
                            <span class="caret"></span>
                        </a>
                            <ul class="dropdown-menu multi-column" style="margin-top: 13px;">
                            <div class="agile_inner_drop_nav_info row">
                                
                                    <ul class="multi-column-dropdown">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/user">Profile</a>
                                        </li>
                                        <li class="">
                                            <a href="${pageContext.request.contextPath}/user/order-manager">Order Manager</a>
                                        </li>

                                        <li>
                                            <a href="${pageContext.request.contextPath}/user/logout">Logout</a>
                                        </li>


                                    </ul>
                                
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${user == null}">
                    <li><a href="${pageContext.request.contextPath}/user/register" style=""><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/login" style=";"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </c:if>
                <li style=""><a href="${pageContext.request.contextPath}/cart" style="padding: 0;"><span class="glyphicon glyphicon-shopping-cart cart-items"></span></a><span class="quantity-cart-items">${quantityItem}</span></li>
            </ul>
        </div>
          
      </div>
    
  </div>
</div>
 <!--header inner-->
 <div class="header-inner">
     <div class="row" style="padding: 20px; height: 130px;">
         <div class="col-sm-6 col-md-6">
             <h2 class="logo-shoeshop"><a href="${pageContext.request.contextPath}"><span>N&T</span> Shoes </a></h2>
         </div>
         <div class="col-sm-6 col-md-6 ">
             <!-- search -->
             <div class="agileits_search">
                 <form class="example" method="post" action="${pageContext.request.contextPath}/search" style="margin:auto;max-width:300px">
                     <input type="text" placeholder="Search.." name="search">
                     <button type="submit"><i class="fa fa-search"></i></button>
                 </form>
                 
             </div>
             <!-- //search -->
         </div>
        
     </div>   
 </div>

 <!--//header inner-->
<!--        header-->  
      <nav class="navbar navbar-default">
          <div class="container-fluid">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                          aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                  </button>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav menu__list">
                      <li class="active">
                          <a class="nav-stylehead" href="${pageContext.request.contextPath}">Home
                              <span class="sr-only">(current)</span>
                          </a>
                      </li>
                      
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Giày Da
                              <span class="caret"></span>
                          </a>
                          <ul class="dropdown-menu multi-column columns-3">
                              <div class="agile_inner_drop_nav_info row">
                                  <div class="col-sm-12 col-md-12 multi-gd-img">
                                      <ul class="multi-column-dropdown">
                                          <li>
                                              <a href="${pageContext.request.contextPath}/CategoryType/4">Giày Rọ</a>
                                          </li>
                                          <li class="">
                                              <a class="nav-stylehead" href="${pageContext.request.contextPath}/CategoryType/2">Giày lười</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/CategoryType/5">Giày Mọi</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/CategoryType/6">Giày SABO</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/CategoryType/7">Giày Tây</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/CategoryType/8">Boot Da</a>
                                          </li>
                                          
                                      </ul>
                                  </div>
                                  
                                  <div class="clearfix"></div>
                              </div>
                          </ul>
                      </li>
                      <li class="">
                          <a class="nav-stylehead" href="${pageContext.request.contextPath}/CategoryType/1">Giày thể thao</a>
                      </li>
                      <li class="">
                          <a class="nav-stylehead" href="${pageContext.request.contextPath}/CategoryType/9">Giày cổ điển</a>
                      </li>
                      <li class="">
                          <a class="nav-stylehead" href="${pageContext.request.contextPath}/CategoryType/10">Boot</a>
                      </li>
                      <li class="">
                          <a class="nav-stylehead" href="${pageContext.request.contextPath}/CategoryType/3">Sandal-Dép</a>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Thương Hiệu
                              <span class="caret"></span>
                          </a>
                          <ul class="dropdown-menu multi-column columns-3">
                              <div class="agile_inner_drop_nav_info row">
                                  <div class="col-sm-12 col-md-12 multi-gd-img">
                                      <ul class="multi-column-dropdown">
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/1">Giày Nike</a>
                                          </li>
                                          <li class="">
                                              <a href="${pageContext.request.contextPath}/Brand/2">Giày Addidas</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/3">Giày Antoni Fernando</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/4">Giày ALDO</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/5">Giày Everest</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/6">Giày Geox</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/7">Vina-Giầy</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/8">Vũ Chầm</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/9">Giày Converse</a>
                                          </li>
                                          <li>
                                              <a href="${pageContext.request.contextPath}/Brand/10">Giày Vans</a>
                                          </li>
                                          
                                      </ul>
                                  </div>
                                  <div class="clearfix"></div>
                              </div>
                          </ul>
                      </li>
                     
                  </ul>
              </div>
          </div>
      </nav>
<!--        //header-->
