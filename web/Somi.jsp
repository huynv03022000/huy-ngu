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


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>-->
        <!-- link cua slide bar -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <!--        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">-->


        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <link href="Css/addProduct.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <style>

            .product-grid3{ margin-top: 40px;font-family:Roboto,sans-serif;text-align:center;z-index:1;margin-bottom: 70px}
            .product-grid3:before{content:"";height:81%;width:100%;background:#fff;border:1px solid rgba(0,0,0,.1);opacity:0;position:absolute;top:0;left:0;z-index:-1;transition:all .5s ease 0s}
            .product-grid3:hover:before{opacity:1;height:100%}
            .product-grid3 .product-image3{position:relative}
            .product-grid3 .product-image3 a{display:block}
            .product-grid3 .product-image3 img{width:100%;height: 400px}
            .product-grid3 .pic-1{opacity:1;transition:all .5s ease-out 0s}
            .product-grid3:hover .pic-1{opacity:0}
            .product-grid3 .pic-2{position:absolute;top:0;left:0;opacity:0;transition:all .5s ease-out 0s;height: 400px}
            .product-grid3:hover .pic-2{opacity:1}
            .product-grid3 .social{width:120px;padding:0;margin:0 auto;list-style:none;opacity:0;position:absolute;right:0;left:0;bottom:-23px;transform:scale(0);transition:all .3s ease 0s}
            .product-grid3:hover .social{opacity:1;transform:scale(1)}
            .product-grid3:hover .product-discount-label,.product-grid3:hover .product-new-label,.product-grid3:hover .title{opacity:0}
            .product-grid3 .social li{display:inline-block}
            .product-grid3 .social li a{color:#e67e22;background:#fff;font-size:18px;line-height:50px;width:50px;height:50px;border:1px solid rgba(0,0,0,.1);border-radius:50%;margin:0 2px;display:block;transition:all .3s ease 0s}
            .product-grid3 .social li a:hover{background:#e67e22;color:#fff}
            .product-grid3 .product-discount-label,.product-grid3 .product-new-label{background-color:#e67e22;color:#fff;font-size:17px;padding:2px 10px;position:absolute;right:10px;top:10px;transition:all .3s}
            .product-grid3 .product-content{z-index:-1;padding:15px;text-align:left}
            .product-grid3 .title{font-size:14px;text-transform:capitalize;margin:0 0 7px;transition:all .3s ease 0s}
            .product-grid3 .title a{color:#414141}
            .product-grid3 .price{color:#000;font-size:16px;letter-spacing:1px;font-weight:600;margin-right:2px;display:inline-block}
            .product-grid3 .price span{color:#909090;font-size:14px;font-weight:500;letter-spacing:0;text-decoration:line-through;text-align:left;display:inline-block;margin-top:-2px}
            .product-grid3 .rating{padding:0;margin:-22px 0 0;list-style:none;text-align:right;display:block}
            .product-grid3 .rating li{color:#ffd200;font-size:13px;display:inline-block}
            .product-grid3 .rating li.disable{color:#dcdcdc}
            @media only screen and (max-width:1200px){.product-grid3 .rating{margin:0}
            }
            @media only screen and (max-width:990px){.product-grid3{margin-bottom:30px}
                                                     .product-grid3 .rating{margin:-22px 0 0}
            }
            @media only screen and (max-width:359px){.product-grid3 .rating{margin:0}
            }
            .scrol{
                z-index: 99999;
                height: 80px;
                padding-top: 30px;
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
                        <a href="ListCart" class="icon-cart position-relative">
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
        <div class="input-group" style="float: right;
             margin-top: 20px">
            <form action="searchProduct" method="Post">
                <input type="text" name="search" placeholder="Search by Id and Name">
                <input type="submit" value="search">
            </form>
        </div>
        <div class="pn"></div>
        <div class="container-fluid">
            <hr>
            <hr>
            <hr>

            <h3 style="margin-left: 45%;font-size: 40px" class="h3">  ${requestScope.Mes} </h3>
            <div class="row">

                <c:forEach items="${list}" var="o">
                    <div class="col col-sm-3">
                        <div class="product-grid3">
                            <div class="product-image3">
                                <a href="detail?id=${o.id}">
                                    <img class="pic-1"src="${o.img}" alt=""/>
                                    <img class="pic-2" src="${o.img}" alt=""/>
                                </a>
                                <ul class="social">
                                    <li><a href="detail?id=${o.id}"><i class="fa fa-shopping-bag"></i></a></li>
                                    <li><a href="detail?id=${o.id}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                                <span class="product-new-label">${o.id}</span>
                            </div>
                            <div class="product-content">
                                <h3 class="title"><a href="#">${o.name}</a></h3>
                                <div class="price">
                                    ${o.price}
                                    <span>${o.price*1.2} VND</span>
                                </div>
                                <ul class="rating">
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star disable"></li>
                                    <li class="fa fa-star disable"></li>
                                </ul>
                            </div>
                        </div>
                    </div>  
                </c:forEach>


            </div>

        </div>
        <%
            int num = (Integer) request.getAttribute("num");
        %>
        <div class="pagination" style="font-size: 20px; margin-left: 42%;margin-top: 30px"> 
            <ul style="display: flex; margin-left: 40%">
                <%                    for (int j = 1;
                            j <= num;
                            j++) {
                %>
                <li style="list-style: none ;text-align: center;margin-right: 10px ;
                    width: 25px;
                    height: 25px;
                    background-color: #ccffcc;
                    text-align: center;
                    margin-top: 5px;
                    color: white;"class=""><a style="width: 30px;height: 30px" href="${requestScope.nameServlet}?page=<%= j%>"><%= j%></a></li>
                    <%
                        }
                    %>

                <i style="margin-top: 10px"  class="fa fa-arrow-right"></i>
            </ul>
        </div>
        <hr>


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
                $(window).scroll(function () {
                    if ($(document).scrollTop() > 50) {
                        $(".header-contact").addClass("scrol");
                    } else {
                        $(".header-contact").removeClass("scrol");
                    }
                });
            });

        </script>
    </body>
</html>
