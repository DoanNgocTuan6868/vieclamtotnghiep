<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">
            <head>
              <meta charset="UTF-8">
              <title>TechJobs</title>
              <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            
              <!-- Roboto Fonts -->
              <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">
              <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&display=swap" rel="stylesheet">
            
              <!-- bootstrap css -->
              <link rel="stylesheet" type="text/css" href="/client/css/bootstrap.min.css">
            
            
            
              <!-- Font Awesome -->
              <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            
              <!-- select 2 css -->
              <link rel="stylesheet" href="/client/css/select2.min.css">
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            
               <!-- main css -->
              <link rel="stylesheet" type="text/css" href="/client/css/style.css"> 
              <!-- jequery image Preview -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Toastr CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
    <!-- Toastr JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        .toast-custom-top-right {
            top: 100px !important; /* Cách top 300px */
            right: 12px !important; /* Khoảng cách bên phải */
            position: fixed;
            z-index: 9999;
        }
    </style>
            </head>
            <body>
                <div class="container-fluid fluid-nav">
                    <div class="container cnt-tnar">
                      <nav class="navbar navbar-expand-lg navbar-light bg-light tjnav-bar">
                    <!-- <a class="navbar-brand" href="#">Navbar</a> -->
                    <a href="/" class="nav-logo">
                      <img src="/client/img/techjobs_bgb.png">
                    </a>
                    <button class="navbar-toggler tnavbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <!-- <span class="navbar-toggler-icon"></span> -->
                      <i class="fa fa-bars icn-res" aria-hidden="true"></i>
                  
                    </button>
                  <!-- phan header -->
                  <jsp:include page="../layout/header.jsp" />
                  </nav>
                    </div>
                  </div>
                <!-- (end) main nav -->
                
                <div class="clearfix"></div>
                <div class="container-fluid clear-left clear-right">
                    <div class="main-banner">
                      <div class="banner-image">
                        <img src="/client/img/banner2.jpg" alt="banner-image">
                      </div>
                    </div>
                    <div class="banner-content">
                      <h3>1000+ Jobs For Developers</h3>
                      <div class="banner-tags">
                        <ul>
                          <li><a href="#">Java</a></li>
                          <li><a href="#">Python</a></li>
                          <li><a href="#">Tester</a></li>
                          <li><a href="#">QA QC</a></li>
                          <li><a href="#">.NET</a></li>
                          <li><a href="#">Javascript</a></li>
                          <li><a href="#">Business Analyst</a></li>
                          <li><a href="#">Designer</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                


            <!-- widget recuitment  -->
            <div class="container-fluid">
              <div class="container">
                <div class="row">
                  <div class="col-md-12">
                    <div class="home-ads">
                      <a href="#">
                        <img src="/client/img/hna2.jpg">
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- (end) widget recuitment  -->
            
            <!-- published recuitment -->
            <div class="container-fluid published-recuitment-wrapper">
              <div class="container published-recuitment-content">
                <div class="row">
                  <div class="col-md-8 col-sm-12 col-12 recuitment-inner">
                    <!-- form -->
                    <form:form class="employee-form" method="post" enctype="multipart/form-data"
                    action="/ungvien/profileUpdate" modelAttribute="userTD" >
                    <c:set var="errorEmail">
                        <form:errors path="email" cssClass="invalid-feedback" />
                    </c:set>
                    <c:set var="errorPass">
                        <form:errors path="password" cssClass="invalid-feedback" />
                    </c:set>
                    <c:set var="errorFullname">
                        <form:errors path="fullName" cssClass="invalid-feedback" />
                    </c:set>
                      <div class="accordion" id="accordionExample">
                        <div class="card recuitment-card">
                          <div class="card-header recuitment-card-header" id="headingOne">
                            <h2 class="mb-0">
                              <a class="btn btn-link btn-block text-left recuitment-header" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Thông tin tài khoản
                                <span id="clickc1_advance2" class="clicksd">
                                  <i class="fa fa fa-angle-up"></i>
                                </span>
                              </a>
                            </h2>
                          </div>
            
                          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body recuitment-body row">
                              <div class="col-md-3">
                                <div class="avatar-upload">
                                  <div class="avatar-edit">
                                      <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
                                      <label for="imageUpload"></label>
                                  </div>
                                  <div class="avatar-preview">
                                      <div id="imagePreview" style="background-image: url(https://i.pravatar.cc/500?img=7);">
                                      </div>
                                  </div>
                              </div>
                              </div>
                              <div class="col-md-9">
                                <div class="form-group row d-none ">
                                    <label class="col-sm-3 col-form-label text-right label">id<span style="color: red" class="pl-2">*</span></label>
                                    <div class="col-sm-9">
                                      <form:input type="text" class="form-control" placeholder="Nhập tên " path="id"/>
                                    </div>
                                  </div>

                                <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Tên tài khoản<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control" placeholder="Nhập tên " path="fullName"/>
                                </div>
                              </div>
                              

                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Email<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control" placeholder="Nhập mail " path="email"/>
                                </div>
                              </div>

                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Số điện thoại</label>
                                <div class="col-sm-9">
                                  <form:input type="number" class="form-control" path="phone" />
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Ngày sinh</label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control" path="dateOfBirth"/>
                                </div>
                              </div>
                              
                           
                            
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Địa chỉ<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control"  path="addRess"/>
                                </div>
                              </div>
                             
        
            
                              </div>
                              
                            </div>
                          </div>
                        </div>
            
                        
                      </div>
                      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                      <div class="rec-submit">
                        <button class="btn-submit-recuitment mb-3 ml-3" name="">
                          <i class="fa fa-floppy-o pr-2"></i>Lưu Hồ Sơ
                        </button>
                      </div>
                    </form:form>
                    
                  </div>
                  <!-- Side bar -->
                  <div class="col-md-4 col-sm-12 col-12">
                    <div class="recuiter-info">
                      <div class="recuiter-info-avt">
                        <img src="/client/img/icon_avatar.jpg">
                      </div>
                      <div class="clearfix list-rec">
                        <h4>Hồ Quốc Hiếu</h4>
                        <ul>
                          <li><a href="#">Việc làm đã nộp <strong>(0)</strong></a></li>
                          <li><a href="#">Việc làm đã lưu <strong>(11450)</strong></a></li>
                          <li><a href="#">Hồ sơ phê duyệt <strong>(1150)</strong></a></li>
                        </ul>
                      </div>
                    </div>
            
            
                    <div class="block-sidebar" style="margin-bottom: 20px;">
               <header>
                  <h3 class="title-sidebar font-roboto bg-primary">
                     Trung tâm quản lý
                  </h3>
               </header>
               
            </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- (end) published recuitment -->
            
            <div class="clearfix"></div>
            
            
            
            
            
            <!-- job support -->
            <div class="container-fluid job-support-wrapper">
             <div class="container-fluid job-support-wrap">
              <div class="container job-support">
                <div class="row">
                  <div class="col-md-6 col-sm-12 col-12">
                    <ul class="spp-list">
                      <li>
                        <span><i class="fa fa-question-circle pr-2 icsp"></i>Hỗ trợ nhà tuyển dụng:</span>
                      </li>
                      <li>
                        <span><i class="fa fa-phone pr-2 icsp"></i>0123.456.789</span>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-6 col-sm-12 col-12">
                    <div class="newsletter">
                        <span class="txt6">Đăng ký nhận bản tin việc làm</span>
                        <div class="input-group frm1">
                          <input type="text" placeholder="Nhập email của bạn" class="newsletter-email form-control">
                          <a href="#" class="input-group-addon"><i class="fa fa-lg fa-envelope-o colorb"></i></a>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
            <!-- (end) job support -->
            
            
            <!-- footer -->
            <jsp:include page="../layout/footer.jsp" />
            
            <!-- (end) footer -->
            
            
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            
            <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="/client/js/jquery-3.4.1.slim.min.js"></script>
                <script src="/client/js/popper.min.js"></script>
                <script src="/client/js/bootstrap.min.js"></script>
                <script src="/client/js/select2.min.js"></script>
                <script src="/client/js/jobdata.js"></script>
            
                <script type="text/javascript" src="/client/js/main.js"></script> 
                <!-- Owl Stylesheets Javascript -->
                <script src="/client/js/owlcarousel/owl.carousel.js"></script>
                <!-- Read More Plugin -->
            <script type="text/javascript">
              // Avatar upload and preview
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#imagePreview').css('background-image', 'url('+e.target.result +')');
                        // $('#imagePreview').hide();
                        // $('#imagePreview').fadeIn(650);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
            $("#imageUpload").change(function() {
                readURL(this);
            });
            </script>
            <script type="text/javascript">
                $(document).ready(function () {
                    toastr.options = {
                        "closeButton": true,
                        "debug": false,
                        "newestOnTop": true,
                        "progressBar": true,
                        "positionClass": "toast-custom-top-right", // Thay đổi vị trí hiển thị
                        "preventDuplicates": true,
                        "showDuration": "300",
                        "hideDuration": "1000",
                        "timeOut": "3000", // Thời gian tồn tại của thông báo
                        "extendedTimeOut": "1000",
                        "showEasing": "swing",
                        "hideEasing": "linear",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    };
                    // Check if there's a flash attribute 'message'
                    <c:if test="${not empty message}">
                        toastr.success("${message}");
                    </c:if>
                });
            </script>
               
            
            </body>
            </html>