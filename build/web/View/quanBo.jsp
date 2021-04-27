<%-- 
    Document   : Somi
    Created on : Feb 25, 2021, 3:09:40 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.Shirt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <a href="Home.jsp"></a>
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
    <link href="Css/somi.css" rel="stylesheet" type="text/css"/>
    <link href="../Css/somi.css" rel="stylesheet" type="text/css"/>
    <!--    <link href="../Css/Home.css" rel="stylesheet" type="text/css"/>-->
    <title>Document</title>

</head>
<body>
    <style>
/*
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
*/
/* 
    Created on : Mar 6, 2021, 8:26:11 PM
    Author     : Admin
*/

/*
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
*/
/* 
    Created on : Mar 5, 2021, 6:07:57 PM
    Author     : Admin
*/

.product-img{
    height: 400px;
    margin-bottom: 10px;
    border-top: 1px black solid;
}
.product-img img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    vertical-align: middle;
    border-style: none;     }
.row-icon ul{
    margin-left : 44%;
}
.product-info{
    margin-bottom: 40px;
}
.row-icon ul{
    display: flex;
}
.row-icon ul li i {
    margin-top: 10px;
}
.row-icon ul li a
{
    margin-left: 40%;
}
.row-icon ul li{
    width: 25px;
    height: 25px;
    background-color: #ccffcc;
    text-align: center;
    margin-top: 5px;
    color: white;

}

body {
    margin: 0 auto;
}

.header {
    width: 100%;
    height: 300px;
}

.header-contact {
    top: 0;
    width: 100%;
    height: 50px;
    background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);
    display: inline-block;
    text-align: center;
    position: fixed;
    top: 0;
    z-index: 1;
    transition: .4s ease-in-out;
}


/* .slideShow {
    position: relative;
    padding: 0px;
} */

.carousel-inner img {
    width: 100%;
    height: 100%;
}

.header-contact span {
    border-right: 2px solid black;
    margin-right: 10px;
    padding: 5px;
    font-family: 'Times New Roman', Times, serif;
}

.header-contact p {
    display: inline;
}

.text-center {
    text-align: center;
}

.header-center-img {
    text-align: center;
    margin-bottom: 30px;
    margin-top: 100px;
    margin-bottom: 40px;
}

.header-center-img {
    display: flex;
    justify-content: center;
}

.header-control i {
    width: 30px;
    height: 30px;
    font-size: 25px;
    margin-right: 30px;
    padding: 5px;
}

#demo {
    width: 80%;
    height: 700px;
}


.header-center-icon {
    float: right;
    width: 25%;
    margin-top: 50px;
}

#search {
    height: 35px;
    width: 150px;
    background-color: black;
    display: none;
    position: relative;
    animation: mymove 2s both;
    animation-timing-function: linear;
}

.header-img {
    width: 70%;
}

.pn {
    border: 1px solid black;
    height: 1px;
    width: 99%;
    margin: 50px 1px;
}

.header-img img {
    height: 143px;
    width: 288px;
    margin-left: 18%;
}

.icon-menu-mobile {
    display: none;
}



.dropdown {
    display: contents;
}



section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #007b5e;
    margin-bottom: 50px;
    text-transform: uppercase;
}

#footer {
    margin-top: 100px;
    background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
}

#footer h5 {
    padding-left: 10px;
    border-left: 3px solid #eeeeee;
    padding-bottom: 6px;
    margin-bottom: 20px;
    color: #ffffff;
}

#footer a {
    color: #ffffff;
    text-decoration: none !important;
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}

#footer ul.social li {
    padding: 3px 0;
}

#footer ul.social li a i {
    margin-right: 5px;
    font-size: 25px;
    -webkit-transition: .5s all ease;
    -moz-transition: .5s all ease;
    transition: .5s all ease;
}

#footer ul.social li:hover a i {
    font-size: 30px;
    margin-top: -10px;
}

#footer ul.social li a,
#footer ul.quick-links li a {
    color: #ffffff;
}

#footer ul.social li a:hover {
    color: #eeeeee;
}

#footer ul.quick-links li {
    padding: 3px 0;
    -webkit-transition: .5s all ease;
    -moz-transition: .5s all ease;
    transition: .5s all ease;
}

#footer ul.quick-links li:hover {
    padding: 3px 0;
    margin-left: 5px;
    font-weight: 700;
}

#footer ul.quick-links li a i {
    margin-right: 5px;
}

#footer ul.quick-links li:hover a i {
    font-weight: 700;
}

/*@media (max-width:767px) {
    #footer h5 {
        padding-left: 0;
        border-left: transparent;
        padding-bottom: 0px;
        margin-bottom: 10px;
    }
}*/

.style {
    transform: translateX(0px);
}

/*@keyframes mymove {
    from {
        width: 200px;
        right: -100px;
    }
    to {
        right: -150px;
    }
}*/



body,
html {
    font-size: 14px;
    color: #050505;
    font-family: Quicksand_regular;
    letter-spacing: 1px;
}





