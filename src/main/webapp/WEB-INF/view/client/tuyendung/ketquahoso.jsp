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
                    <link
                        href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
                        rel="stylesheet">
                    <link
                        href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&display=swap"
                        rel="stylesheet">

                    <!-- bootstrap css -->
                    <link rel="stylesheet" type="text/css" href="/client/css/bootstrap.min.css">



                    <!-- cdn icon -->
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

                    <!-- select 2 css -->
                    <link rel="stylesheet" href="/client/css/select2.min.css">
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                    <!-- main css -->
                    <link rel="stylesheet" type="text/css" href="/client/css/style.css">

                    <!-- DataTables CSS -->
                    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
                    <style>
                        .pagination {
                            display: flex;
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
                                <button class="navbar-toggler tnavbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
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
                                <div class="col-md-12 col-sm-12 col-12 recuitment-inner mb-5">

                                    <h4 class="mb-3">Danh sách ứng viên đã phản hồi</h4>
                                    <hr>
                                    <table id="example" class="table table-striped table-bordered table-hover mt-4">
                                        <thead>
                                            <tr>
                                                <th>tt</th>
                                                <th>Tên ứng viên</th>
                                                <th>Vị trí ứng tuyển</th>
                                                <th>Thời gian nộp</th>
                                                <th>Trạng thái</th>
                                                <th>Tác vụ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="apply" items="${applies}" varStatus="status">
                                                <tr>
                                                    <th>${status.index + 1}</th>
                                                    <td>${apply.user.fullName}</td>
                                                    <td style="width: 250px;">${apply.job.title}</td>
                                                    <td>${apply.timeapply}</td>
                                                    <td>${apply.status}</td>
                                                    <td>
                                                        <!-- <a class="btn btn-success"
                                            href="#"><i class="fa-regular fa-eye"></i> Xem</a> -->
                                                        
                                                        <a class="btn btn-success mx-2 " target="_blank"
                                                            href="/filecv/${apply.user.filecv}"><i
                                                                class="fa-solid fa-pen-nib"></i> Xem hồ sơ</a>
                                                       
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>

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
                                                    <span><i class="fa fa-question-circle pr-2 icsp"></i>Hỗ trợ nhà
                                                        tuyển dụng:</span>
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
                                                    <input type="text" placeholder="Nhập email của bạn"
                                                        class="newsletter-email form-control">
                                                    <a href="#" class="input-group-addon"><i
                                                            class="fa fa-lg fa-envelope-o colorb"></i></a>
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

                        <!-- DataTables JS -->
                        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
                        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>

                        <!-- DataTable Initialization -->
                        <script>
                            $(document).ready(function () {
                                $('#example').DataTable();
                            });
                        </script>

                </body>

                </html>