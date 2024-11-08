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
              <!-- bootraps modal -->
               <!-- Bootstrap CSS -->
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
            
            <!-- Bootstrap JS and dependencies -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
            
            
            
            
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
                    <button class="navbar-toggler tnavbar-toggler" type="button" data-toggle="collapse"
                      data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                      aria-label="Toggle navigation">
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
    
            
            
            <!-- job detail header -->
            <!-- job detail header -->
            <div class="container-fluid job-detail-wrap">
                <div class="container job-detail">
                  <div class="job-detail-header">
                    <div class="row">
                      <div class="col-md-2 col-sm-12 col-12">
                        <div class="job-detail-header-logo">
                          <a href="#">
                            <img src="/images/company/${job.logo}" class="job-logo-ima" alt="job-logo">
                          </a>
                        </div>
                      </div>
                      <div class="col-md-7 col-sm-12 col-12">
                        <div class="job-detail-header-desc">
                          <div class="job-detail-header-title">
                            <a href="#">${job.title}</a>
                          </div>
                          <div class="job-detail-header-company">
                            <a href="#">${job.inductry}</a>
                          </div>
                          <div class="job-detail-header-de">
                            <ul>
                              <li><i class="fa fa-map-marker icn-jd"></i><span>${job.area}</span></li>
                              <li><i class="fa fa-usd icn-jd"></i><span>${job.salary}</span></li>
                              <li><i class="fa fa-calendar icn-jd"></i><span>${job.dateline}</span></li>
                            </ul>
                          </div>
                          <!-- <div class="job-detail-header-tag">
                            <ul>
                              <li><a href="#">Java</a></li>
                              <li><a href="#">.NET</a></li>
                              <li><a href="#">SQL</a></li>
                              <li><a href="#">C#</a></li>
                            </ul>
                          </div> -->
                        </div>
                      </div>
                      <div class="col-md-3 col-sm-12 col-12">
                        <div class="jd-header-wrap-right">
                          <div class="jd-center" style="display: flex; gap: 5px; align-items: center;">
                            <form action="/addJobSave/${job.id}" method="post">

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <button  class="btn  btn-warning btn-sm text-white">
                              <i class="fa fa-heart"></i> Lưu công việc
                            </button>
                            </form>
                            <!-- <a href="#" class="btn  btn-warning btn-sm text-white">
                              <i class="fa fa-heart"></i> Lưu công việc
                            </a> -->
                            <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#applyModal">Nộp đơn</a>
                          </div>
                          
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
              
              <!-- Modal -->
              <div class="modal fade" id="applyModal" tabindex="-1" aria-labelledby="applyModalLabel" aria-hidden="true">
                <div class="modal-dialog mt-5"> <!-- Thêm lớp mt-5 ở đây -->
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="applyModalLabel">Nộp đơn ứng tuyển</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                      <form:form method="post" enctype="multipart/form-data" action="/nopcv/${job.id}" modelAttribute="applyNew" id="applyForm">
                        <div class="mb-3">
                          <label for="fullName" class="form-label">Họ và tên</label>
                          <form:input type="text" class="form-control" id="fullName"  path="receiverName"/>
                        </div>
                        <div class="mb-3">
                            <label for="sdt" class="form-label">sdt</label>
                            <form:input type="text" class="form-control" id="sdt" path="receiverPhone"/>
                          </div>
                        <div class="mb-3">
                          <label for="email" class="form-label">Email</label>
                          <form:input type="email" class="form-control" id="email" path="receiverEmail"/>
                        </div>
                        <div class="mb-3">
                          <label for="resume" class="form-label">CV</label>
                          <input type="file" name="fileCV" class="form-control" id="resume" accept=".pdf,.doc,.docx">
                        </div>
                        <div class="mb-3">
                          <label for="coverLetter" class="form-label">Thư xin việc</label>
                          <form:textarea class="form-control" id="coverLetter" rows="3" path="mess"></form:textarea>
                        </div>
                        <div class="mb-3">
                          <button class="btn btn-primary">Gửi đơn</button>
                        </div>
                      </form:form>
                    </div>
                    
                  </div>
                </div>
              </div>
              
            <!-- (end) job detail header -->
            
            <div class="clearfix"></div>
            
            <!-- Phần thân -->
            <div class="wrapper">
              <div class="container">
                <div class="row">
                  <!-- Main wrapper -->
                  <div class="col-md-8 col-sm-12 col-12 clear-left">
                    <div class="main-wrapper">
                      
                      <!-- content -->
                      <div class="welfare-wrap">
                        <div class="row">
                          <!-- <div class="welfare-list">
                            <ul>
                              <li>
                                <p><i class="fa fa-usd icn-welfare"></i>Have opponunity for growth.</p>
                              </li>
                              <li>
                                <p><i class="fa fa-user icn-welfare"></i>Working under energisitic, innovative, friendly environment.</p>
                              </li>
                              <li>
                                <p><i class="fa fa-check-circle icn-welfare"></i>Competitive salary and attractive benefits packages.</p>
                              </li>
                            </ul>
                          </div> -->
                        </div>
                      </div>
                      
                      <div  class="jd-content">
                        ${job.contentjob}
                      </div>
            
                    </div>
                  </div>
  
                  <!-- Sidebar -->
                  <div class="col-md-4 col-sm-12 col-12 clear-right">
                    <div class="side-bar mb-3">
                      <h2 class="widget-title">
                        <span>Thông tin</span>
                      </h2>
                      
                      <div class="job-info-wrap">
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Nơi làm việc:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.area}</span>
                            </div>
                          </div>
                        </div>
            
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Cấp bậc:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.jobPosition}</span>
                            </div>
                          </div>
                        </div>
            
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Lương:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.salary}</span>
                            </div>
                          </div>
                        </div>
            
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Hạn nộp:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.dateline}</span>
                            </div>
                          </div>
                        </div>
            
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Ngành nghề:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.inductry}</span>
                            </div>
                          </div>
                        </div>
            
                        
            
                        <div class="job-info-list">
                          <div class="row">
                            <div class="col-sm-4">
                              <span class="ji-title">Kinh nghiệm:</span>
                            </div>
                            <div class="col-sm-8">
                              <span class="ji-main">${job.experience}</span>
                            </div>
                          </div>
                        </div>
                      </div>
            
            
                    </div>
            
                    <div class="side-bar mb-3">
                      <h2 class="widget-title">
                        <span>Giới thiệu công ty</span>
                      </h2>
                      <div class="company-intro">
                        <a href="#">
                          <img src="/images/company/${job.logo}" class="job-logo-ima" alt="job-logo">
                        </a>
                      </div>
                        <h2 class="company-intro-name">${company.fullName}</h2>
                        <ul class="job-add">
                          <li>
                            <i class="fa fa-map-marker ja-icn"></i>
                            <span>${company.addRess} </span>
                          </li>
                          <li>
                            <i class="fa fa-bar-chart ja-icn"></i>
                            <span>Quy mô công ty: 50-100 người</span>
                          </li>
                        </ul>
            
                        <div class="wrap-comp-info mb-2">
                          <a href="#" class="btn btn-primary btn-company">Xem thêm</a>
                        </div>
                    </div>
            
                     <div class="side-bar mb-3">
                      <h2 class="widget-title">
                        <span>Việc làm tương tự</span>
                      </h2>
                      
                      <div class="job-tt-contain">
                        <c:forEach var="job" items="${listJob}">
                            <div class="job-tt-item">
                                <a href="#" class="thumb">
                                    <div style="background-image: url(/images/company/${job.logo});"></div>
                                </a>
                            <div class="info">
                                <a href="/job/chitiet/${job.id}" class="jobname">
                                    ${job.title}
                                </a>
                                <a href="/job/chitiet/${job.id}" class="company">
                                    ${job.user.fullName}
                                </a>
                            </div>
                            </div>
                        </c:forEach>
                      </div>
                    </div>
            
                    <div class="side-bar mb-3">
            
                  <div class="container">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="home-ads">
                          <a href="#">
                            <img src="/client/img/ads1.jpg">
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
            
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- (end) Phần thân -->
            
            
            
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
            <script type="text/javascript" src="js/readmore.js"></script>
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
                <!-- js modal -->
                 
            
                
            
            </body>
            </html>