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
              <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/client/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            
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
                <a href="/" class="nav-logo">
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
            
            <!-- search section -->
            <div class="container-fluid search-fluid">
              <div class="container">
                <div class="search-wrapper">
            
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
            
            
            
            <div class="container-fluid">
              <div class="container search-wrapper">
                <div class="row">
                  <div class="col-md-3 col-sm-12 col-12">
                                <a id="click_advance" class="btn btn-c-filter" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="true" aria-controls="collapseExample">
                            <i class="pr-2 fa fa-times" id="icon-s-sw" aria-hidden="true"></i>Filter &amp; Refind
                          </a>
            
                        <div class="collapse show" id="collapseExample" style="">
                          <div class="card card-body bg-card-body-filter">
                            <div class="filter-bar">
                                <div class="filter-form">
                                     <div class="filter-form-item">
                                       <p>
                                          <a id="clickc_advance" class="btnf btn-filter" data-toggle="collapse" href="#filter-topic" role="button" aria-expanded="false" aria-controls="collapseExample">
                                            Ngành nghề
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                          </a>
                                        </p>
                                        <div class="collapse show" id="filter-topic">
                                          <div class="card o-card card-body">
                                            <div class="filter-panel">
                                                <div class="panel-content">
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Tất cả ngành nghề</a>
                                                        <span class="filter-count">1,000</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Lập trình viên</a>
                                                        <span class="filter-count">555</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kiểm thử phần mềm</a>
                                                        <span class="filter-count">233</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Thiết kế đồ họa</a>
                                                        <span class="filter-count">100</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Tuyển dụng (HR)</a>
                                                        <span class="filter-count">99</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kĩ sư cầu nối</a>
                                                        <span class="filter-count">95</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">77</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Kỹ sư mạng</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                </div>
                                            </div>
                                           </div>
                                        </div>
            
                                        <p>
                                          <a id="clickc2_advance" class="btnf btn-filter" data-toggle="collapse" href="#filter-price" role="button" aria-expanded="false" aria-controls="collapseExample">
                                            Mức Lương
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                          </a>
                                        </p>
                                        <div class="collapse show" id="filter-price">
                                          <div class="card o-card card-body">
                                            <div class="filter-panel">
                                                <div class="panel-content">
                                                    <div class="filter-topic filter-input-price">
                                                        <form class="al-price-filter">
                                                            <span class="_fpblock">
                                                                <input type="number" class="if-price" id="" placeholder="50,000">
                                                            </span>
                                                            <span class="_fpblock _line">
                                                                <p>-</p>
                                                            </span>
                                                            <span class="_fpblock">
                                                                <input type="number" class="if-price" id="" placeholder="1,000,000">
                                                            </span>
                                                             <span class="_fpblock">
                                                                 <button type="submit" class="sb-fprice"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                                             </span>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                           </div>
                                        </div>
                                            </div>
                                            <div class="filter-form-item">
                                                <p>
                                                  <a id="clickc3_advance" class="btnf btn-filter" data-toggle="collapse" href="#filter-video-duration" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                    Đánh giá
                                                    <i class="fa fa-angle-up" aria-hidden="true"></i>
                                                  </a>
                                                </p>
                                                <div class="collapse show" id="filter-video-duration">
                                                  <div class="card o-card card-body">
                                                    <div class="filter-panel">
                                                        <div class="panel-content">
                                                            <div class="filter-rating">
                                                                <a href="#">
                                                                    <span class="rating-wrapper">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span>(từ 5 sao)</span>
                                                                </a>
                                                            </div>
                                                            <div class="filter-rating">
                                                                <a href="#">
                                                                    <span class="rating-wrapper">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span>(từ 4 sao)</span>
                                                                </a>
                                                            </div>
                                                            <div class="filter-rating">
                                                                <a href="#">
                                                                    <span class="rating-wrapper">
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span>(từ 3 sao)</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   </div>
                                                </div>
                                        <p>
                                          <a id="clickc4_advance" class="btnf btn-filter" data-toggle="collapse" href="#filter-provider" role="button" aria-expanded="false" aria-controls="collapseExample">
                                            Cấp bậc
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                          </a>
                                        </p>
                                        <div class="collapse show" id="filter-provider">
                                          <div class="card o-card card-body">
                                            <div class="filter-panel">
                                                <div class="panel-content">
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Tất cả cấp bậc</a>
                                                        <span class="filter-count">2,450</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Thực tập sinh</a>
                                                        <span class="filter-count">555</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Nhân viên</a>
                                                        <span class="filter-count">233</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Trưởng nhóm</a>
                                                        <span class="filter-count">100</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Trưởng phòng</a>
                                                        <span class="filter-count">99</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Phó giám đốc</a>
                                                        <span class="filter-count">95</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Giám đốc</a>
                                                        <span class="filter-count">77</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Tổng giám đốc điều hành</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Thư kí</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                    <div class="filter-topic cotain-common-filter">
                                                        <a href="#" class="filter-action">Khác</a>
                                                        <span class="filter-count">50</span>
                                                    </div>
                                                </div>
                                            </div>
                                           </div>
                                        </div>
                                            </div>
            
                                    </div>
                                </div> <!-- filter bar -->
                                <script type="text/javascript">
                                    window.onload = function() {screenCollapse()};
            
                                    let ele = document.getElementsByClassName("collapse");
            
                                    function screenCollapse() { 
                                        if(window.innerWidth < 720) {
                                            $(".collapse").removeClass("show");
                                            $(".collapse").addClass("hide");
                                        }
                                    }
                                </script>
                          </div>
                        </div> <!-- ./ collapse -->
                            </div>
                <div class="col-md-9 col-sm-12 col-12">
                  <h4 class="search-find">Việc làm tuyển dụng</h4>
                  <div class="job-board-wrap">
                    <div class="job-group">
                      <c:if test="${totalPages ==  0}">
                                <div class="col-lg-12 col-md-12">
                                    <div class="text-center" >Không tìm thấy việc làm</div>
                                </div>
                            </c:if>
                            <c:forEach var="job" items="${listjob}">
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
                                      <a href="/job/chitiet/${job.id}">${job.user.company}</a> | <a href="#" class="job-address"><i class="fa fa-map-marker" aria-hidden="true"></i> ${job.area}</a>
                                    </div>
                  
                                    <div class="job-inf">
                                     
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
                    </div>
                    <c:if test="${totalPages > 0}">
                      <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                          <c:if test="${curentPage != 1}">
                            <li class="page-item disabled">
                              <a class="page-link" href="/job?page=${curentPage -1}${queryString}" tabindex="-1" aria-disabled="true">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                          </c:if>
                          <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                            <li class="page-item ${(loop.index + 1) eq curentPage ? 'active':''}"><a class="page-link" href="/job?page=${loop.index + 1}${queryString}">${loop.index + 1}</a></li>
                          </c:forEach>
                          <c:if test="${curentPage != totalPages}">
                            <li class="page-item">
                              <a class="page-link" href="/job?page=${curentPage + 1}${queryString}">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </c:if>
                          
                        </ul>
                      </nav>
                    </c:if>
                   
                  </div>
                  
                </div>
                </div>
              </div>
            </div>
            
            
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
            <div class="container-fluid footer-wrap  clear-left clear-right">
              <div class="container footer">
                <div class="row">
                  <div class="col-md-4 col-sm-8 col-12">
                    <h2 class="footer-heading">
                      <span>About</span>
                    </h2>
                    <p class="footer-content">
                      Discover the best way to find houses, condominiums, apartments and HDBs for sale and rent in Singapore with JobsOnline, Singapore's Fastest Growing Jobs Portal.
                    </p>
                    <ul class="footer-contact">
                      <li>
                        <a href="#">
                          <i class="fa fa-phone fticn"></i> +123 456 7890
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-envelope fticn"></i> 
                          hello@123.com
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-map-marker fticn"></i>
                          33 Xô Viết Nghệ Tĩnh, Đà Nẵng
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="col-md-2 col-sm-4 col-12">
                    <h2 class="footer-heading">
                      <span>Ngôn ngữ nổi bật</span>
                    </h2>
                    <ul class="footer-list">
                      <li><a href="#">Javascript</a></li>
                      <li><a href="#">Java</a></li>
                      <li><a href="#">Frontend</a></li>
                      <li><a href="#">SQL Server</a></li>
                      <li><a href="#">.NET</a></li>
                    </ul>
                  </div>
                  <div class="col-md-2 col-sm-6 col-12">
                    <h2 class="footer-heading">
                      <span>Tất cả ngành nghề</span>
                    </h2>
                    <ul class="footer-list">
                      <li><a href="#">Lập trình viên</a></li>
                      <li><a href="#">Kiểm thử phần mềm</a></li>
                      <li><a href="#">Kỹ sư cầu nối</a></li>
                      <li><a href="#">Quản lý dự án</a></li>
                    </ul>
                  </div>
                  <div class="col-md-2 col-sm-6 col-12">
                    <h2 class="footer-heading">
                      <span>Tất cả hình thức</span>
                    </h2>
                    <ul class="footer-list">
                      <li><a href="#">Nhân viên chính thức</a></li>
                      <li><a href="#">Nhân viên bán thời gian</a></li>
                      <li><a href="#">Freelancer</a></li>
                    </ul>
                  </div>
                  <div class="col-md-2 col-sm-12 col-12">
                    <h2 class="footer-heading">
                      <span>Tất cả tỉnh thành</span>
                    </h2>
                    <ul class="footer-list">
                      <li><a href="#">Hồ Chính Minh</a></li>
                      <li><a href="#">Hà Nội</a></li>
                      <li><a href="#">Đà Nẵng</a></li>
                      <li><a href="#">Buôn Ma Thuột</a></li>
                    </ul>
                  </div>
            
            
                </div>
              </div>
            </div>
            
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
            
                <script type="text/javascript" src="client/js/main.js"></script>
                <!-- Owl Stylesheets Javascript -->
                <script src="client/js/owlcarousel/owl.carousel.js"></script>
                <!-- Read More Plugin -->
            
                
            
            </body>
            </html>