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
  <link rel="stylesheet" type="text/css" href="client/css/bootstrap.min.css">



  <!-- Font Awesome -->
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <!-- select 2 css -->
  <link rel="stylesheet" href="client/css/select2.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <!-- Owl Stylesheets -->
  <link rel="stylesheet" href="client/css/owlcarousel/owl.carousel.min.css">
  <link rel="stylesheet" href="client/css/owlcarousel/owl.theme.default.min.css">
   <!-- main css -->
  <link rel="stylesheet" type="text/css" href="client/css/style.css"> 
</head>
<body>
<!-- main nav -->
<div class="container-fluid fluid-nav">
  <div class="container cnt-tnar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light tjnav-bar">
  <!-- <a class="navbar-brand" href="#">Navbar</a> -->
  <a href="#" class="nav-logo">
    <img src="client/img/techjobs_bgb.png">
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
      <img src="client/img/banner2.jpg" alt="banner-image">
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

<!-- search section -->
<div class="container-fluid search-fluid">
  <div class="container">
    <div class="search-wrapper" style="margin-top: -11rem;">

      <ul class="nav nav-tabs search-nav-tabs" id="myTab" role="tablist">
      <li class="nav-item search-nav-item">
        <a class="nav-link snav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Tìm việc làm</a>
      </li>
      <li class="nav-item search-nav-item">
        <a class="nav-link snav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Tìm công ty</a>
      </li>
    </ul>
    <div class="tab-content search-tab-content" id="myTabContent">
      <!-- content tab 1 -->
      <div class="tab-pane stab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
        <form method="get" action="/job" class="bn-search-form">
          <div class="row">
            <div class="col-md-10 col-sm-12">
              <div class="row">
                <div class="col-md-5 d-none">
                  <div class="input-group s-input-group">
                    <input type="text" class="form-control sinput" name="page" value="1">
                    <span><i class="fa fa-search"></i></span>
                  </div>
                </div>

                <div class="col-md-5">
                  <div class="input-group s-input-group">
                    <input name="name" type="text" class="form-control sinput" placeholder="Nhập kỹ năng, công việc,...">
                    <span><i class="fa fa-search"></i></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <select name="inductry" id="computer-languages">
                    <option value="" selected hidden >chọn ngành</option>
                    <option value="Kinh doanh">Kinh doanh</option>
                    <option value="Bán hàng">Bán hàng</option>
                    <option value="Chăm sóc khách hàng">Chăm sóc khách hàng</option>
                    <option value="Tài chính/Kế toán/Kiểm toán">Tài chính/Kế toán/Kiểm toán</option>
                    <option value="Hành chính/Thư ký/Trợ lý">Hành chính/Thư ký/Trợ lý</option>
                    <option value="Lao động phổ thông">Lao động phổ thông</option>
                    <option value="Cơ khí/Kĩ thuật ứng dụng">Cơ khí/Kĩ thuật ứng dụng</option>
                    <option value="Sinh viên/Mới tốt nghiệp/Thực tập">Sinh viên/Mới tốt nghiệp/Thực tập</option>
                    <option value="Điện/Điện tử/Điện lạnh">Điện/Điện tử/Điện lạnh</option>
                    <option value="Báo chí/Biên tập viên">Báo chí/Biên tập viên</option>
                    <option value="Bảo vệ/Vệ sĩ/An ninh">Bảo vệ/Vệ sĩ/An ninh</option>
                    <option value="Bất động sản">Bất động sản</option>
                    <option value="Biên dịch/Phiên dịch">Biên dịch/Phiên dịch</option>
                    <option value="Bưu chính viễn thông">Bưu chính viễn thông</option>
                    <option value="Công nghệ thông tin">Công nghệ thông tin</option>
                    <option value="Dầu khí/Địa chất">Dầu khí/Địa chất</option>
                    <option value="Dệt may">Dệt may</option>
                    <option value="Ngân hàng">Ngân hàng</option>
                </select>
                <i class="fa fa-code sfa" aria-hidden="true"></i>
                </div>
                <div class="col-md-3">
                  <select name="area" id="s-provinces">
                    <option value="" selected hidden >Tất cả địa điểm</option>
                    <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                        <option value="Hà Nội">Hà Nội</option>
                        <option value="An Giang">An Giang</option>
                        <option value="Bạc Liêu">Bạc Liêu</option>
                        <option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
                        <option value="Bắc Cạn">Bắc Cạn</option>
                        <option value="Bắc Giang">Bắc Giang</option>
                        <option value="Bắc Ninh">Bắc Ninh</option>
                        <option value="Bến Tre">Bến Tre</option>
                        <option value="Bình Dương">Bình Dương</option>
                        <option value="Bình Định">Bình Định</option>
                        <option value="Bình Phước">Bình Phước</option>
                        <option value="Bình Thuận">Bình Thuận</option>
                        <option value="Cao Bằng">Cao Bằng</option>
                        <option value="Cà Mau">Cà Mau</option>
                        <option value="Cần Thơ">Cần Thơ</option>
                        <option value="Đà Nẵng">Đà Nẵng</option>
                        <option value="Đắk Lắk">Đắk Lắk</option>
                        <option value="Đắk Nông">Đắk Nông</option>
                        <option value="Điện Biên">Điện Biên</option>
                        <option value="Đồng Nai">Đồng Nai</option>
                        <option value="Đồng Tháp">Đồng Tháp</option>
                        <option value="Gia Lai">Gia Lai</option>
                        <option value="Hà Giang">Hà Giang</option>
                        <option value="Hà Nam">Hà Nam</option>
                        <option value="Hà Tĩnh">Hà Tĩnh</option>
                        <option value="Hải Dương">Hải Dương</option>
                        <option value="Hải Phòng">Hải Phòng</option>
                        <option value="Nam Định">Nam Định</option>
                        <option value="Nghệ An">Nghệ An</option>
                        <option value="Ninh Bình">Ninh Bình</option>
                        <option value="Ninh Thuận">Ninh Thuận</option>
                        
                </select>
                <i class="fa fa-map-marker sfa" aria-hidden="true"></i>
                </div>
              </div>
            </div>
            <div class="col-md-2 col-sm-12">
              <button type="submit" class="btn btn-primary btn-search col-sm-12">Tìm kiếm</button>
            </div>
          </div>
        </form>  
      </div>
      <!-- (end) content tab 1 -->
      <!-- content tab 2 -->
      <div class="tab-pane stab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
          <form class="bn-search-form">
          <div class="row">
            <div class="col-md-10 col-sm-12">
                  <div class="input-group s-input-group w-100">
                    <input type="text" class="form-control sinput" placeholder="Nhập kỹ năng, công việc,...">
                    <span><i class="fa fa-search"></i></span>
                  </div>
            </div>
            <div class="col-md-2 col-sm-12">
              <button type="submit" class="btn btn-primary btn-search col-sm-12">Tìm kiếm</button>
            </div>
          </div>
        </form> 
      </div>
      <!-- (end) content tab 2 -->
    </div>

    </div>
  </div>
