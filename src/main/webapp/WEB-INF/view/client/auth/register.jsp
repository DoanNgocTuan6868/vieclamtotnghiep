<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <title>Register - TechJobs</title>
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
                                            <a href="#">
                                                <img src="/client/img/techjobs_bgw.png" alt="TechJobs">
                                            </a>
                                        </h3>
                                        <span class="login-breadcrumb"><em>/</em> Register</span>
                                    </div>
                                    <div class="login-right">
                                        <a href="#" class="btn btn-return">Return Home</a>
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

                                            <form:form method="post" action="/register" modelAttribute="registerUser"
                                                class="login-form reg-form">
                                                <!-- validate  -->
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorPass">
                                                    <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorName">
                                                    <form:errors path="firstName" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorPhone">
                                                    <form:errors path="phone" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorAddress">
                                                    <form:errors path="addRess" cssClass="invalid-feedback" />
                                                </c:set>

                                                <div class="login-main-header">
                                                    <h3>Đăng Ký</h3>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Firstname<span class="req">*</span></h5>
                                                        <form:input type="text"
                                                            class="input form-control-lgin ${not empty errorName ? 'is-invalid' : '' }"
                                                            path="firstName" />
                                                        ${errorName}
                                                    </div>

                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Lastname<span class="req">*</span></h5>
                                                        <form:input type="text" class="input form-control-lgin"
                                                            path="lastName" />
                                                    </div>
                                                </div>

                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Email<span class="req">*</span></h5>
                                                        <form:input type="text"
                                                            class="input form-control-lgin ${not empty errorEmail ? 'is-invalid' : '' }"
                                                            path="email" />
                                                        ${errorEmail}
                                                    </div>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Phone<span class="req">*</span></h5>
                                                        <form:input type="text"
                                                            class="input form-control-lgin ${not empty errorPhone ? 'is-invalid' : '' }"
                                                            path="phone" />
                                                        ${errorPhone}
                                                    </div>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Address<span class="req">*</span></h5>
                                                        <form:input type="text"
                                                            class="input form-control-lgin ${not empty errorAddress ? 'is-invalid' : '' }"
                                                            path="addRess" />
                                                        ${errorAddress}
                                                    </div>
                                                </div>

                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>date of bird<span class="req">*</span></h5>
                                                        <form:input type="text" class="input form-control-lgin"
                                                            path="dateOfBirth" />
                                                    </div>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <form:select class="form-control form-control-lgin"
                                                            path="roleName">
                                                            <form:option value="USER2">Ứng Viên</form:option>
                                                            <form:option value="USER1">Nhà Tuyển Dụng</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>


                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Mật khẩu<span class="req">*</span></h5>
                                                        <form:input type="password" class="input form-control-lgin"
                                                            path="password" />
                                                    </div>
                                                </div>
                                                <div class="input-div one">
                                                    <div class="div lg-lable">
                                                        <h5>Nhập Lại Mật khẩu<span class="req">*</span></h5>
                                                        <form:input type="password"
                                                            class="input form-control-lgin ${not empty errorPass ? 'is-invalid' : '' }"
                                                            path="confirmPassword" />
                                                        ${errorPass }
                                                    </div>
                                                </div>
                                                <div class="form-group d-block frm-text">
                                                    <a href="#" class="fg-login d-inline-block"></a>
                                                    <a href="/login" class="fg-login float-right d-inline-block">Bạn đã có
                                                        tài khoản? Đăng Nhập</a>
                                                </div>
                                                <button type="submit"
                                                    class="btn btn-primary float-right btn-login d-block w-100">Đăng
                                                    Ký</button>
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
                                            </form:form>
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