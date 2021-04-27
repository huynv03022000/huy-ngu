<%-- 
    Document   : Home
    Created on : Jan 26, 2021, 5:00:34 PM
    Author     : Admin
--%>

<%@page import="DAO.ShirtProduct"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.Shirt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>-->
        <!-- link cua slide bar -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="Css/Home.css" rel="stylesheet" type="text/css"/>

        <title>Document</title>

    </head>
    <body>
        <style>
            .scrol{
                z-index: 99999;
                height: 80px;
                padding-top: 30px;
            }
            .carousel-item {
                height: 100vh;
                min-height: 350px;
                background: no-repeat center center scroll;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
        <!--<div class="header">-->
        <div class="header-contact ">
            <div class="col-12 text-center">
                <p>Hotline Mua hàng: </p>
                <span>0943189438</span>
                <p> Hotline CSKH :</p>
                <span>0943189438</span>
                <p> Chat CSKH :</p>
                <a href="https://www.facebook.com/huy.nguyenvan.7543653/">Facebok</a>
                <a href="LoginAdmin.jsp">Admin</a>

            </div>
        </div>
        <div class="header-center container">
            <div class="header-center-img">
                <div class="header-img">
                    <!--<img src="img/logodoc.png" alt="">-->
                    <!--<img src="../img/logodoc.png" alt=""/>-->

                    <!--                <img src="../img/logo.png" alt=""/>-->
                    <img src="img/logo.png" alt=""/>
                </div>
                <div class="header-center-icon">
                    <div class="header-control">
                        <a href="signin">
                            <i class="fas fa-user-circle"></i>
                        </a>
                        <div class="d-flex justify-content-center h-100">
                            <div class="searchbar" >
                                <!--<form action="searchProduct">-->
                                <input class="search_input" type="text" id="searchInput" name="search" placeholder="Search...">
                                <a  class="search_icon" ><i  class="fas fa-search" onclick="search()"></i></a>
                                <!--<input type="submit" value="search">--> 
                                <!--</form>-->

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
                    <button type="button" class="btn">
                        Trang chủ
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
                        <a class="dropdown-item" href="quanAu">Quần Âu</a>
                        <a class="dropdown-item" href="">Quần Joger</a>
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
        <div class="pn">
            <h1>${requestScope.mes}</h1>
        </div>


        <header>
            <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <!-- Slide One - Set the background image for this slide in the line below -->
                    <div class="carousel-item active" style="background-image: url('img/ao/h1.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">First Slide</h2>
                            <p class="lead">This is a description for the first slide.</p>
                        </div>
                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('img/ao/h11.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Second Slide</h2>
                            <p class="lead">This is a description for the second slide.</p>
                        </div>
                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('img/ao/h13.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Third Slide</h2>
                            <p class="lead">This is a description for the third slide.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>

        <!-- Page Content -->

        <div class="container-fluid  mt-3 mb-4 " id="content-table">
            <hr>
            <hr>
            <hr>
            <h2>Sản Phẩm Mới</h2>  <hr>

            <div class="row g-2">
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="
                                                                                                  img/aoDong/a1.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long sleev shirt</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size1" value="small"> <span>S</span> </label> 
                                    <label class="radio"> <input type="radio" name="size1" value="Medium" checked> <span>M</span> </label>
                                    <label class="radio"> <input type="radio" name="size1" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-15%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/h6.jpg
                                                                                                  " class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Black top caps</h6> <span class="text-danger font-weight-bold">$1.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size2" value="small"> <span>S</span> </label> <label class="radio"> <input type="radio" name="size2" value="Medium" checked> <span>M</span> </label> <label class="radio"> <input type="radio" name="size2" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> 
                                <span class="percent">-35%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> 
                            <img src="img/ao/h1.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Kiton sui suit</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size3" value="small">
                                        <span>S</span> </label> <label class="radio"> <input type="radio" name="size3" value="Medium" checked>
                                        <span>M</span> </label> <label class="radio"> <input type="radio" name="size3" value="Large">
                                        <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first">
                                <span class="percent">-25%</span> <span class="wishlist"><i class="fa fa-heart"></i></span>
                            </div> <img src="img/ao/h4.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long red shirt</h6> <span class="text-danger font-weight-bold">$4.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size4" value="small"> <span>S</span> 
                                    </label> <label class="radio"> <input type="radio" name="size4" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size4" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm14.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long black t-shirt</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size5" value="small"> 
                                        <span>S</span> </label> <label class="radio"> <input type="radio" name="size5" value="Medium" checked>
                                        <span>M</span> </label> <label class="radio"> <input type="radio" name="size5" value="Large">
                                        <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm12.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm15.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm19.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--san phan ban chay--> 

        <div class="container-fluid">
            <hr>
            <hr>
            <hr>

            <h3 style="margin-left: 40%;font-size: 35px" class="h3">Sản Phẩm Bán Chạy  </h3>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc12.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc11.jpg" alt=""/>


                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc21.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc22.jpg" alt=""/>

                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Women's Designer Top</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
                            </div>
                            <ul class="rating">
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc31.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc32.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc41.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc42.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc51.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc52.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc61.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc62.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                </div> <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc71.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc72.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">New</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                </div> <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc81.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc82.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">New</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
            </div>
        </div>
        <hr>


        <section id="footer" style="width :100%">
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
        <script type="text/javascript">const searchFocus = document.getElementById('search-focus');
            const keys = [
                {keyCode: 'AltLeft', isTriggered: false},
                {keyCode: 'ControlLeft', isTriggered: false},
            ];

            window.addEventListener('keydown', (e) => {
                keys.forEach((obj) => {
                    if (obj.keyCode === e.code) {
                        obj.isTriggered = true;
                    }
                });

                const shortcutTriggered = keys.filter((obj) => obj.isTriggered).length === keys.length;

                if (shortcutTriggered) {
                    searchFocus.focus();
                }
            });

            window.addEventListener('keyup', (e) => {
                keys.forEach((obj) => {
                    if (obj.keyCode === e.code) {
                        obj.isTriggered = false;
                    }
                });
            });


            //// When the user clicks on the button, scroll to the top of the document

            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($(document).scrollTop() > 50) {
                        $(".header-contact").addClass("scrol");
                    } else {
                        $(".header-contact").removeClass("scrol");
                    }
                });
            });

            function search() {
                var result = document.getElementById("searchInput").value;
                var url = "searchProduct?search=" + result;
                window.location.href = url;
                console.log(url);

            }
        </script>
    </body>

</html>
