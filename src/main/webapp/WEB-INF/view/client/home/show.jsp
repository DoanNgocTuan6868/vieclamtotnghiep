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
        <form class="bn-search-form">
          <div class="row">
            <div class="col-md-10 col-sm-12">
              <div class="row">
                <div class="col-md-5">
                  <div class="input-group s-input-group">
                    <input type="text" class="form-control sinput" placeholder="Nhập kỹ năng, công việc,...">
                    <span><i class="fa fa-search"></i></span>
                  </div>
                </div>
                <div class="col-md-4">
                  <select id="computer-languages">
                    <option value="" selected hidden >Ngành nghề </option>
                    <option>Java</option>
                    <option>.NET</option>
                    <option>Javascript</option>
                    <option>Php</option>
                    <option>Python</option>
                    <option>QC QC</option>
                    <option>Business Analyst</option>
                    <option>Tester</option>
                    <option>Ruby</option>
                </select>
                <i class="fa fa-code sfa" aria-hidden="true"></i>
                </div>
                <div class="col-md-3">
                  <select id="s-provinces">
                    <option value="" selected hidden >Tất cả địa điểm</option>
                    <option>Đà Nẵng</option>
                    <option>Hà Nội</option>
                    <option>Hồ Chí Minh</option>
                    <option>Buôn Ma Thuột</option>
                    <option>Quy Nhơn</option>
                    <option>Nha Trang</option>
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
          <span>Tuyển gấp</span>
        </h2>

        <div class="job-group">
          <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/fpt-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">[HCM] 02 Solution Architects–Up to $2000</a>
                  </div>
                  <div class="job-company">
                    <a href="#">Fpt Software</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Đà Nẵng</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> Java</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/12/2019</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/alipay-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">Fullstack .NET Developer (Angular/React)</a>
                  </div>
                  <div class="job-company">
                    <a href="#">Orient Software</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Hà Nội</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> .NET</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/02/2020</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/nvg-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">Frontend Developer (JavaScript, ReactJS)</a>
                  </div>
                  <div class="job-company">
                    <a href="#">mgm technology</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Đà Nẵng</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> JavaScript, ReactJS</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/12/2019</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/luxoft-vietnam-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">IVI System Test Engineer</a>
                  </div>
                  <div class="job-company">
                    <a href="#">NVG TECHNOLOGY</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Đà Nẵng</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> Javascript</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/12/2019</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/fpt-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">[HCM] 02 Solution Architects–Up to $2000</a>
                  </div>
                  <div class="job-company">
                    <a href="#">Fpt Software</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Đà Nẵng</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> Java</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/12/2019</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="job pagi">
              <div class="job-content">
                <div class="job-logo">
                  <a href="#">
                    <img src="client/img/fpt-logo.png" class="job-logo-ima" alt="job-logo">
                  </a>
                </div>

                <div class="job-desc">
                  <div class="job-title">
                    <a href="#">[HCM] 02 Solution Architects–Up to $2000</a>
                  </div>
                  <div class="job-company">
                    <a href="#">Fpt Software</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i>