</div>
<!-- (end) search section -->

<!-- job board & sidebar section  -->
<div class="container-fluid jb-wrapper">
  <div class="container">
    <div class="row">
    <!-- job board -->
    <div class="col-md-8 col-sm-12 col-12">
      <div class="job-board-wrap">
        <h2 class="widget-title">
          <span>Việc làm nổi bật</span>
        </h2>

        <div class="job-group">
          <c:forEach var="job" items="${listJob}">
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="/job/chitiet/${job.id}">
                    <img src="/images/company/${job.logo}" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="/job/chitiet/${job.id}">${job.title}</a>
                  </div>
                  <div class="job-company">
                    <a href="/job/chitiet/${job.id}"></a> ${job.user.company}| <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>${job.area}</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> ${job.inductry}</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">${job.salary}</span>
                      
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>${job.dateline}</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="/job/chitiet/${job.id}" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
          </c:forEach>
          
            
            <div class="readmorestyle-wrap">
              <a href="/job" class="readallstyle reads1">Xem tất cả</a>
            </div>
</div>
      </div>
      
    </div>

    <!-- (end) job board -->
    <!-- sidebar -->
    <div class="col-md-4 col-sm-12 col-12 clear-left">
      <div class="job-sidebar">
        <h2 class="widget-title">
          <span>Ngành Nghề</span>
        </h2>
        <div class="catelog-list">
          <ul>
            <li>
              <a href="#">
                <span class="cate-img">
                  <em>Lập trình viên</em>
                </span>
                <span class="cate-count">(1100)</span>
              </a>
            </li>
              <li>
                <a href="#">
                  <span class="cate-img">
                  <em>Nhân viên kiểm thử</em>
                </span>
                <span class="cate-count">(230)</span>
              </a>
            </li>
              <li>
                <a href="#">
                  <span class="cate-img">
                  <em>Kỹ sư cầu nối</em>
                </span>
                <span class="cate-count">(110)</span>
              </a>
            </li>
              <li>
                <a href="#">
                  <span class="cate-img">
                  <em>Designer</em>
                </span>
                <span class="cate-count">(2300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>Product Manager</em>
                </span>
                <span class="cate-count">(99)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#">
                  <span class="cate-img">
                  <em>HR</em>
                </span>
                <span class="cate-count">(300)</span>
              </a>
            </li>
            <li>
                <a href="#" class="readallstyle reads1">Xem tất cả</a>
            </li>

          </ul>
        </div>
      </div>

      <div class="job-sidebar">
        <div class="sb-banner">
          <img src="client/img/ads1.jpg" class="advertisement">
        </div>
      </div>
    </div>
    <!-- (end) sidebar -->
    </div>
  </div>
</div>
<!-- (end) job board & sidebar section  -->



<div class="clearfix"></div>



<!-- job board v2 -->
<div class="container-fluid">
  <div class="container job-board2">
    <div class="row">
      <div class="col-md-12 job-board2-wrap-header">
        <h3>Tin tuyển dụng, việc làm mới nhất</h3>
      </div>
      <div class="col-md-12 job-board2-wrap">
          <div class="owl-carousel owl-theme job-board2-contain">
            <c:forEach var="job" items="${listJob}">
              <div class="item job-latest-item">
                <a href="/job/chitiet/${job.id}" class="job-latest-group">
                  <div class="job-lt-logo">
                    <img src="/images/company/${job.logo}">
                  </div>
                  <div class="job-lt-info">
                    <h3>${job.title}</h3>
                    <a class="company" href="/job/chitiet/${job.id}">${job.user.company}</a>
                    <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i>${job.area}</p>
                  </div>
                </a>
              </div>
            </c:forEach>
            
           
        </div>

      </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function() {
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        responsiveClass:true,
        responsive:{
            0:{
                items:2,
                nav:true,
                slideBy: 2,
                dots: false
            },
            600:{
                items:4,
                nav:false,
                slideBy: 2,
                dots: false
            },
            1000:{
                items: 6,
                nav:true,
                loop:false,
                slideBy: 2
            }
        }
    });
})
</script>
<!-- (end) job board v2 -->

