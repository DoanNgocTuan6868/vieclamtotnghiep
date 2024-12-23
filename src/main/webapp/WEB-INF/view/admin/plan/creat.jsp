<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Dashboard</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/adminpl/assets/img/logo.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/adminpl/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/adminpl/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/adminpl/assets/css/style.css" rel="stylesheet">

    <!-- CKEditor 5 CDN -->
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>

    <script>
        $(document).ready(() => {
            // Avatar preview logic
            const avatarFile = $("#avatarFile");
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#avatarPreview").attr("src", imgURL);
                $("#avatarPreview").css({"display": "block"});
            });
        });
    </script>
</head>

<body>
    <!-- Header -->
    <jsp:include page="../layout/header.jsp" />
    <!-- Sidebar -->
    <jsp:include page="../layout/sidebar.jsp" />

    <main id="main" class="main" style="min-height: 580px;">
        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                    <li class="breadcrumb-item"><a href="/admin/plan">Quản lý dịch vụ</a></li>
                    <li class="breadcrumb-item active">Thêm mới gói dịch vụ</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Thông tin gói dịch vụ</h5>

                            <!-- Form bắt đầu -->
                            <form:form class="row g-3" method="post" enctype="multipart/form-data"
                                       action="/admin/plan/creat" modelAttribute="plannew">
                                <c:set var="errorDetailDesc">
                                    <form:errors path="detail" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorname">
                                    <form:errors path="name" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorDesc">
                                    <form:errors path="description" cssClass="invalid-feedback" />
                                </c:set>

                                <div class="col-md-12">
                                    <label for="name" class="form-label">Tên gói: </label>
                                    <form:input type="text" class="form-control ${not empty errorname ? 'is-invalid' : ''}" id="name" path="name" />
                                    ${errorname}
                                </div>
                                <div class="col-12">
                                    <label for="description" class="form-label">Mô tả ngắn: </label>
                                    <form:input type="text" class="form-control ${not empty errorDesc ? 'is-invalid' : ''}" id="description" path="description" />
                                    ${errorDesc}
                                </div>
                                <div class="col-6">
                                    <label for="price" class="form-label">Giá gói: </label>
                                    <form:input type="number" min="0" class="form-control" id="price" path="price" />
                                </div>
                                <div class="col-6">
                                    <label for="level" class="form-label">Câp độ: </label>
                                    <form:input type="number" min="0" class="form-control" id="level" path="level" />
                                </div>
                                <div class="col-12">
                                    <label for="detail" class="form-label">Nội dung gói:</label>
                                    <form:textarea class="form-control ${not empty errorDetailDesc ? 'is-invalid' : ''}" id="editor" path="detail"></form:textarea>
                                    ${errorDetailDesc}
                                </div>  
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Lưu lại</button>
                                    <button type="reset" class="btn btn-secondary">Làm mới</button>
                                </div>
                            </form:form>

                            <!-- CKEditor 5 Script -->
                            <script>
                                ClassicEditor
                                    .create(document.querySelector('#editor'))
                                    .catch(error => {
                                        console.error(error);
                                    });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <jsp:include page="../layout/footer.jsp" />

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="/adminpl/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminpl/assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="/adminpl/assets/js/main.js"></script>
</body>

</html>
