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
 
            <!-- published recuitment -->
            <div class="container-fluid published-recuitment-wrapper">
              <div class="container published-recuitment-content">
                <div class="row">
                  <div class="col-md-8 col-sm-12 col-12 recuitment-inner">
                    <form:form class="recuitment-form" method="post" enctype="multipart/form-data" action="/tuyendung/suabaidang" modelAttribute="jobup">
            
                      <div class="accordion" id="accordionExample">
                        <div class="card recuitment-card">
                          <div class="card-header recuitment-card-header" id="headingOne">
                            <h2 class="mb-0">
                              <a class="btn btn-link btn-block text-left recuitment-header" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Đăng tin tuyển dụng
                                <span id="clickc1_advance2" class="clicksd">
                                  <i class="fa fa fa-angle-up"></i>
                                </span>
                              </a>
                            </h2>
                          </div>
            
                          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body recuitment-body">
                            <!-- validate -->
                            <c:set var="errorTitle">
                                <form:errors path="title" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorJobPosition">
                                <form:errors path="jobPosition" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorAddress">
                                <form:errors path="address" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorYearOld">
                                <form:errors path="yearOld" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorQuantity">
                                <form:errors path="quantity" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorContentjob">
                                <form:errors path="contentjob" cssClass="invalid-feedback" />
                            </c:set>
                            <c:set var="errorDateline">
                                <form:errors path="dateline" cssClass="invalid-feedback" />
                            </c:set>
                            <div class="form-group row d-none">
                                <label class="col-sm-3 col-form-label text-right label">ID<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control" placeholder="Nhập tiêu đề" path="id"/>
                                </div>
                            </div>
                            <!-- end validate -->
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Tiêu đề<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control ${not empty errorTitle ? 'is-invalid' : ''}" placeholder="Nhập tiêu đề" path="title"/>
                                  ${errorTitle}
                                </div>
                               
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Vị trí công việc<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control ${not empty jobPosition ? 'is-invalid' : ''}" placeholder="Vị tri  việc làm" path="jobPosition"/>
                                  ${jobPosition}
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Logo</label>
                                <div class="col-sm-9 " >
                                  <div id="drop-area">
                                      <input type="file" id="fileElem" name="imglogo" multiple accept="image/*" onchange="handleFiles(this.files)">
                                      <label style="cursor: pointer;" for="fileElem">Tải ảnh lên hoặc kéo thả vào đây</label>
                                      <progress id="progress-bar" max=100 value=0 class="d-none"></progress>
                                       <div id="gallery"></div>
                                   
                                  </div>
                                  
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Số lượng cần tuyển</label>
                                <div class="col-sm-9">
                                  <form:input type="number" class="form-control  ${not empty errorQuantity ? 'is-invalid' : ''}" placeholder="1" min="1" path="quantity"/>
                                  ${errorQuantity}
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Độ tuổi<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control ${not empty errorYearOld ? 'is-invalid' : ''}" placeholder="" path="yearOld"/>
                                  ${errorYearOld}
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Mô tả công việc<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:textarea type="text" class="form-control ${not empty errorContentjob ? 'is-invalid' : ''}" placeholder="Nhập mô tả công việc" rows="5" path="contentjob"></form:textarea>
                                  ${errorContentjob}
                                </div>
                              </div>
                             
                           
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Trình độ<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobLevel" path="degree">
                                    <form:option value="Đại học">Đại học</form:option>
                                    <form:option value="Cao đẳng">Cao đẳng</form:option>
                                    <form:option value="Trung cấp">Trung cấp</form:option>
                                    <form:option value="Cao học">Cao học</form:option>
                                    <form:option value="Trung học">Trung học</form:option>
                                    <form:option value="Chứng chỉ">Chứng chỉ</form:option>
                                    <form:option value="Lao động phổ thông">Lao động phổ thông</form:option>
                                    <form:option value="Không yêu cầu">Không yêu cầu</form:option>
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Kinh nghiệm<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobExperience" path="experience">
                                    <form:option value="Dưới 1 năm">Dưới 1 năm</form:option>
                                    <form:option value="1 năm">1 năm</form:option>
                                    <form:option value="2 năm">2 năm</form:option>
                                    <form:option value="3 năm">3 năm</form:option>
                                    <form:option value="4 năm">4 năm</form:option>
                                    <form:option value="5 năm">5 năm</form:option>
                                    <form:option value="Trên 5 năm">Trên 5 năm</form:option>
                                    <form:option value="Không yêu cầu kinh nghiệm">Không yêu cầu kinh nghiệm</form:option>  
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Mức lương<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobSalary" path="salary">
                                    <form:option value="5-10 triệu">5-10 triệu</form:option>
                                    <form:option value="12-15 triệu">12-15 triệu</form:option>
                                    <form:option value="15-20 triệu">15-20 triệu</form:option>
                                    <form:option value="20-25 triệu">20-25 triệu</form:option>
                                    <form:option value="25-30 triệu">25-30 triệu</form:option>
                                    <form:option value="30-40 triệu">30-40 triệu</form:option>
                                    <form:option value="40-50 triệu">40-50 triệu</form:option>
                                    <form:option value="Trên 50 triệu">Trên 50 triệu</form:option>
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Hình thức làm việc<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobWorkTime" path="workingForm">
                                    <form:option value="Nhân viên chính thức">Nhân viên chính thức</form:option>
                                    <form:option value="Nhân viên thời vụ">Nhân viên thời vụ</form:option>
                                    <form:option value="Bán thời gian">Bán thời gian</form:option>
                                    <form:option value="Làm thêm ngoài giờ">Làm thêm ngoài giờ</form:option>
                                    <form:option value="Thực tập và dự án">Thực tập và dự án</form:option>
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Thời gian thử việc<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobProbation" path="probation">
                                    <form:option value="Nhận việc ngay">Nhận việc ngay</form:option>
                                    <form:option value="1 tháng">1 tháng</form:option>
                                    <form:option value="2 tháng">2 tháng</form:option>
                                    <form:option value="3 tháng">3 tháng</form:option>
                                    <form:option value="Trao đổi trực tiếp khi phỏng vấn">Trao đổi trực tiếp khi phỏng vấn</form:option>
                                  </form:select>
                                </div>
                              </div>
                              
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Ngành nghề</label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobType" path="inductry">
                                    <form:option value="Kinh doanh">Kinh doanh</form:option>
                                    <form:option value="Bán hàng">Bán hàng</form:option>
                                    <form:option value="Chăm sóc khách hàng">Chăm sóc khách hàng</form:option>
                                    <form:option value="Tài chính/Kế toán/Kiểm toán">Tài chính/Kế toán/Kiểm toán</form:option>
                                    <form:option value="Hành chính/Thư ký/Trợ lý">Hành chính/Thư ký/Trợ lý</form:option>
                                    <form:option value="Lao động phổ thông">Lao động phổ thông</form:option>
                                    <form:option value="Cơ khí/Kĩ thuật ứng dụng">Cơ khí/Kĩ thuật ứng dụng</form:option>
                                    <form:option value="Sinh viên/Mới tốt nghiệp/Thực tập">Sinh viên/Mới tốt nghiệp/Thực tập</form:option>
                                    <form:option value="Điện/Điện tử/Điện lạnh">Điện/Điện tử/Điện lạnh</form:option>
                                    <form:option value="Báo chí/Biên tập viên">Báo chí/Biên tập viên</form:option>
                                    <form:option value="Bảo vệ/Vệ sĩ/An ninh">Bảo vệ/Vệ sĩ/An ninh</form:option>
                                    <form:option value="Bất động sản">Bất động sản</form:option>
                                    <form:option value="Biên dịch/Phiên dịch">Biên dịch/Phiên dịch</form:option>
                                    <form:option value="Bưu chính viễn thông">Bưu chính viễn thông</form:option>
                                    <form:option value="Công nghệ thông tin">Công nghệ thông tin</form:option>
                                    <form:option value="Dầu khí/Địa chất">Dầu khí/Địa chất</form:option>
                                    <form:option value="Dệt may">Dệt may</form:option>
                                    
                                    <!-- <option value="24">Dược/Hóa chất/Sinh hóa</option>
                                    <option value="25">Giải trí/Vui chơi</option>
                                    <option value="26">Giáo dục/Đào tạo/Thư viện</option>
                                    <option value="27">Giao thông/Vận tải/Thủy lợi/Cầu đường</option>
                                    <option value="28">Giày da/Thuộc da</option>
                                    <option value="55">Khác</option>
                                    <option value="30">Kho vận/Vật tư/Thu mua</option>
                                    <option value="58">Khu chế xuất/Khu công nghiệp</option>
                                    <option value="31">Kiến trúc/Nội thất</option>
                                    <option value="59">Làm đẹp/Thể lực/Spa</option>
                                    <option value="34">Luật/Pháp lý</option>
                                    <option value="36">Môi trường/Xử lý chất thải</option>
                                    <option value="37">Mỹ phẩm/Thời trang/Trang sức</option>
                                    <option value="38">Ngân hàng/Chứng khoán/Đầu tư</option>
                                    <option value="39">Nghệ thuật/Điện ảnh</option>
                                    <option value="56">Ngoại ngữ</option>
                                    <option value="40">Nhân sự</option>
                                    <option value="41">Nông/Lâm/Ngư nghiệp</option>
                                    <option value="64">PG/PB/Lễ tân</option>
                                    <option value="65">Phát triển thị trường</option>
                                    <option value="66">Phục vụ/Tạp vụ/Giúp việc</option>
                                    <option value="42">Quan hệ đối ngoại</option>
                                    <option value="44">Quản lý điều hành</option>
                                    <option value="45">Quảng cáo/Marketing/PR</option>
                                    <option value="46">Sản xuất/Vận hành sản xuất</option>
                                    <option value="60">Tài xế/Lái xe/Giao nhận</option>
                                    <option value="43">Thẩm định/Giám định/Quản lý chất lượng</option>
                                    <option value="48">Thể dục/Thể thao</option>
                                    <option value="49">Thiết kế/Mỹ thuật</option>
                                    <option value="50">Thời vụ/Bán thời gian</option>
                                    <option value="51">Thực phẩm/DV ăn uống</option>
                                    <option value="61">Trang thiết bị công nghiệp</option>
                                    <option value="62">Trang thiết bị gia dụng</option>
                                    <option value="63">Trang thiết bị văn phòng</option>
                                    <option value="11">Tư vấn bảo hiểm</option>
                                    <option value="52">Xây dựng</option>
                                    <option value="53">Xuất-Nhập khẩu/Ngoại thương</option>
                                    <option value="54">Y tế</option> -->
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Nơi làm việc</label>
                                <div class="col-sm-9">
                                  <form:select type="text" class="form-control" id="jobProvince" path="area">
                                    <form:option value="Hồ Chí Minh">Hồ Chí Minh</form:option>
                                    <form:option value="Hà Nội">Hà Nội</form:option>
                                    <form:option value="An Giang">An Giang</form:option>
                                    <form:option value="Bạc Liêu">Bạc Liêu</form:option>
                                    <form:option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</form:option>
                                    <form:option value="Bắc Cạn">Bắc Cạn</form:option>
                                    <form:option value="Bắc Giang">Bắc Giang</form:option>
                                    <form:option value="Bắc Ninh">Bắc Ninh</form:option>
                                    <form:option value="Bến Tre">Bến Tre</form:option>
                                    <form:option value="Bình Dương">Bình Dương</form:option>
                                    <form:option value="Bình Định">Bình Định</form:option>
                                    <form:option value="Bình Phước">Bình Phước</form:option>
                                    <form:option value="Bình Thuận">Bình Thuận</form:option>
                                    <form:option value="Cao Bằng">Cao Bằng</form:option>
                                    <form:option value="Cà Mau">Cà Mau</form:option>
                                    <form:option value="Cần Thơ">Cần Thơ</form:option>
                                    <form:option value="Đà Nẵng">Đà Nẵng</form:option>
                                    <form:option value="Đắk Lắk">Đắk Lắk</form:option>
                                    <form:option value="Đắk Nông">Đắk Nông</form:option>
                                    <form:option value="Điện Biên">Điện Biên</form:option>
                                    <form:option value="Đồng Nai">Đồng Nai</form:option>
                                    <form:option value="Đồng Tháp">Đồng Tháp</form:option>
                                    <form:option value="Gia Lai">Gia Lai</form:option>
                                    <form:option value="Hà Giang">Hà Giang</form:option>
                                    <form:option value="Hà Nam">Hà Nam</form:option>
                                    <form:option value="Hà Tĩnh">Hà Tĩnh</form:option>
                                    <form:option value="Hải Dương">Hải Dương</form:option>
                                    <form:option value="Hải Phòng">Hải Phòng</form:option>
                                    <form:option value="Nam Định">Nam Định</form:option>
                                    <form:option value="Nghệ An">Nghệ An</form:option>
                                    <form:option value="Ninh Bình">Ninh Bình</form:option>
                                    <form:option value="Ninh Thuận">Ninh Thuận</form:option>
                                    
                                  </form:select>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Hạn nộp hồ sơ<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:input type="text" class="form-control  ${not empty errorDateline ? 'is-invalid' : ''}" placeholder="Nhập nơi làm việc" path="dateline"/>
                                  ${errorDateline}
                                </div>
                              </div>
                              
                              <div class="form-group row">
                                <label class="col-sm-3 col-form-label text-right label">Địa chỉ cụ thể<span style="color: red" class="pl-2">*</span></label>
                                <div class="col-sm-9">
                                  <form:textarea type="text" class="form-control ${not empty errorAddress ? 'is-invalid' : ''}" placeholder="Nhập địa chỉ" rows="5" path="address"></form:textarea>
                                  ${errorAddress}
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="rec-submit">
                        <button type="submit" class="btn-submit-recuitment" name="">
                          <i class="fa fa-floppy-o pr-2"></i>Lưu Tin
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
                        <h4>NESTLE Inc.</h4>
                        <ul>
                          <li><a href="#">Việc làm đang đăng <strong>(0)</strong></a></li>
                          <li><a href="#">Follower <strong>(450)</strong></a></li>
                        </ul>
                      </div>
                    </div>
            
            
                    
              
              
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
            
               
            
            </body>
            </html>