Đà Nẵng</a>
                  </div>

                  <div class="job-inf">
                    <div class="job-main-skill">
                      <i class="fa fa-code" aria-hidden="true"></i>  <a href="#"> Java</a>
                    </div>
                    <div class="job-salary">
                      <i class="fa fa-money" aria-hidden="true"></i>
                      <span class="salary-min">15<em class="salary-unit">triệu</em></span>
                      <span class="salary-max">35 <em class="salary-unit">triệu</em></span>
                    </div>
                    <div class="job-deadline">
                      <span><i class="fa fa-clock-o" aria-hidden="true"></i>  Hạn nộp: <strong>31/12/2019</strong></span>
                    </div>
                  </div>
                </div>
                <div class="wrap-btn-appl">
                  <a href="#" class="btn btn-appl">Apply Now</a>
                </div>
              </div>
            </div>
            <div class="readmorestyle-wrap">
              <a href="#" class="readallstyle reads1">Xem tất cả</a>
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
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000 #1</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/alipay-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>Fullstack .NET Developer (Angular/React) #2</h3>
                  <a class="company" href="#">Orient Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/nvg-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>Frontend Developer (JavaScript, ReactJS)</h3>
                  <a class="company" href="#">mgm technology</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/luxoft-vietnam-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>IVI System Test Engineer</h3>
                  <a class="company" href="#">LUXOFT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
            <div class="item job-latest-item">
              <a href="#" class="job-latest-group">
                <div class="job-lt-logo">
                  <img src="client/img/fpt-logo.png">
                </div>
                <div class="job-lt-info">
                  <h3>[HCM] 02 Solution Architects–Up to $2000</h3>
                  <a class="company" href="#">FPT Software</a>
                  <p class="address" ><i class="fa fa-map-marker pr-1" aria-hidden="true"></i> Đà Nẵng</p>
                </div>
              </a>
            </div>
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
        <h3><i class="fa fa-briefcase pr-2"></i> Việc làm hấp dẫn</h3>
      </div>
    </div>
    <div class="row job-best-salary-inner">
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/hdbank-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Java Developer (.NET, PL/SQL)
            </div>
            <a href="#company" class="company">
              HD Bank
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>15 - 35 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hồ Chí Minh</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/SCS_Logo_original.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Senior .NET Developers
            </div>
            <a href="#company" class="company">
              SCS Solution
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>20 - 40 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fpt-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Senior .NET Dev – Signing bonus upto 30M
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>35 - 70 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/novaon-digital-group-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET Developer (C#, ASP.NET) Up to $1200
            </div>
            <a href="#company" class="company">
              NOVAON
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
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

<!-- job-best-salary -->
<div class="container-fluid">
  <div class="container job-best-salary">
    <div class="row">
      <div class="col-md-12 job-board2-wrap-header job-best-salary-header">
        <h3><i class="fa fa-briefcase pr-2"></i> Việc làm lương cao</h3>
      </div>
    </div>
    <div class="row job-best-salary-inner">
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/hdbank-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Java Developer (.NET, PL/SQL)
            </div>
            <a href="#company" class="company">
              HD Bank
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>15 - 35 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hồ Chí Minh</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/SCS_Logo_original.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Senior .NET Developers
            </div>
            <a href="#company" class="company">
              SCS Solution
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>20 - 40 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fpt-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              Senior .NET Dev – Signing bonus upto 30M
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>35 - 70 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/novaon-digital-group-logo.png" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET Developer (C#, ASP.NET) Up to $1200
            </div>
            <a href="#company" class="company">
              NOVAON
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
      <div class="col-md-6 job-over-item">
        <div class="job-inner-over-item">
          <a href="#wrap">
          <div class="thumbnail">
            <img src="client/img/fitech-logo.jpg" alt="company logo image">
          </div>
          <div class="content">
            <div class="job-name">
              .NET/C# developers ($1,000-$1,500 net)
            </div>
            <a href="#company" class="company">
              Fitech
            </a>
          </div>
          <div class="extra-info">
            <p class="salary mt-2"><i class="fa fa-money pr-2"></i>10 - 20 triệu</p>
            <p class="place"><i class="fa fa-map-marker pr-2"></i>Hà Nội</p>
          </div>
        </a>
        </div>
      </div>
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
            <img src="client/img/hna2.jpg">
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="clearfix"></div>

<!-- Gói đăng tin tuyển dụng  -->
<h2 class="text-center my-4">Gói Đăng Tin Tuyển Dụng</h2>
    <div class="container my-5">
      <div class="row g-4 text-center">
        <!-- Basic Package -->
        <div class="col-md-4">
          <div class="card h-100 shadow-lg border-0">
            <div class="card-body d-flex flex-column justify-content-between">
              <div>
                <h5 class="card-title bg-primary text-white py-2 rounded">
                  Gói Cơ Bản
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
              <h3 class="card-text">$199/tháng</h3>
              <a href="#" class="btn btn-outline-primary w-100 mt-3"
                >Chọn Gói Cơ Bản</a
              >
            </div>
          </div>
        </div>

        <!-- Standard Package -->
        <div class="col-md-4">
          <div class="card h-100 shadow-lg border-0">
            <div class="card-body d-flex flex-column justify-content-between">
              <div>
                <h5 class="card-title bg-success text-white py-2 rounded">
                  Gói Tiêu Chuẩn
                </h5>
                <p class="card-text">
                  Thích hợp cho doanh nghiệp có nhu cầu tuyển dụng cao hơn.
                </p>
                <ul class="list-group list-group-flush mb-3">
                  <li class="list-group-item">3 lần đăng tin tuyển dụng</li>
                  <li class="list-group-item">10 lượt xem hồ sơ</li>
                  <li class="list-group-item">Hỗ trợ ưu tiên</li>
                </ul>
              </div>
              <h3 class="card-text">$399/tháng</h3>
              <a href="#" class="btn btn-outline-primary w-100 mt-3"
                >Chọn Gói Tiêu Chuẩn</a
              >
            </div>
          </div>
        </div>

        <!-- Premium Package -->
        <div class="col-md-4">
          <div class="card h-100 shadow-lg border-0">
            <div class="card-body d-flex flex-column justify-content-between">
              <div>
                <h5 class="card-title bg-danger text-white py-2 rounded">
                  Gói Cao Cấp
                </h5>
                <p class="card-text">
                  Phù hợp cho doanh nghiệp cần tuyển dụng với số lượng lớn.
                </p>
                <ul class="list-group list-group-flush mb-3">
                  <li class="list-group-item">
                    Đăng tin tuyển dụng không giới hạn
                  </li>
                  <li class="list-group-item">Xem hồ sơ không giới hạn</li>
                  <li class="list-group-item">
                    Quản lý tài khoản chuyên nghiệp
                  </li>
                </ul>
              </div>
              <h3 class="card-text">$999/tháng</h3>
              <a href="#" class="btn btn-outline-primary w-100 mt-3"
                >Chọn Gói Cao Cấp</a
              >
            </div>
          </div>
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