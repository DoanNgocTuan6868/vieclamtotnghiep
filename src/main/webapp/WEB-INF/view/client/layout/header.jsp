<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Link Bootstrap Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto tnav-left tn-nav">
            <li class="nav-item">
              <a class="nav-link" href="/job">Việc Làm </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/dichvu">Dịch vụ đăng tuyển</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu tdropdown" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav mr-auto my-2 my-lg-0 tnav-right tn-nav">
            <li class="nav-item active">
              <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i> <span class="hidden-text">Tìm
                  kiếm</span></a>
            </li>
            <c:if test="${empty pageContext.request.userPrincipal}">
              <li class="nav-item">
                <a class="nav-link" href="/login">Đăng Nhập</a>
              </li>

            </c:if>
            <!-- <li class="nav-item">
                    <a class="nav-link" href="#">Đăng Ký</a>
                  </li>-->
                  <!-- ứng viên  -->
            <c:if test="${sessionScope.roleUser == 'USER2'}">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  <c:out value="${sessionScope.fullname}" />
                </a>
                <div class="dropdown-menu tdropdown" style="min-width: 240px;" aria-labelledby="navbarDropdown">
                  <img class="d-block mx-auto p-2"
                    style="width: 100px; height: 100px; border-radius: 50%; overflow: hidden;"
                    src="/images/avatar/${sessionScope.avatar}" />
                 
                    <div class="text-center my-3">
                    <h5 class="text-success mb-2" style="color: #21a212;">
                      Ứng viên : <c:out value="${sessionScope.fullname}" />
                    </h5>
                    <p class="fs-6 mb-0">
                      <c:out value="${sessionScope.email}"/>
                    </p>
                  </div>
                  <hr>
                  <a class="dropdown-item" href="/ungvien/profile"> <i class="bi bi-person-circle"></i> Thông tin tài khoản</a>
                  <a class="dropdown-item" href="#"><i class="bi bi-file-earmark-text"></i> Danh sách ứng tuyển</a>
                  <a class="dropdown-item" href="#"><i class="bi bi-heart"></i> Việc làm đã lưu</a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-chat"></i> Phản hồi công việc</a>

                  <hr>
                  <form class="" action="/logout" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button class="dropdown-item d-flex align-items-center">
                      <i class="bi bi-box-arrow-right"></i>
                       <span>Đăng xuất</span>
                    </button>
                  </form>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-employers" href="/login" tabindex="-1" aria-disabled="true">Nhà Tuyển Dụng</a>
              </li>
            </c:if>
                  <!-- Nhà tuyển dụng  -->
            <c:if test="${sessionScope.roleUser == 'USER1'}">

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  <c:out value="${sessionScope.fullname}" />
                </a>
                <div class="dropdown-menu tdropdown" style="min-width: 240px;" aria-labelledby="navbarDropdown">
                  <img class="d-block mx-auto p-2"
                    style="width: 100px; height: 100px; border-radius: 50%; overflow: hidden;"
                    src="/images/avatar/${sessionScope.avatar}" />
                  <div class="text-center my-3">
                    <h5 class="text-success mb-2">
                      NTD: <c:out value="${sessionScope.fullname}" />
                    </h5>
                    <p class="fs-6 mb-0">
                      <c:out value="${sessionScope.email}" />
                    </p>
                    
                  </div>
                  <hr>
                  <a class="dropdown-item" href="/tuyendung/profile"> <i class="bi bi-person-circle"></i> Thông tin công ty</a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-pencil-square"></i> Đăng tin việc làm</a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-clock"></i> Danh sách bài đăng chờ</a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-file-earmark-text"></i>Danh sách ứng viên </a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-file-earmark-text"></i>Hồ sơ đã ứng tuyển </a>
                  <a class="dropdown-item" href="#"> <i class="bi bi-box"></i> Quản lý dịch vụ </a>
                  <hr>
                  <form class="" action="/logout" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button class="dropdown-item d-flex align-items-center">
                      <i class="bi bi-box-arrow-right"></i>
                      <span>Đăng xuất</span>
                    </button>
                  </form>
                </div>
              </li>

              <li class="nav-item">
                <a class="nav-link btn-employers" href="/login" tabindex="-1" aria-disabled="true">ứng viên</a>
              </li>
            </c:if>
          </ul>
        </div>