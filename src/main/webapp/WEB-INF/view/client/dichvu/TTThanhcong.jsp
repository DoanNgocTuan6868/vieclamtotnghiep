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

  <!-- Owl Stylesheets -->
  <link rel="stylesheet" href="/client/css/owlcarousel/owl.carousel.min.css">
  <link rel="stylesheet" href="/client/css/owlcarousel/owl.theme.default.min.css">
   <!-- main css -->
  <link rel="stylesheet" type="text/css" href="/client/css/style.css"> 
</head>
<body>
<!-- main nav -->
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

<!-- main banner -->
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
<!-- (end) main banner -->


<!-- Gói đăng tin tuyển dụng  -->
<h2 class="text-center my-4">Gói Đăng Tin Tuyển Dụng</h2>
    
      <!-- Pricing Cards -->
    <div class="container py-5">
        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <div class="w-50 m-auto">
                
                <h1 class="my-3 text-success text-center">Thanh toán thành công</h1>
                
                <h2 class="my-2">Chi tiết gói dịch vụ</h2>
                
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td>Thông tin gói dịch vụ:</td>
                            <td><span>Gói ${orderId}</span></td>
                        </tr>
                        <tr>
                            <td>Tổng tiền:</td>
                            <td><span><fmt:formatNumber type="number" value="${totalPrice / 100}" /> vnđ</span></td>
                        </tr>
                        <tr>
                            <td>Thời gian thanh toán:</td>
                            <td><span>${paymentTime}</span></td>
                        </tr>
                        <tr>
                            <td>Mã giao dịch:</td>
                            <td><span>${transactionId}</span></td>
                        </tr>
                    </tbody>
                </table>
                <a href="/" class="btn btn-primary">Về trang chủ</a>
            </div>
        </div>
    </div>

<!-- (end) news -->

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

<footer class="container-fluid copyright-wrap">
  <div class="container copyright">
    <p class="copyright-content">
      Copyright © 2020 <a href="#"> Tech<b>Job</b></a>. All Right Reserved.
    </p>
  </div>
</footer>


<!-- (end) footer -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/client/js/readmore.js"></script>
    <script type="text/javascript">
      $('.catelog-list').readmore({
        speed: 75,
        maxHeight: 150,
        moreLink: '<a href="#">Xem thêm<i class="fa fa-angle-down pl-2"></i></a>',
        lessLink: '<a href="#">Rút gọn<i class="fa fa-angle-up pl-2"></i></a>'
      });
    </script>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/client/js/jquery-3.4.1.slim.min.js"></script>
    <script src="/client/js/popper.min.js"></script>
    <script src="/client/js/bootstrap.min.js"></script>
    <script src="/client/js/select2.min.js"></script>
    <script src="/client/js/jobdata.js"></script>

    <!-- <script type="text/javascript" src="js/pagination.js"></script> -->
    <!-- Owl Stylesheets Javascript -->
    <script src="/client/js/owlcarousel/owl.carousel.js"></script>
    <!-- Read More Plugin -->

    

</body>
</html>