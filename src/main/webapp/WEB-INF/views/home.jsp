<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@page contentType="text/html" pageEncoding="UTF-8" %> --%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Trang chủ</title>
                    <!-- Latest compiled and minified CSS -->
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

                    <link rel="stylesheet" href="https://js.arcgis.com/4.15/esri/themes/light/main.css">
                    <script src="https://js.arcgis.com/4.15/"></script>
                    <script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
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
                                    <li class="nav-item active mr-1">
                                        <a class="nav-link a-link" href="#">Trang chủ</a>
                                    </li>
                                    <li class="nav-item mr-1">
                                        <a class="nav-link a-link" href="${pageContext.request.contextPath}/feature">Bản đồ 3D</a>
                                    </li>
                                    <li class="nav-item mr-1">
                                        <a class="nav-link a-link" href="#">Liên hệ</a>
                                    </li>
                                </ul>
                                <ul class="navbar-nav">
                                    <li class="nav-item mr-1">
                                        <a class="nav-link a-link" href="#">Sign in</a>
                                    </li>
                                    <li class="nav-item mr-1">
                                        <a class="nav-link a-link" href="#">Sign up</a>
                                    </li>
                                </ul>
                            </div>

                        </nav>
                        <div class="banner">
                            <video autoplay muted loop id="myVideo">
                <source src="${pageContext.request.contextPath}/resources/img/Saigon - 15952.mp4" type="video/mp4">
            </video>

                            <div class="content container">
                                <h1 style="text-align: center; font-weight: bolder; font-size: 50px;">Hành trình Sài Gòn</h1>
                                <h3 style="text-align: center; font-weight: bold;">Những địa điểm hấp dẫn để ghé thăm lần đầu tiên</h3>
                                <p class="mt-5" style="text-align: center; font-size: 30px;"><a href="#content" style="color: white;"><i class="fas fa-angle-double-down"></i></a></p>
                                <button id="myBtn" onclick="myFunction()" style="position: absolute; bottom: 0; right: 0;"><i class="fas fa-pause"></i></button>
                            </div>

                            <script>
                                var video = document.getElementById("myVideo");
                                var btn = document.getElementById("myBtn");

                                function myFunction() {
                                    if (video.paused) {
                                        video.play();
                                        btn.innerHTML = '<i class="fas fa-pause"></i>';
                                    } else {
                                        video.pause();
                                        btn.innerHTML = '<i class="fas fa-play"></i>';
                                    }
                                }
                            </script>

                        </div>
                    </header>
                    <div class="container mt-5 pt-5" id="content">
                        <div class="d-flex">
                            <div>
                                <h3>Cửa ngõ vào Nhật Bản - Tokyo. Giới thiệu các địa điểm từ điểm tham quan phổ biến đến các nơi ít được biết đến. </h3>
                                <p style="font-size: 20px;">Tokyo là một thành phố lớn với dân số hơn 1,38 triệu người. Cảnh đẹp không tỳ vết nhìn từ tháp Sky Tree cũng như Tháp Tokyo, một biểu tượng của Tokyo. Có rất nhiều điều quý khách có thể quan sát từ nơi này, chẳng hạn như
                                    Chùa Senso-ji nơi khởi nguồn sự rung cảm đích thực của người Nhật, cảnh dòng người băng qua Ngã tư Shibuya và từ Odaiba nhìn ra Vịnh Tokyo là cảnh tượng quý khách không bao giờ chán.</p>
                            </div>
                            <div class="ml-5">
                                <img src="${pageContext.request.contextPath}/resources/img/anh2.png" alt="Viet Nam map" width="500">
                            </div>
                        </div>



                        <div class="destinations mt-5" data-spy="scroll" data-target=".direct" data-offset="50">

                            <nav class="navbar direct">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#section1" id="a1"><i class="fas fa-map-marker"></i></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#section2" id="a2"><i class="fas fa-map-marker"></i></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#section3" id="a3"><i class="fas fa-map-marker"></i></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#section4" id="a4"><i class="fas fa-map-marker"></i></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#section5" id="a5"><i class="fas fa-map-marker"></i></a>
                                    </li>
                                </ul>
                            </nav>


                            <div id="section1">
                                <div class="destination d-flex mb-3">
                                    <div class="mr-3" style="position: relative; left: -40px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/1.PNG" alt="" width="80">
                                    </div>
                                    <div class="des-content">
                                        <h3 class="mt-3">Landmark 81</h3>
                                        <p class="mt-4">Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.</p>
                                    </div>

                                </div>
                                <div class="des-img d-flex" style="position: relative; left: -150px;">
                                    <img style="left: -150px;" src="https://www.elleman.vn/wp-content/uploads/2018/04/05/vincom-landmark-81-lakhta-center-elle-man-feature.jpg" alt="" height="500" width="1000">
                                    <div class="des-img__small">
                                        <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/208382054.jpg?k=94c5de23257e588936d5bfa280a2db549499314b8df3b1e30b94ff1cfb565e0f&o=&hp=1" alt="" height="95" width="140">
                                        <img src="https://tailieuxaydung.info/wp-content/uploads/2018/08/landmark811.jpg" alt="" height="95" width="140">
                                        <img src="https://img.hoozing.com/1280/Project/926/hoozing-d61f0f6b-3247-4578-9bb2-44ba8188fd43.jpg" alt="" height="95" width="140">
                                        <img src="http://luxuryrealty.com.vn/wp-content/uploads/2017/12/vinhomes-central-park-thang-12-2017-4.png" alt="" height="95" width="140">
                                        <p style="text-align: center;"><a href="" style="color: rgb(4, 16, 71); font-weight: bold;">Tìm hiểu thêm...</a></p>
                                    </div>
                                    <div class="bg-rectangle"></div>
                                </div>
                            </div>

                            <div id="section2">
                                <div class="destination d-flex mb-3 mt-5">
                                    <div class="mr-3" style="position: relative; left: -40px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/2.PNG" alt="" width="80">
                                    </div>
                                    <div class="des-content">
                                        <h3 class="mt-3">Bitexco</h3>
                                        <p class="mt-4">Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.</p>
                                    </div>

                                </div>
                                <div class="des-img d-flex" style="position: relative; left: -150px;">
                                    <img style="left: -150px;" src="https://vlook.vn/wp-content/uploads/2015/03/BITEXCO-F.jpg" alt="" height="500" width="1000">
                                    <div class="des-img__small">
                                        <img src="http://alagreen.vn/public/upload/images/N%E1%BB%99i%20th%E1%BA%A5t%20v%C4%83n%20ph%C3%B2ng/T%C3%B2a%20th%C3%A1p%20Bitexco%20Financial%20Tower.jpg" alt="" height="95" width="140">
                                        <img src="https://lh3.googleusercontent.com/proxy/g-Jr5jNgziIISwnu55bZ1RMUBrdTG-a9UJzB633fUScyjF64vWOKKQlQFPphqwVSqN37teEvm886yaZCVtfE" alt="" height="95" width="140">
                                        <img src="https://lh3.googleusercontent.com/proxy/87XyH50QFu-4v6-suEw9J5-T7SPhCZn9gddoF_nTMAWXH-fg8b5Sq1_T7PCfw2YjMJYACM8XfzAp67Keuh-DeL5_XUl8yhR3IGpdhOw6OmSJTcBupQ" alt="" height="95" width="140">
                                        <img src="https://www.alualpha.com/wp-content/uploads/2018/09/Cong-trinh-toa-nha-cao-thanh-pho-hcm.jpg" alt="" height="95" width="140">
                                        <p style="text-align: center;"><a href="" style="color: rgb(4, 16, 71); font-weight: bold;">Tìm hiểu thêm...</a></p>
                                    </div>
                                    <div class="bg-rectangle"></div>
                                </div>
                            </div>

                            <div id="section3">
                                <div class="destination d-flex mb-3 mt-5">
                                    <div class="mr-3" style="position: relative; left: -40px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/3.PNG" alt="" width="80">
                                    </div>
                                    <div class="des-content">
                                        <h3 class="mt-3">Dinh Độc Lập</h3>
                                        <p class="mt-4">Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.</p>
                                    </div>

                                </div>
                                <div class="des-img d-flex" style="position: relative; left: -150px;">
                                    <img style="left: -150px;" src="https://image.thanhnien.vn/1024/uploaded/congson/2020_12_04/gianthanhson-dinhdoclap_cmlx.jpg" alt="" height="500" width="1000">
                                    <div class="des-img__small">
                                        <img src="https://www.tapchikientruc.com.vn/wp-content/uploads/2020/04/20A04027-01.jpg" alt="" height="95" width="140">
                                        <img src="https://gotrangtri.vn/wp-content/uploads/2018/06/dinh-doc-lap-2.jpg" alt="" height="95" width="140">
                                        <img src="https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/9-1.jpg" alt="" height="95" width="140">
                                        <img src="https://i.pinimg.com/originals/f5/bc/df/f5bcdf09dbf254facf2f0ed12efe8190.jpg" alt="" height="95" width="140">
                                        <p style="text-align: center;"><a href="" style="color: rgb(4, 16, 71); font-weight: bold;">Tìm hiểu thêm...</a></p>
                                    </div>
                                    <div class="bg-rectangle"></div>
                                </div>
                            </div>

                            <div id="section4">
                                <div class="destination d-flex mb-3 mt-5">
                                    <div class="mr-3" style="position: relative; left: -40px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/4.PNG" alt="" width="80">
                                    </div>
                                    <div class="des-content">
                                        <h3 class="mt-3">Chợ Bến Thành</h3>
                                        <p class="mt-4">Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.</p>
                                    </div>

                                </div>
                                <div class="des-img d-flex" style="position: relative; left: -150px;">
                                    <img style="left: -150px;" src="https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/1-6.jpg" alt="" height="500" width="1000">
                                    <div class="des-img__small">
                                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Ch%E1%BB%A3_B%E1%BA%BFn_Th%C3%A0nh%2C_S%C3%A0i_g%C3%B2n_Vi%E1%BB%87t_nam_-_panoramio.jpg/1200px-Ch%E1%BB%A3_B%E1%BA%BFn_Th%C3%A0nh%2C_S%C3%A0i_g%C3%B2n_Vi%E1%BB%87t_nam_-_panoramio.jpg"
                                            alt="" height="95" width="140">
                                        <img src="https://vcdn1-vnexpress.vnecdn.net/2020/03/27/cho-ben-thanh-2-1585317045-1585321278.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=tKL_qfQLctfcsTeAVG8qNQ" alt="" height="95" width="140">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUiG28agfYlW2Tvdaim4txJdOgsnFLp4QJKg&usqp=CAU" alt="" height="95" width="140">
                                        <img src="https://s3-ap-northeast-1.amazonaws.com/nem-vn.net/original/2020/08/cho-ben-thanh-1598016909-10756.jpeg" alt="" height="95" width="140">
                                        <p style="text-align: center;"><a href="" style="color: rgb(4, 16, 71); font-weight: bold;">Tìm hiểu thêm...</a></p>
                                    </div>
                                    <div class="bg-rectangle"></div>
                                </div>
                            </div>

                            <div id="section5">
                                <div class="destination d-flex mb-3 mt-5">
                                    <div class="mr-3" style="position: relative; left: -40px;">
                                        <img src="${pageContext.request.contextPath}/resources/img/5.PNG" alt="" width="80">
                                    </div>
                                    <div class="des-content">
                                        <h3 class="mt-3">Bến Cảng Nhà Rồng</h3>
                                        <p class="mt-4">Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.Bờ sông Tokyo có nhiều điểm giải trí, mua sắm và khu ăn uống ngon.</p>
                                    </div>

                                </div>
                                <div class="des-img d-flex" style="position: relative; left: -150px;">
                                    <img style="left: -150px;" src="http://iwater.vn/Image/Picture/New/B%E1%BA%BFn%20Nh%C3%A0%20R%E1%BB%93ng.jpg" alt="" height="500" width="1000">
                                    <div class="des-img__small">
                                        <img src="http://khamphavanhoaviet.com/wp-content/uploads/2018/05/ben-nha-rong-bao-tang-ho-chi-minh-436.jpg" alt="" height="95" width="140">
                                        <img src="https://www.lancaster.com.vn/storage/app/uploads/public/5b9/0dc/b45/5b90dcb4586bf507830145.jpg" alt="" height="95" width="140">
                                        <img src="https://kienviet.net/wp-content/uploads/2017/01/ben-nha-rong-moi-canh-khanh-hoi.jpg" alt="" height="95" width="140">
                                        <img src="https://lh3.googleusercontent.com/proxy/X17DuEeX7hEtF2tTj2J92Xg1iU67tpBVXstnhEojidjnnQlBfgqZ9FG6XbHG_cJN1DqXctQKzzzOVPCQGCYx2sS7kMWqv3Gl7Xh7L_j4foC2H2YyWPSNY2so1lucw88FxJI3p-_jW3dHQ-_jcmsffZ32ix7bDLEolvzekOnS" alt="" height="95" width="140">
                                        <p style="text-align: center;"><a href="" style="color: rgb(4, 16, 71); font-weight: bold;">Tìm hiểu thêm...</a></p>
                                    </div>
                                    <div class="bg-rectangle"></div>
                                </div>
                            </div>
                        </div>


                        <div style="margin-top: 200px;">
                            <h2 class="mb-3 text-center">Bản Đồ Địa Điểm</h2>
                            <div class="map d-flex">
                                <div id="viewDiv" style="position: relative; z-index: 9; width: 70%; height: 500px; top: 50px; border: 1px solid #706f6f"></div>
                                <div style="margin-left: 40px; margin-top: 50px; width: 40%;">
                                    <h6 class="text-center">Chọn điểm để xem bản đồ</h6>
                                    <ul>
                                        <li onclick="getMap(106.72199602598236, 10.795107310754066, 14), onclickLi(this)" class="d-flex">
                                            Landmark 81
                                            <a href=""><i class="fas fa-map-marked"></i></a>
                                        </li>
                                        <p>Cách nhau khoảng 5km </p>
                                        <li onclick="getMap(106.7043163823586,10.77171147087415, 16), onclickLi(this)">Bitexco Financial <a href=""><i class="fas fa-map-marked"></i></a></li>
                                        <p>Cách nhau khoảng 3km </p>
                                        <li onclick="getMap(106.69524829714344,10.777889923449361, 16), onclickLi(this)">Dinh Độc Lập<a href=""><i class="fas fa-map-marked"></i></a></li>
                                        <p>Cách nhau khoảng 1km </p>
                                        <li onclick="getMap(106.69827839714354,10.772320287771528, 16), onclickLi(this)">Chợ Bến Thành<a href=""><i class="fas fa-map-marked"></i></a></li>
                                        <p>Cách nhau khoảng 3.3km </p>
                                        <li onclick="getMap(106.70675394378799,10.768455261605052,16), onclickLi(this)">Bảo tàng Hồ Chí Minh<a href=""><i class="fas fa-map-marked"></i></a></li>
                                    </ul>
                                    <script>
                                        function onclickLi(element) {
                                            var liActive = document.querySelectorAll(".map li").forEach(a => {
                                                a.style.color = "blue";
                                                a.style.backgroundColor = "#f6f6f6";
                                            })
                                            element.style.color = "orangered";
                                            element.style.backgroundColor = "#FFF5E1";
                                        }
                                    </script>
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
                                            <li><a href="">Bản đồ 2d</a></li>
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
                                            <h5>Liên hệ </h5>
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
                            if (directScrollpos > currentScrollPos) {
                                document.querySelector(".direct").style.opacity = "0";
                            }
                            if (directScrollpos <= currentScrollPos) {
                                document.querySelector(".direct").style.opacity = "1";
                            }
                            if (currentScrollPos >= 4935.2001953125) {
                                document.querySelector(".direct").style.opacity = "0";
                            }

                            if (currentScrollPos < 2000 && currentScrollPos >= 1304.800048828125) {
                                document.querySelectorAll(".direct a")[0].style.color = "red";
                            } else {
                                document.querySelectorAll(".direct a")[0].style.color = "blue";
                            }

                            if (currentScrollPos < 2640 && currentScrollPos >= 2000) {
                                document.querySelectorAll(".direct a")[1].style.color = "red";
                            } else {
                                document.querySelectorAll(".direct a")[1].style.color = "blue";
                            }

                            if (currentScrollPos < 3412.800048828125 && currentScrollPos >= 2640) {
                                document.querySelectorAll(".direct a")[2].style.color = "red";
                            } else {
                                document.querySelectorAll(".direct a")[2].style.color = "blue";
                            }

                            if (currentScrollPos < 4134.39990234375 && currentScrollPos >= 3412.800048828125) {
                                document.querySelectorAll(".direct a")[3].style.color = "red";
                            } else {
                                document.querySelectorAll(".direct a")[3].style.color = "blue";
                            }

                            if (currentScrollPos < 4935.2001953125 && currentScrollPos >= 4134.39990234375) {
                                document.querySelectorAll(".direct a")[4].style.color = "red";
                            } else {
                                document.querySelectorAll(".direct a")[4].style.color = "blue";
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