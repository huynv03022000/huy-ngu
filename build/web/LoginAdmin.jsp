<%-- 
    Document   : LoginAdmin
    Created on : Mar 9, 2021, 9:01:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>

    <head>
        <title>My Awesome Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
        <link href="Css/LoginAdmin.css" rel="stylesheet" type="text/css"/>
    </head>
    <!--Coded with love by Mutiullah Samim-->
    <body>
        
        <Div style="text-align: center">
            <h2>${requestScope.mes}</h2>
        </Div>
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="user_card">
                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container">
                            <a href="Home.jsp"><img src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png" class="brand_logo" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center form_container">
                        <%
                            Cookie[] list = request.getCookies();
                            String rem = "";
                            if (list.length != 0) {
                                for (int i = 0; i < list.length; i++) {
                                    if (list[i].getName().equals("remAd")) {
                                        rem = list[i].getValue();
                                    }
                                }
                            }
                        %>
                        <form action="loginAdmin" method="Post">
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" name="username" class="form-control input_user" value="${requestScope.usernameAd}" placeholder="username">
                            </div>
                            
                            <div class="input-group mb-2">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" name="password" class="form-control input_pass" value="${requestScope.passAd}" placeholder="password">
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name ="rem"

                                           <%= "ON".equals(rem.trim()) ? "checked='checked'" : ""%>  value="ON" >
                                    <label for="">Remenber Password</label>

                                </div>
                            </div>
                            <div class="d-flex justify-content-center mt-3 login_container">
                                <input type="submit" value="Login Adimin">

                            </div>
                        </form>
                    </div>

                    <div class="mt-4">
                        <div class="d-flex justify-content-center links">
                            Don't have an account? <a href="#" class="ml-2">Sign Up</a>
                        </div>
                        <div class="d-flex justify-content-center links">
                            <a href="#">Forgot your password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

