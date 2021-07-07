
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Map 3D</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

</head>
<style>
    #viewDiv {
        padding: 0;
        margin: 0;
    }
</style>

<body>

    <header>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark" id="navbar">
            <div class="container">
                <ul class="navbar-nav">
                    <li class="nav-item mr-1">
                        <a class="nav-link" href="#">
                            <h2 style="color: white;">LOGO</h2>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item mr-1">
                        <a class="nav-link a-link" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                    </li>
                    <li class="nav-item active mr-1">
                        <a class="nav-link a-link" href="">Bản đồ 3D</a>
                    </li>
                    <li class="nav-item mr-1">
                        <a class="nav-link a-link" href="#">Liên hệ</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item mr-1">
                        <a class="nav-link a-link" href="#">Đăng ký</a>
                    </li>
                    <li class="nav-item mr-1">
                        <a class="nav-link a-link" href="#">Đăng nhập</a>
                    </li>
                </ul>
            </div>

        </nav>
        <div class=" container" style="margin-top: 150px;">
            <div class="d-flex justify-content-around" style=" width: 70%; margin:0 auto;">
                <div>
                    <p class="text-center"><a href="#feature1"><i class="far fa-eye" style="font-size: 60px; color: rgb(0, 20, 110);"></i></a></p>
                    <a href="#feature1"><p>Xem bản đồ tòa nhà 3D </p></a>
                </div>
                <div>
                    <p class="text-center"><a href="#feature2"><i class="fab fa-cuttlefish" style="font-size: 60px;color: rgb(0, 20, 110);"></i></a></p>
                    <a href="#feature2"><p>Xem lát cắt tòa nhà </p></a>
                </div>
                <div>
                    <p class="text-center"><a href="#feature3"><i class="fas fa-search" style="font-size: 60px;color: rgb(0, 20, 110);"></i></a></p>
                    <a href="#feature3"><p>Tìm kiếm, lọc tòa nhà</p></a>
                </div>
            </div>

        </div>
    </header>
    <div class="container pt-5" id="content">
        <div>
            <div id="feature1" class="d-flex justify-content-between" style=" position: relative;">
                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/bitexco.png" alt="" height="500px">
                </div>
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">| Xem toà nhà trên bản đồ 3D</h1>
                    <p style="font-size: 25px;">Xem hình dáng tòa nhà trên bản đồ 3D để có cái nhìn tổng quan, giúp đưa ra các quyết định quy hoạch cảnh quan đô  thị. Hơn thế nữa, đây là cơ sở để phát triển thêm các tính năng cho bản đồ.</p>
                    <button><a href="${pageContext.request.contextPath}/map">Xem bản đồ 3D</a></button>
                </div>
            </div>

            <div id="feature2" class="d-flex justify-content-between" style="margin-top: 50px; position: relative;">
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">| Xem lát cắt tòa nhà </h1>
                    <p style="font-size: 25px;">Xem các thành phần bị che khuất phía trong các tòa nhà, mang lại cái nhìn về cách sắp sếp bố trí nội thất, giúp những người chưa đến lần nào hình dung được kết cấu, hình dáng tòa nhà, thuận lợi cho việc ghé thăm trong tương lai. </p>
                    <img src="${pageContext.request.contextPath}/resources/img/slice1.PNG" alt="">

                </div>
                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/slice.png" alt="" height="500px">
                </div>
            </div>

            <div id="feature3" class="d-flex justify-content-between" style="margin-top: 100px; position: relative;">

                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/slice.png" alt="" height="500px">
                </div>
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">| Tìm kiếm, lọc tòa nhà</h1>
                    <p style="font-size: 25px;">Tìm kiếm tòa nhà muốn xem và lọc các tòa nhà theo loại để biết được có những loại tòa nhà nào xung quanh vị trí mình muốn tìm kiếm.</p>
                    
                </div>

            </div>
        </div>


    </div>
    <div class="container-fluid footer mt-5 pt-5 pb-5" style="height: 450px; background-color: beige; background-image: url(https://tamvuong.com/Media/images/tamvuong/tin-tuc/sai-gon-ve-dem.jpg); background-attachment: fixed; background-repeat: no-repeat; background-size: cover;">
        <div class="container mt-5 pt-5 pb-5" style="background-color: rgba(5, 5, 37, 0.7); color: white;">
            <div class="d-flex justify-content-around" style="width:100%">
                <div style="width:15%; margin: 0 auto;">
                    <H1>LOGO</H1>
                    <h3>Sologan</h3>
                </div>
                <div class="d-flex" style="width:60%">
                    <div>
                        <ul>
                            <h5>Danh mục</h5>
                            <li><a href="">Bản đồ 3d</a></li>
                            <li><a href="">Bản đồ 2d</a></li>
                        </ul>
                    </div>
                    <div>
                        <ul>
                            <h5>Về chúng tôi</h5>
                            <li><a href="">Chính sách</a></li>
                            <li><a href="">Hợp tác</a></li>
                            <li><a href="">Hướng dẫn</a></li>
                            <li><a href="">Hỗ trợ</a></li>
                        </ul>
                    </div>
                    <div>
                        <ul>
                            <h5>Liên hệ</h5>
                            <li><a href="">Facebook</a></li>
                            <li><a href="">Zalo</a></li>
                            <li><a href="">Email</a></li>
                            <li><a href="">Hotline</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var prevScrollpos = window.pageYOffset;
        var directScrollpos = 1304.800048828125;
        window.onscroll = function() {
            var currentScrollPos = window.pageYOffset;
            if (prevScrollpos > currentScrollPos) {
                document.getElementById("navbar").style.top = "0";
            } else {
                document.getElementById("navbar").style.top = "-95px";

            }
            prevScrollpos = currentScrollPos;
        }
    </script>
    <footer>

    </footer>





    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>