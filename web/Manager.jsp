<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


<%@page import="Model.Shirt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstsrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>-->
        <!-- link cua slide bar -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googl/eapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="Css/Manager.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="header-contact">
            <div class="col-12 text-center">
                <p>Hotline Mua hàng: </p>
                <span>0943189438</span>
                <p> Hotline CSKH :</p>
                <span>0943189438</span>
                <p> Chat CSKH :</p>
                <a href="https://www.facebook.com/huy.nguyenvan.7543653/">Facebok</a>
            </div>
        </div>
        <!--<p>heeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>-->
        <!--    <h2 style="margin:150px 48%">Shop Ngọc Ánh</h2>-->
        <div class="header-center container">
            <div class="header-center-img">
                <div class="header-img">
                    <!--<img src="img/logodoc.png" alt="">-->
                    <!--<img src="../img/logodoc.png" alt=""/>-->

                    <img src="img/logo.png" alt=""/>
                </div>

                <div class="header-center-icon">
                    <div class="header-control">
                        <a href="signin">
                            <i class="fas fa-user-circle"></i>
                        </a>
                        <div class="d-flex justify-content-center h-100">
                            <div class="searchbar">
                                <input class="search_input" type="text" name="" placeholder="Search...">
                                <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                            </div>
                        </div>
                        <a href="/paging/giohang.jsp" class="icon-cart position-relative">
                            <i class="fas fa-shopping-bag"></i>
                            <span class="count-cart">
                            </span>
                        </a>
                        <a href="" class="icon-menu-mobile d-lg-none">
                            <i class="fas fa-bars"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="bs-example">
                <div class="btn-group">
                    <button type="button" class="btn" >
                        <a href="Home" class="dropdown-item">Trang Chủ</a>
                    </button>
                    <!-- <button type="button" class="btn btn">Action</button> -->
                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Áo Nam
                    </button>
                    <div class="dropdown-menu">
                        <a href="somi" class="dropdown-item">Sơ Mi</a>
                        <a class="dropdown-item" href="aoPhong">Áo Phông</a>
                        <a class="dropdown-item" href="#">Áo Phao</a>
                        <a class="dropdown-item" href="#">Áo Thể Thao</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Quần Nam
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="quanBo">Quần Bò</a>
                        <a class="dropdown-item" href="#">Quần Âu</a>
                        <a class="dropdown-item" href="#">Quần Joger</a>
                        <a class="dropdown-item" href="#">Áo Thể Thao</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Giày
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Giày Thể Thao</a>
                        <a class="dropdown-item" href="#">Giày Da</a>
                        <a class="dropdown-item" href="#">Giày Convert</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Phụ Kiện
                    </button>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Thắt Lưng</a>
                        <a href="#" class="dropdown-item">Đồng Hồ</a>
                        <a href="#" class="dropdown-item">Vi Da</a>
                    </div>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn " data-toggle="dropdown">
                        Bộ Thể Thao
                    </button>
                </div>

            </div>

        </div>

        <div class="pn"></div>
        <div class="container-fluid " style="margin-top: 50px;font-size: 30px">
            ${requestScope.mes}</div>
            <div class="row">
                <div class="col-md-4">
                    <button style="margin-left: 20%"><a href="AddProduct.jsp">Add and Update Product</a></button>
                </div>
            </div>
        <div class="cart_section">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-10 offset-lg-1">
                        <div class="cart_container">
                            <div class="cart_title">Shopping Cart<small> (${size} in your cart) </small></div>
                            <c:forEach items="${list}" var="o">
                                <div class="cart_items">
                                    <ul class="cart_list">

                                        <li class="cart_item clearfix">
                                            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                                 <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Hóa Đơn</div>
                                                    <div class="cart_item_text">  ${o.id}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Sản Phẩm</div>
                                                    <div class="cart_item_text">  ${o.pid}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Priice</div>
                                                    <div class="cart_item_text">${o.price}VND</div>
                                                </div>
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Size</div>
                                                    <div class="cart_item_text"><span style="background-color:#999999;"></span>${o.size}</div>
                                                </div>
                                                <div class="cart_item_quantity cart_info_col">
                                                    <div class="cart_item_title">Quantity</div>
                                                    <div class="cart_item_text">${o.quantity}</div>
                                                </div>
                                                <div class="cart_item_price cart_info_col">
                                                    <div class="cart_item_title">Địa Chỉ</div>
                                                    <div class="cart_item_text">${o.address}</div>
                                                </div>
                                                <div class="cart_item_total cart_info_col">
                                                    <div class="cart_item_title">  Tên Khách Hàng</div>
                                                    <div class="cart_item_text">${o.username}</div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button class="Buil">
                                    <a href="chotdon?id=${o.id} ">
                                        Chốt Đơn
                                    </a>
                                </button>
                            </c:forEach>
                            <div class="cart_buttons"> <button type="button" class="button cart_button_clear"><a href="Home.jsp">Continue Shopping</a></button> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Section: Block Content-->

        <div class="row items row-icon w3-row-padding ">
            <%
                int num = (Integer) request.getAttribute("num");
            %>
            <ul >
                <%                    for (int j = 1;
                            j <= num;
                            j++) {
                %>
                <li class="pagination"><a href="Order?page=<%= j%>"><%= j%></a></li>
                    <%
                        }
                    %>

                <i  style="margin-top: 10px" class="fa fa-arrow-right"></i>
            </ul>
        </div>

        <section id="footer" style="position: relative">
            <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Customer Policy</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Company</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>

                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Company</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Customer Policy</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <h5>Shop system</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Shop system</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                        <p><u><a href="https://www.nationaltransaction.com/">National Transaction Corporation</a></u>COPPYING</p>
                        <p class="h6">© All right Reversed.<a class="text-green ml-2" href="https://www.sunlimetech.com" target="_blank">Sunlimetech</a></p>
                    </div>
                    <hr>
                </div>
            </div>
        </section>
        <!--Section: Block Content-->
        <script>
            $(document).ready(function () {
                // MDB Lightbox Init
                $(function () {
                    $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
                });
            });
        </script>
    </body>
</html>