.add-to-cart {
    border: 1px solid #722A1B;

    background-color: #fff;
    color: #722A1B;
    text-transform: uppercase;

    margin: 5px 0;
    font-weight: bold;
    cursor: pointer;
}
.add-cart{
    width: 100%;
    height: 40px;
    text-align: center;
}

.bs-example {
    width: 90%;
    display: flex;
    margin-left: 100px;
}

.btn-group {
    height: 40px;
    text-align: center;
}

.btn {
    width: 150px;
    height: 40px;
    font-size: 21px;
    padding-left: 5px;

    font-family: inherit;

    /* position: absolute;
    bottom: 0;
    left: 14px; */
    /* width: calc(100% - 28px); */
    /* opacity: 0; */
    transform-origin: left center;
    transition: transform .3s, opacity .3s, -webkit-transform 3s;
}

.btn:hover {
    border-bottom: 2px solid #5c5c5c;
    animation-name: movebtn;
    animation-duration: 3s;
    animation-iteration-count: 2;
    animation-direction: alternate;
}

@keyframes movebtn {
    from {
        color: darkgoldenrod;
        border-bottom-width: 1px;
        border-bottom-color: white;
    }
    to {
        color: tomato;
        border-bottom-width: 2px;
        border-bottom-color: black;
    }
}

.dropdown-menu {
    padding-bottom: 0px;
    padding-top: 0px;
}
.dropdown-menu a {
    padding-bottom: 0px;
    text-align: center;
    border-bottom: 1px black solid;
    width: 200px;
    height: 35px;
}




/* het phan men */

/*phan search*/  

.search_input {

    border: 0;
    outline: 0;
    background: none;
    width: 0;
    caret-color: transparent;
    line-height: 30px;
    transition: width 0.4s linear;
}

.searchbar:hover>.search_input {
    padding: 0 10px;
    width: 190px;
    caret-color: red;
    border-radius: 30px;
    background-image: linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);

    transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
    background: white;
    color: #e74c3c;
}

.search_icon {
    margin-bottom: auto;
    margin-top: auto;
    margin-right: 30px;
    color: blue;
    height: 30px;
    width: 30px;
    float: right;
    display: flex;
    background-color: white;

    border-radius: 50%;

    text-decoration: none;
}

    </style>

    <!--<div class="header">-->
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
                    <a href="/user/signin">
                        <i class="fas fa-user-circle"></i>
                    </a>
                    <a href="" class="icon-search">
                        <i class="fas fa-search"></i>
                        <div class="input-group mb-3 " style="width: 100px; display: none;">
                            <input type="text" class="form-control" placeholder="Search">
                            <div class="input-group-append">
                                <button class="btn btn-success" type="submit">Go</button>
                            </div>
                        </div>

                    </a>
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
                <button type="button" class="btn">
                    Trang chủ
                </button>
                <!-- <button type="button" class="btn btn">Action</button> -->
                <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                    Áo Nam
                </button>
                <div class="dropdown-menu">
                    <a href="#" class="dropdown-item">Sơ Mi</a>
                    <a class="dropdown-item" href="#">Áo Phông</a>
                    <a class="dropdown-item" href="#">Áo Phao</a>
                    <a class="dropdown-item" href="#">Áo Thể Thao</a>
                </div>
            </div>
            <div class="btn-group">

                <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                    Quần Nam
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Quần Bò</a>
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

    <!--        </div>-->
    <div class="pn"></div>
    <Span style="margin: 1px 80px; font-family: cursive ; font-size: 30px;text-align: center ;width: 100% ;margin-left: 500px">
        Quần Bò Nam
    </Span>
    <div class="container-fluid " style="margin-top: 50px ">



        <div id="modal01" class="w3-modal" onclick="this.style.display = 'none'">
            <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
            <div class="w3-modal-content w3-animate-zoom">
                <img id="img01" style="width:100% ;height: 1000px" >
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

    <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    <script> $('.add-to-cart').on('click', function () {
                var cart = $('.fa-shopping-bag');
                var imgtodrag = $(this).parent('.item').find("img").eq(0);
                if (imgtodrag) {
                    var imgclone = imgtodrag.clone()
                            .offset({
                                top: imgtodrag.offset().top,
                                left: imgtodrag.offset().left
                            })
                            .css({
                                'opacity': '0.5',
                                'position': 'absolute',
                                'height': '150px',
                                'width': '150px',
                                'z-index': '100'
                            })
                            .appendTo($('body'))
                            .animate({
                                'top': cart.offset().top + 10,
                                'left': cart.offset().left + 10,
                                'width': 75,
                                'height': 75
                            }, 1000, 'easeInOutExpo');

                    setTimeout(function () {
                        cart.effect("shake", {
                            times: 2
                        }, 200);
                    }, 1500);

                    imgclone.animate({
                        'width': 0,
                        'height': 0
                    }, function () {
                        $(this).detach()
                    });
                }
            });
            //# sourceURL=pen.js
            function onClick(element) {
                document.getElementById("img01").src = element.src;
                document.getElementById("modal01").style.display = "block";
            }
    </script>

</body>

</html>