<div class="clearfix"></div>

<!-- top employer -->
<div class="container-fluid">
  <div class="container top-employer">
    <div class="row">
      <div class="col-md-12 top-employer-contain">
        <div class="header">
          <h3>Nhà tuyển dùng hàng đầu</h3>
        </div>
        <div class="row">
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/fpt-logo.png">
                </div>
                <h3 class="company">FPT Software</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/nvg-logo.png">
                </div>
                <h3 class="company">mgm technology</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/alipay-logo.png">
                </div>
                <h3 class="company">ALIPAY Software</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/luxoft-vietnam-logo.png">
                </div>
                <h3 class="company">Luxoft Software</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/techcombank-logo.png">
                </div>
                <h3 class="company">Techcombank</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/home-credit.png">
                </div>
                <h3 class="company">Home Credit</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/grab-vietnam.png">
                </div>
                <h3 class="company">Grab (Vietnam) Ltd.</h3>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-12 top-employer-wrap">
            <div class="top-employer-item">
              <a href="#">
                <div class="emp-img-thumb">
                  <img src="client/img/HINH.png">
                </div>
                <h3 class="company">Techbase Vietnam</h3>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- (end) top employer -->

<div class="clearfix"></div>


<!-- job-best-salary -->
<div class="container-fluid">
  <div class="container job-best-salary">
    <div class="row">
      <div class="col-md-12 job-board2-wrap-header job-best-salary-header">
        <h3><i class="fa fa-briefcase pr-2"></i> Top việc làm công nghệ thông tin</h3>
      </div>
    </div>
    <div class="row job-best-salary-inner">
      <c:forEach var="jobin" items="${ListJobInductry}">
        <div class="col-md-6 job-over-item">
          <div class="job-inner-over-item">
            <a href="/job/chitiet/${job.id}">
            <div class="thumbnail">
              <img src="/images/company/${jobin.logo}" alt="company logo image">
            </div>
            <div class="content">
              <div class="job-name">
                ${jobin.title}
              </div>
              <a href="/job/chitiet/${job.id}" class="company">
                ${jobin.user.company}
              </a>
            </div>
            <div class="extra-info">
              <p class="salary mt-2"><i class="fa fa-money pr-2"></i>${jobin.salary}</p>
              <p class="place"><i class="fa fa-map-marker pr-2"></i>${jobin.area}</p>
            </div>
          </a>
          </div>
        </div>
      </c:forEach>
      
  
    </div>
  </div>
