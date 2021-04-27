<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


<%@page import="Model.T_shirt"%>
<%@page import="Model.QuanBo"%>
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
        <link href="Css/Detail.css" rel="stylesheet" type="text/css"/>
        <link href="Css/somi.css" rel="stylesheet" type="text/css"/>
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



        <!--Section: Block Content-->
        <section class="mb-5">

            <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">

                    <div id="mdb-lightbox-ui"></div>

                    <div class="mdb-lightbox">

                        <div class="row product-gallery mx-1">

                            <div class="col-12 mb-0">
                                <figure class="view overlay rounded z-depth-1 main-img">
                                    <a href="${requestScope.img}"
                                       data-size="710x823">
                                        <img style="width: 400px;height: 500px" src="${requestScope.img}" name="${requestScope.img}"
                                             class="img-fluid z-depth-1">
                                    </a>
                                </figure>
                            </div>

                        </div>

                    </div>

                </div>
                <%
                    Cookie[] list = request.getCookies();
                    String username = "";
                    if (list.length != 0) {
                        for (int i = 0; i < list.length; i++) {
                            if (list[i].getName().equals("user")) {
                                username = list[i].getValue();
                            }
                        }
                    }
                %>
                <div class="col-md-6">
                    <form action="addCart" method="Post">

                        <h5>${requestScope.pid}</h5>
                        <p class="mb-2 text-muted text-uppercase small">Shirts</p>
                        <p><span class="mr-1"><strong name='${requestScope.price}'>${requestScope.price}</strong></span></p>
                        <p name='${requestScope.decriber}' class="pt-1" >${requestScope.describer}</p>
                        <div class="table-responsive">
                            <table class="table table-sm table-borderless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>Model</strong></th>
                                        <td name ='${requestScope.name}'>${requestScope.name}</td>
                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>Color</strong></th>
                                        <td name='${requestScope.color}'>${requestScope.color}</td>
                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>status</strong></th>
                                        <td>${requestScope.status}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr>
                        <div class="table-responsive mb-2">
                            <table class="table table-sm table-borderless">
                                <tbody>
                                    <tr>
                                        <td class="pl-0 pb-0 w-25">Quantity</td>
                                        <td class="pb-0">Select size</td>
                                    </tr>
                                    <tr>
                                        <td class="pl-0">
                                            <div class="def-number-input number-input safari_only mb-0">
                                                <!--                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                                                                        class="minus"></button>-->
                                                <input class="quantity" min="1" name="quantity" value="1" type="number">
                                                <!--                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                                                                        class="plus"></button>-->
                                            </div>
                                        </td>
                                        <td>
                                            <div class="mt-1">
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" value="s" class="form-check-input" id="small" name="size"
                                                           checked>
                                                    <label  class="form-check-label small text-uppercase card-link-secondary"
                                                            for="small">Small</label>
                                                </div>
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" class="form-check-input" value="m" id="medium" name="size">
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for="medium">Medium</label>
                                                </div>
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" class="form-check-input" value="n" id="large" name="size">
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for="large">Large</label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="container-fluid">
                            <hr>
                            <hr>
                            <hr>
                        </div>  
                        <input type="hidden" name="username" value="<%=username%>">
                        <input type="hidden" name="pid" value="${requestScope.pid}" >
                        <input type="hidden" name="price" value="${requestScope.price}" >
                        <input type="hidden" name="color" value="${requestScope.color}" >
                        <input type="hidden" name="img" value="${requestScope.img}" >
                        <input type="submit" value="Add TO Cart">
                    </form> 
                    <button  onclick="buynow()"  style="margin-top: 30px;width: 90px ;height: 30px" value="Buy Now">Buy Now</button>

                    <form action="AddOrder" method="Post" >
                        <div style="display: none" class="form-order" id="buy">
                            <p>Name </p>
                            <input type="text" name="username" value="<%=username%>">
                            <p>Adress </p>
                            <input type="text" name="address" value="">
                            <p>numberPhone </p>
                            <input type="text" name="numberPhone" value="">
                            <input type="hidden" name="pid" value="${requestScope.pid}" >
                            <input type="hidden" name="price" value="${requestScope.price}" >
                            <input type="hidden" name="color" value="${requestScope.color}" >
                           <input type="hidden" name="img" value="${requestScope.img}" >
                            <input type="hidden" name="size" value="m" >
                            <input type="hidden" name="quantity" value="1">
                            <input type="submit" value="Buy">
                        </div>
                        <br>
                        <br>
                    </form>


                </div>
            </div>

        </section>
        <hr>
        <hr>
        <h1 style="margin-left: 40%">Sản Phẩm Liên Quan</h1>
        <hr>
        <hr>

        <h3 style="margin-left: 45%;font-size: 40px" class="h3">  ${requestScope.Mes} </h3>
        <div class="row">

            <c:forEach items="${list}" var="o">
                <div class="col-md-3 col-sm-6">
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
            function buynow() {
                document.getElementById("buy").style.display = "block";
            }
        </script>
    </body>
</html>
