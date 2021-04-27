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


        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="Css/addProduct.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .form-horizontal{
                display: none;
            }
            #add-form{
                display: block;
            }
            .content{
                display: flex;
                text-align: center;
            }
            .content-center{
                width: 200px;
                height: 50px;
                background-color: #30cfd0;
            }
            .btn{

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
        <!--Section: Block Content-->
        <div>
            <h1> ${requestScope.mes}</h1>
        </div>
        <div class="content col-4 container" >
            <button id="add" class="content-center" onclick="abc(1)">
                ADD Product
            </button>
            <button id="edit" class="content-center" onclick="abc(2)">
                Edit Product
            </button>
            <button id="remove" class="content-center" onclick="abc(3)">
                Remove Product
            </button>
        </div>
        <form class="form-horizontal" id="add-form" action="addProduct" method="Post" >
            <fieldset>
                <!-- Form Name -->
                <legend>Ađd PRODUCTS</legend>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
                    <div class="col-md-4">
                        <input id="product_id" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
                    <div class="col-md-4">
                        <input id="product_name" name="name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="price" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" required="" type="number">

                    </div>
                </div>

                <!-- Select Basic -->

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">SIZE</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="size" placeholder="PRODUCT Size" class="form-control input-md" required="" type="text">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Color">COLOR</label>  
                    <div class="col-md-4">
                        <input id="product_weight" name="color" placeholder="Color" class="form-control input-md" required="" type="text">
                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">DESCRIBER</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="describer"></textarea>
                    </div>
                </div>

                <!-- Textarea -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="comment">StATUS</label>  
                    <div class="col-md-4">
                        <select id="product_categorie" name="status" class="form-control">
                            <option value="Còn Hàng">Còn hàng</option>
                            <option value="Hết Hàng">Hết Hàng</option> 
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE</label>  
                    <div class="col-md-4">
                        <!--                        <input id="approuved_by" name="img" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text">-->
                        <!-- File Button --> 
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                        <!-- File Button --> 
                        <!-- Button -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
                    <div class="col-md-4">
                        <select id="product_categorie" name="type" class="form-control">
                            <option value="somi">Sơ Mi</option>
                            <option value="quanbo">Quần Bò</option> 
                            <option value="aophong">Áo Phông</option>  
                            <option value="quanau">Quần Âu</option> 
                            <option value="dongho">Đồng Hồ</option>
                        </select>
                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Add Product</label>
                    <div class="col-md-4">
                        <input type="submit" value="Add Product">
                    </div>
                </div>

            </fieldset>
        </form>

        <div class="edit-search row"  style=" text-align: center;height: 100px;margin-right:  40%;width: 50%"> 
            <form  action="getProduct"  style="display: none" id="edit-form1" method="post">
                <legend>Edit PRODUCTS</legend>
                <div class="col-md-4" style="margin-left: 40%;width: 1300px">
                    <input id="product_id" value="${requestScope.pid}" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
                </div>
                <input type="submit" value ="Search">
            </form>
        </div>
        <form class="form-horizontal" id="edit-form" action="editProduct" method="Post" >

            <fieldset>
                <!-- Form Name -->

                <input id="product_id" value="${requestScope.pid}" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="hidden">
                <!-- Text input-->
               
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
                    <div class="col-md-4">
                        <input id="product_name" name="name" value=" ${requestScope.name}"placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>  
                    <div class="col-md-4">
                       
                        <input id="product_name_fr" name="price" value="${requestScope.price}" placeholder="PRODUCT " class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Select Basic -->

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">SIZE</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" value="${requestScope.size}"  name="size" placeholder="PRODUCT Size" class="form-control input-md" required="" type="text">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Color">COLOR</label>  
                    <div class="col-md-4">
                        <input id="product_weight" name="color" value=" ${requestScope.color} " placeholder="Color" class="form-control input-md" required="" type="text">
                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">DESCRIBER</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control"  id="product_description" name="describer">${requestScope.describer}</textarea>
                    </div>
                </div>

                <!-- Textarea -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="comment">StATUS</label>  
                    <div class="col-md-4">

                        <select id="product_categorie"  name="status" value="${requestScope.status}" class="form-control">
                            <option value="Còn Hàng">Còn hàng</option>
                            <option value="Hết Hàng">Hết Hàng</option> 
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE</label>  
                    <div class="col-md-4">
                        <!--                        <input id="approuved_by" name="img" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text">-->
                        <!-- File Button --> 
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton"  value="${requestScope.img}" name="image" class="input-file" type="file">
                            </div>
                        </div>
                        <!-- File Button --> 
                        <!-- Button -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
                    <div class="col-md-4">
                        <select id="product_categorie" name="type" class="form-control">
                            <option value="somi">Sơ Mi</option>
                            <option value="quanbo">Quần Bò</option> 
                            <option value="aophong">Áo Phông</option>  
                            <option value="quanau">Quần Âu</option> 
                            <option value="dongho">Đồng Hồ</option>
                        </select>
                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton"> Product</label>
                    <div class="col-md-4">
                        <input type="submit" value="Update">
                    </div>
                </div>

            </fieldset>
        </form>
        <form class="form-horizontal" id="remove-form" action="removeProduct" method="Post" >
            <fieldset>
                <!-- Form Name -->
                <legend>Remove PRODUCTS</legend>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
                    <div class="col-md-4">
                        <input id="product_id" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
                    </div>
                </div>
                <!-- Text input-->

                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
                    <div class="col-md-4">
                        <select id="product_categorie" name="type" class="form-control">
                            <option value="somi">Sơ Mi</option>
                            <option value="quanbo">Quần Bò</option> 
                            <option value="aophong">Áo Phông</option>  
                            <option value="quanau">Quần Âu</option> 
                            <option value="dongho">Đồng Hồ</option>
                        </select>
                    </div>
                </div>
                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Remove Product</label>
                    <div class="col-md-4">
                        <input type="submit" value="Remove Product">
                    </div>
                </div>

            </fieldset>
        </form>

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
            function abc(a) {
                if (a == 3) {
                    document.getElementById('add-form').style.display = "none";
                    document.getElementById('edit-form').style.display = "none";
                    document.getElementById('edit-form1').style.display = "none";
                    document.getElementById('remove-form').style.display = "block";
                }
                if (a == 2) {
                    document.getElementById('add-form').style.display = "none";
                    document.getElementById('edit-form').style.display = "block";
                    document.getElementById('edit-form1').style.display = "block";
                    document.getElementById('remove-form').style.display = "none";
                }
                if (a == 1) {
                    document.getElementById('add-form').style.display = "block";
                    document.getElementById('edit-form').style.display = "none";
                    document.getElementById('edit-form1').style.display = "none";
                    document.getElementById('remove-form').style.display = "none";


                }
            }
        </script>
    </body>
</html>
