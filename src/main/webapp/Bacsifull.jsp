<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>An Tâm</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/gijgo.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animated-headline.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cssformdoctor.css">

    </head>
    <body>
        <!-- ? Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="${pageContext.request.contextPath}/assets/img/logo/logo_3.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!--? Header Start -->
            <div class="header-area">
                <div class="main-header header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                    <a href="trang-chu"><img src="${pageContext.request.contextPath}/assets/img/logo/logo_5.png" alt=""></a>
                                </div>

                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                <div class="menu-main d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu f-right d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="trang-chu">Trang chủ</a></li>
                                                <li><a>Thông tin</a>
                                                    <ul class="submenu">
                                                        <li><a href="TTPhongKham.jsp">Phòng Khám</a></li>
                                                        <li><a href="bac-si">Bác Sĩ</a></li>

                                                    </ul>
                                                </li>

                                                <li><a href="cam-nang">Cẩm Nang</a>

                                                </li>

                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="header-right-btn f-right d-none d-lg-block ml-15">
                                        <a href="#" class="btn header-btn">Đăng nhập/Đăng kí</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>

        <main>
            <!--? Slider Area Start-->
            <div class="slider-area slider-area2">
                <div class="slider-active dot-style">
                    <!-- Slider Single -->
                    <div class="single-slider  d-flex align-items-center slider-height2">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-xl-7 col-lg-8 col-md-10 ">
                                    <div class="hero-wrapper">
                                        <div class="hero__caption">
                                            <h1 data-animation="fadeInUp" data-delay=".3s" style="font-family: Arial">Đội Ngũ Bác Sĩ</h1>
                                            <p data-animation="fadeInUp" data-delay=".6s" style="font-family: Arial">Chuyên nghiệp, tận tâm<br></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-search"> <!-- Added a container for search form -->
                <form action="search" method="post">
                    <input type="text" placeholder="Tên bác sĩ, chuyên khoa ..." name="txt">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <br><br>
            <div class="header-search" style="font-size: 2.0em; color: red">${none}</div>
            <br> <br> <br>
            <div class="container">
                <h2>Chuyên khoa</h2>
            </div>
            <br>
            <div class="specialty-list">
                <c:set var="currentSpecialtyId" value="${param.cid}" />
                <div class="specialty-item">
                    <a class="h3 text-dark text-decoration-none mr-3 ${empty param.cid ? 'font-weight-bold'  : ''}" href="bac-si" onclick="setViewAll()">Tất cả</a>
                </div>
                <c:forEach items="${showlistc}" var="i">
                    <div class="specialty-item">
                        <a class="h3 text-dark text-decoration-none mr-3 ${i.specialtyID == currentSpecialtyId ? 'font-weight-bold' : ''}" href="Chuyen-khoa?cid=${i.specialtyID}">
                            ${i.specialtyName}
                        </a>
                    </div>
                </c:forEach>
            </div>
            <br> <br> <br>
            <div class="container">

                <h2>Chọn bác sĩ</h2>

            </div>
            <br> <br> <br>
            <div class="container">

                <div class="row">

                    <c:forEach items="${showalldoctor}" var="i">

                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="doctor-card">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="${i.image}" alt="">
                                        <div class="ratings">
                                            <span class="rating"></span>
                                            <i class="fas fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="blog-cap">
                                        <h3 class="doctor-name">${i.name}</h3>
                                        <div class="degree">${i.degree}</div>


                                        <button class="btn appointment-button">
                                            <i class="fas fa-calendar-alt" style="color: white;"></i>
                                            <span>
                                                <a href=dat-lich?lid=${i.doctorID}>
                                                    Đặt khám
                                                </a>
                                            </span>
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>






            </div>


            <div class="container">
                <div class="row">
                    <c:forEach items="${timkiem}" var="i">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="doctor-card">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="${i.image}" alt="">
                                        <div class="ratings">
                                            <span class="rating"></span>
                                            <i class="fas fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="blog-cap">
                                        <h3 class="doctor-name">${i.name}</h3>
                                        <div class="degree">${i.degree}</div>

                                        <button class="appointment-button">Đặt khám</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>

            </div>

            <div class="container">
                <div class="row">
                    <c:forEach items="${showlist}" var="i">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="doctor-card">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="${i.image}" alt="">
                                        <div class="ratings">
                                            <span class="rating"></span>
                                            <i class="fas fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="blog-cap">
                                        <h3 class="doctor-name">${i.name}</h3>
                                        <div class="degree">${i.degree}</div>
                                        <p class="specialization">

                                        </p>
                                        <button class="appointment-button">Đặt khám</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>




            </div>


            <!-- About Law End-->
        </main>
        <footer>
            <div class="footer-wrappr section-bg3" data-background="${pageContext.request.contextPath}/assets/img/gallery/footer-bg.png">
                <div class="footer-area footer-padding ">
                    <div class="container">
                        <div class="row justify-content-between">
                            <div class="col-xl-8 col-lg-8 col-md-6 col-sm-12">
                                <div class="single-footer-caption mb-50">
                                    <!-- logo -->
                                    <div class="footer-logo mb-25">
                                        <a href="trang-chu"><img src="${pageContext.request.contextPath}/assets/img/logo/logo_5.png" alt=""></a>
                                    </div>
                                    <d iv class="header-area">
                                        <div class="main-header main-header2">
                                            <div class="menu-main d-flex align-items-center justify-content-start">
                                                <!-- Main-menu -->

                                            </div>
                                        </div>
                                    </d>
                                    <!-- social -->
                                    <div class="footer-social mt-50">
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                                <div class="single-footer-caption">
                                    <div class="footer-tittle mb-50">
                                        <h4>Subscribe newsletter</h4>
                                    </div>
                                    <!-- Form -->
                                    <div class="footer-form">
                                        <div id="mc_embed_signup">
                                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part" novalidate="true">
                                                <input type="email" name="EMAIL" id="newsletter-form-email" placeholder=" Email Address " class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your email'">
                                                <div class="form-icon">
                                                    <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm">
                                                        Subscribe
                                                    </button>
                                                </div>
                                                <div class="mt-10 info"></div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>Praesent porttitor, nulla vitae posuere iaculis, arcu nisl dignissim dolor, a pretium misem ut ipsum.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer-bottom area -->
                <div class="footer-bottom-area">
                    <div class="container">
                        <div class="footer-border">
                            <div class="row">
                                <div class="col-xl-10 ">
                                    <div class="footer-copy-right">
                                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Scroll Up -->
        <div id="back-top" >
            <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
        </div>

        <!-- JS here -->

        <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
        <!-- One Page, Animated-HeadLin -->
        <script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/animated.headline.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.js"></script>

        <!-- Date Picker -->
        <script src="${pageContext.request.contextPath}/assets/js/gijgo.min.js"></script>
        <!-- Nice-select, sticky -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.sticky.js"></script>

        <!-- counter , waypoint,Hover Direction -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.counterup.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.countdown.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/hover-direction-snake.min.js"></script>

        <!-- contact js -->
        <script src="${pageContext.request.contextPath}/assets/js/contact.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.form.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/mail-script.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->
        <script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

    </body>
</html>
