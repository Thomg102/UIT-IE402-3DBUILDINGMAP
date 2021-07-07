
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
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    <link rel="stylesheet" href="https://js.arcgis.com/4.15/esri/themes/light/main.css">
    <script src="https://js.arcgis.com/4.15/"></script>
    <script src="map.js"></script>
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
                    <p class="text-center"><i class="far fa-eye" style="font-size: 60px; color: rgb(0, 20, 110);"></i></p>
                    <p>Xem bản đồ tòa nhà 3D </p>
                </div>
                <div>
                    <p class="text-center"><i class="fab fa-cuttlefish" style="font-size: 60px;color: rgb(0, 20, 110);"></i></p>
                    <p>Xem lát cắt tòa nhà </p>
                </div>
                <div>
                    <p class="text-center"><i class="fas fa-search" style="font-size: 60px;color: rgb(0, 20, 110);"></i></p>
                    <p>Tìm kiếm tòa nhà</p>
                </div>
            </div>

        </div>
    </header>
    <div class="container pt-5" id="content">
        <div>
            <div class="d-flex justify-content-between" style=" position: relative;">
                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/bitexco.png" alt="" height="500px">
                </div>
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">Xem tÃ²a nhÃ  trÃªn báº£n Äá» 3D</h1>
                    <p style="font-size: 25px;">Vá»i Google Earth cho Chrome, báº¡n cÃ³ thá» bay Äáº¿n báº¥t cá»© ÄÃ¢u chá» trong vÃ i giÃ¢y vÃ  khÃ¡m phÃ¡ hÃ ng trÄm thÃ nh phá» 3D ngay trong trÃ¬nh duyá»t. HÃ£y Äá» xÃºc xáº¯c Äá» khÃ¡m phÃ¡ má»t Äá»a Äiá»m má»i, thá»±c hiá»n chuyáº¿n tham quan cÃ³ hÆ°á»ng dáº«n cÃ¹ng vá»i
                        Voyager cÅ©ng nhÆ° táº¡o báº£n Äá» vÃ  cÃ¢u chuyá»n cá»§a riÃªng báº¡n. Sáº¯p ra máº¯t trÃªn cÃ¡c trÃ¬nh duyá»t khÃ¡c.</p>
                    <button>Xem báº£n Äá»</button>
                </div>
            </div>

            <div class="d-flex justify-content-between" style="margin-top: 50px; position: relative;">
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">Xem lÃ¡t cáº¯t tÃ²a nhÃ </h1>
                    <p style="font-size: 25px;">Vá»i Google Earth cho Chrome, báº¡n cÃ³ thá» bay Äáº¿n báº¥t cá»© ÄÃ¢u chá» trong vÃ i giÃ¢y vÃ  khÃ¡m phÃ¡ hÃ ng trÄm thÃ nh phá» 3D ngay trong trÃ¬nh duyá»t. HÃ£y Äá» xÃºc xáº¯c Äá» khÃ¡m phÃ¡ má»t Äá»a Äiá»m má»i, thá»±c hiá»n chuyáº¿n tham quan cÃ³ hÆ°á»ng dáº«n cÃ¹ng vá»i
                        Voyager cÅ©ng nhÆ° táº¡o báº£n Äá» vÃ  cÃ¢u chuyá»n cá»§a riÃªng báº¡n. Sáº¯p ra máº¯t trÃªn cÃ¡c trÃ¬nh duyá»t khÃ¡c.</p>
                    <img src="${pageContext.request.contextPath}/resources/img/slice1.PNG" alt="">

                </div>
                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/slice.png" alt="" height="500px">
                </div>
            </div>

            <div class="d-flex justify-content-between" style="margin-top: 100px; position: relative;">

                <div class="">
                    <img src="${pageContext.request.contextPath}/resources/img/slice.png" alt="" height="500px">
                </div>
                <div class="m-5">
                    <h1 style=" color: rgb(0, 20, 110);">TÃ¬m kiáº¿m tÃ²a nhÃ </h1>
                    <p style="font-size: 25px;">Vá»i Google Earth cho Chrome, báº¡n cÃ³ thá» bay Äáº¿n báº¥t cá»© ÄÃ¢u chá» trong vÃ i giÃ¢y vÃ  khÃ¡m phÃ¡ hÃ ng trÄm thÃ nh phá» 3D ngay trong trÃ¬nh duyá»t. HÃ£y Äá» xÃºc xáº¯c Äá» khÃ¡m phÃ¡ má»t Äá»a Äiá»m má»i, thá»±c hiá»n chuyáº¿n tham quan cÃ³ hÆ°á»ng dáº«n cÃ¹ng vá»i
                        Voyager cÅ©ng nhÆ° táº¡o báº£n Äá» vÃ  cÃ¢u chuyá»n cá»§a riÃªng báº¡n. Sáº¯p ra máº¯t trÃªn cÃ¡c trÃ¬nh duyá»t khÃ¡c.</p>
                    <button>Xem báº£n Äá»</button>
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