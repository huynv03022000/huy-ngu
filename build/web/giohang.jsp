<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


<%@page import="java.util.List"%>
<%@page import="Model.Cart"%>
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
        <link href="Css/giohang.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .banner-footer-item {
                margin-left: 30px;
                border: 1px #000 solid;
                padding: 10px;
                margin-bottom: 45px;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
            }
            .banner-footer-item img{
                width: 100px;
                height: 100px;
            }
            .wrapper{
                display: none;

            }





        </style>

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
                                                    <button class="Buil">
                                                        <a href="" >
                                                            Chốt Đơn
                                                        </a>
                                                    </button>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Hóa Đơn</div>
                                                    <div class="cart_item_text">  ${o.id}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Sản Phẩm</div>
                                                    <div class="cart_item_text">  ${o.pid}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Price</div>
                                                    <div class="cart_item_text">${o.price}VND</div>
                                                </div>
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Size</div>
                                                    <div class="cart_item_text"><span style="background-color:#999999;">

                                                        </span>${o.size}</div>
                                                </div>
                                                <div class="cart_item_quantity cart_info_col">
                                                    <div class="cart_item_title">Quantity</div>
                                                    <div class="cart_item_text">${o.quantity}</div>
                                                </div>
                                                <div class="cart_item_price cart_info_col">
                                                    <div class="cart_item_title">Ảnh Miêu Tả</div>
                                                    <img style="height: 100px;width: 100px" src="${o.img}">

                                                </div>
                                                <div class="cart_item_total cart_info_col">
                                                    <div class="cart_item_title">Tên Khách Hàng</div>
                                                    <div class="cart_item_text">${o.username}</div>
                                                </div>
                                                <br>
                                                <input type="hidden" name="pid" value="${requestScope.pid}" >
                                                <input type="hidden" name="price" value="${requestScope.price}" >
                                                <input type="hidden" name="color" value="${requestScope.color}" >
                                                <input type="hidden" name="size" value="${requestScope.size}" >
                                                <input type="hidden" name="quantity" value="${requestScope.quantity}" >
                                            </div>
                                            <a style="margin: 50px ;"  href="RemoveCart?id=${o.id}"><i style=" margin-top: 50px ;font-size: 30px" class="far fa-window-close"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                            <div class="cart_buttons" onclick="CheckOut()"> <button type="button" class="button cart_button_clear"><a href="#">Check Out</a></button> </div>
                            <div class="cart_buttons"> <button type="button" class="button cart_button_clear"><a href="Home.jsp">Continue Shopping</a></button> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
            List<Cart> list = (List<Cart>) request.
                    getAttribute("list");
            int sum = 0;
            for (Cart o : list) {
                int price = o.getPrice();
                sum += price;
            }
        %>
        <div class="container wrapper" id="wrapper">
            <div class="row cart-head">
                <div class="container">
                    <div class="row">
                        <p></p>
                    </div>
                    <div class="row">
                        <div style="display: table; margin: auto;">
                            <span class="step step_complete"> <a href="#" class="check-bc">Cart</a> <span class="step_line step_complete"> </span> <span class="step_line backline"> </span> </span>
                            <span class="step step_complete"> <a href="#" class="check-bc">Checkout</a> <span class="step_line "> </span> <span class="step_line step_complete"> </span> </span>

                        </div>
                    </div>
                    <div class="row">
                        <p></p>
                    </div>
                </div>
            </div>    
<%
      List<Cart> listCart =(List<Cart>)request.getAttribute("list");
%>
            <div class="row cart-body">
                <form class="form-horizontal" method="post" action="AddOrder">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                        <!--REVIEW ORDER-->
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                Review Order 
                                <div class="pull-right"><small><a class="afix-1" href="#">Edit Cart</a>
                                    </small></div>
                            </div>

                            <div class="panel-body">
                                <c:forEach items="${list}" var="o">

                                    <div class="form-group">
                                        <div class="col-sm-3 col-xs-3">
                                            <img class="img-responsive" src="${o.img}" />
                                        </div>
                                        <div class="col-sm-6 col-xs-6">
                                            <div class="col-xs-12">${o.pid}</div>
                                            <div class="col-xs-12"><small>Quantity: ${o.quantity}</small></div>
                                        </div>
                                        <div class="col-sm-3 col-xs-3 text-right">

                                            <h6>${o.price} VND</h6>
                                        </div>
                                    </div>
                                </c:forEach>

                                <div class="form-group"><hr />
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <strong>Subtotal</strong>
                                        <div class="pull-right"><span>$</span><span>30.000</span></div>
                                    </div>
                                    <div class="col-xs-12">
                                        <small>Shipping</small>
                                        <div class="pull-right"><span>-</span></div>
                                    </div>
                                </div>
                                <div class="form-group"><hr /></div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <strong>Order Total</strong>
                                        <div class="pull-right"><span>$</span><span><%=sum + 30000%></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--REVIEW ORDER END-->
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                        <!--SHIPPING METHOD-->
                        <div class="panel panel-info">
                            <div class="panel-heading">Address</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <h4>Shipping Address</h4>
                                    </div>
                                </div>
                                <%
                                    Cookie[] list1 = request.getCookies();
                                    String username = "";
                                    if (list1.length != 0) {
                                        for (int i = 0; i < list1.length; i++) {
                                            if (list1[i].getName().equals("user")) {
                                                username = list1[i].getValue();
                                            }
                                        }
                                    }
                                %>
                                <div class="form-group">
                                    <div class="col-md-6 col-xs-12">
                                        <strong>First Name:</strong>
                                        <input type="text" name="username" class="form-control" value="<%=username%>" />
                                    </div>
                                    <div class="span1"></div>
                                    <div class="col-md-6 col-xs-12">
                                        <strong>Number Phone</strong>
                                        <input type="text" name="numberPhone" class="form-control" value="" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>Address:</strong></div>
                                    <div class="col-md-12">
                                        <input type="text" name="address" class="form-control" value="" />
                                    </div>
                                </div>


                            </div>
                                    <input type="hidden" name="listCart" value="<%=listCart%>">
                                    
                            <input type="submit" value="BUY">
                        </div>
                        <!--SHIPPING METHOD END-->
                        <!--CREDIT CART PAYMENT-->

                        <!--CREDIT CART PAYMENT END-->
                    </div>

                </form>
            </div>


        </div>

        <!--Section: Block Content-->


        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_1.png"></div><div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">GIAO HÀNG NHANH</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_2.png"></div><div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">ĐỔI TRẢ TRONG VÒNG 7 NGÀY</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_3.png">
                    </div>
                    <div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">THANH TOÁN KHI NHẬN HÀNG</p>
                    </div>
                </div>
            </div>
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
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict'

                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation')

                    // Loop over them and prevent submission
                    Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault()
                                event.stopPropagation()
                            }
                            form.classList.add('was-validated')
                        }, false)
                    })
                }, false)
            }())
            function CheckOut() {
                document.getElementById("wrapper").style.display = "block";
            }
        </script>
    </body>
</html>
