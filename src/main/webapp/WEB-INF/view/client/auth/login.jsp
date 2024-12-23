<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <title>Login - TechJobs</title>
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

                    <!-- Roboto Fonts -->
                    <link
                        href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
                        rel="stylesheet">
                    <link
                        href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&display=swap"
                        rel="stylesheet">


                    <!-- bootstrap css -->
                    <link rel="stylesheet" type="text/css" href="/client/css/bootstrap.min.css">

                    <!-- main css -->
                    <link rel="stylesheet" type="text/css" href="/client/css/style.css">

                    <!-- Font Awesome -->
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
                        integrity="sha256-NuCn4IvuZXdBaFKJOAcsU2Q3ZpwbdFisd5dux4jkQ5w=" crossorigin="anonymous" />

                </head>

                <body>
                    <div class="container-fluid login-fluid clear-left clear-right">
                        <div class="login-container">
                            <!-- login header -->
                            <div class="login-header">
                                <div class="w-login m-auto">
                                    <div class="login-logo">
                                        <h3>
                                            <!-- <a href="#">Tech<span class="txb-logo">Jobs.</span></a> -->
                                            <a href="/">
                                                <img src="/client/img/techjobs_bgw.png" alt="TechJobs">
                                            </a>
                                        </h3>
                                        <span class="login-breadcrumb"><em>/</em> Đăng Nhập</span>
                                    </div>
                                    <div class="login-right">
                                        <a href="/" class="btn btn-return">Return Home</a>
                                    </div>
                                </div>
                            </div>
                            <!-- (end) login header -->

                            <div class="clearfix"></div>

                            <div class="padding-top-90"></div>

                            <!-- login main -->
                            <div class="login-main">
                                <div class="w-login m-auto">
                                    <div class="row">
                                        <!-- login main descriptions -->
                                        <div class="col-md-6 col-sm-12 col-12 login-main-left">
                                            <img src="/client/img/banner-login.png">
                                        </div>
                                        <!-- login main form -->
                                        <div class="col-md-6 col-sm-12 col-12 login-main-right">

                                            <form class="login-form" method="post" action="/login">
                                                <div class="login-main-header">
                                                    <h3>Đăng Nhập</h3>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Username</h5>
                                                        <input type="text" name="username"
                                                            class="input form-control-lgin">
                                                    </div>
                                                </div>
                                                <div class="input-div pass">
                                                    <div class="div lg-lable">
                                                        <h5>Password</h5>
                                                        <input type="password" name="password"
                                                            class="input form-control-lgin">
                                                    </div>
                                                </div>
                                                <div>
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                </div>
                                                <c:if test="${param.error != null}">
                                                    <div class="my-2" style="color: red;">Tài khoản không tồn tại</div>
                                                </c:if>
                                                <c:if test="${param.logout != null}">
                                                    <div class="my-2" style="color: green;">Đăng xuất thành công</div>
                                                </c:if>
                                                <div class="form-group d-block frm-text">
                                                    <a href="#" class="fg-login d-inline-block">Quên mật khẩu</a>
                                                    <a href="/register" class="fg-login float-right d-inline-block">Bạn chưa có
                                                        tài khoản? Đăng ký</a>
                                                </div>
                                                <button type="submit"
                                                    class="btn btn-primary float-right btn-login d-block w-100">Đăng
                                                    Nhập</button>
                                                <div class="form-group d-block w-100 mt-5">
                                                    <div class="text-or text-center">
                                                        <span>Hoặc</span>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-sm-6 col-12 pr-7">
                                                            <button
                                                                class="btn btn-secondary btn-login-facebook btnw w-100 float-left">
                                                                <i class="fa fa-facebook" aria-hidden="true"></i>
                                                                <span>Đăng nhập bằng Facebook</span>
                                                            </button>
                                                        </div>
                                                        <div class="col-sm-6 col-12 pl-7">
                                                            <button
                                                                class="btn btn-secondary btn-login-google btnw w-100 float-left">
                                                                <i class="fa fa-google" aria-hidden="true"></i>
                                                                <span>Đăng nhập bằng Google</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- (end) login main -->
                        </div>
                    </div>
                    <footer class="login-footer">
                        <div class="w-login m-auto">
                            <div class="row">
                                <!-- login footer left -->
                                <div class="col-md-6 col-sm-12 col-12 login-footer-left">
                                    <div class="login-copyright">
                                        <p>Copyright © 2020 <a href="#"> TechJobs</a>. All Rights Reserved.</p>
                                    </div>
                                </div>
                                <!-- login footer right -->
                                <div class="col-md-6 col-sm-12 col-12 login-footer-right">
                                    <ul>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <!-- Optional JavaScript -->
                    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    <script src="/client/js/jquery-3.4.1.slim.min.js"></script>
                    <script src="/client/js/popper.min.js"></script>
                    <script src="/client/js/bootstrap.min.js"></script>

                    <script type="text/javascript" src="/client/js/main.js"></script>
                </body>

                </html>