</div>
<!-- (end) job-best-salary -->


<div class="container-fluid">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="home-ads">
          <a href="#">
            <img src="client/img/hna.jpg">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="clearfix"></div>

<!-- Gói đăng tin tuyển dụng  -->
<!-- Gói đăng tin tuyển dụng  -->
<h2 class="text-center my-4">Gói Đăng Tin Tuyển Dụng</h2>
    <div class="container my-5">
      <div class="row g-4 text-center">
        <!-- Basic Package -->
        <c:forEach var="plan" items="${listplans}">
        <div class="col-md-4">
          <div class="card h-100 shadow-lg border-0">
            <div class="card-body d-flex flex-column justify-content-between">
              <div>
                <h5 class="card-title bg-primary text-white py-2 rounded">
                    ${plan.name}
                </h5>
                <p class="card-text">
                  Phù hợp cho công ty nhỏ tìm kiếm ứng viên chủ chốt.
                </p>
                <ul class="list-group list-group-flush mb-3">
                  <li class="list-group-item">1 lần đăng tin tuyển dụng</li>
                  <li class="list-group-item">5 lượt xem hồ sơ</li>
                  <li class="list-group-item">Hỗ trợ cơ bản</li>
                </ul>
              </div>
              <h3 class="card-text"><fmt:formatNumber type="number" value="${plan.price}" /> đ/tháng</h3>
              <form action="/dkdichvu" method="post">
                <input type="hidden" type="text" value="${plan.id}" name="id">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button class="btn btn-outline-primary w-100 mt-3">Đăng ký gói</button>
            </form>
            </div>
          </div>
        </div>
    </c:forEach>
       
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
<script type="text/javascript" src="client/js/readmore.js"></script>
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
    <script src="client/js/jquery-3.4.1.slim.min.js"></script>
    <script src="client/js/popper.min.js"></script>
    <script src="client/js/bootstrap.min.js"></script>
    <script src="client/js/select2.min.js"></script>
    <script src="client/js/jobdata.js"></script>

    <!-- <script type="text/javascript" src="js/pagination.js"></script> -->
    <!-- Owl Stylesheets Javascript -->
    <script src="client/js/owlcarousel/owl.carousel.js"></script>
    <!-- Read More Plugin -->

    

</body>
</html>