<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/11/2021
  Time: 4:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>lion</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="#" /></div>
</div>

<div class="wrapper">

    <!-- end loader -->
    <div class="sidebar">
        <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components">

                <li class="active">
                    <a href="home1">Home</a>
                </li>
                <li>
                    <a href="#brand">Brands</a>
                </li>
                <li>
                    <a href="#shoes">Shoes</a>
                </li>
                <li>
                    <a href="#jewellery">Jewellery</a>
                </li>
                <li>
                    <a href="#kids">Kids and Babies</a>
                </li>
            </ul>

        </nav>
    </div>

    <div id="content">
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="head_top">
                <div class="header">

                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-3 logo_section">
                                <div class="full">
                                    <div class="center-desk">
                                        <div class="logo">
                                            <a href="home1"><img src="images/logo.png" alt="#"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="right_header_info">
                                    <ul>
                                        <li class="menu_iconb">
                                            <a href="#"><img style="margin-right: 15px;" src="icon/1.png" alt="#" />7213456789</a>
                                        </li>
                                        <li class="tytyu">
                                            <a href="#"> <img style="margin-right: 15px;" src="icon/2.png" alt="#" /></a>
                                        </li>
                                        <li class="menu_iconb">
                                            <a href="#"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a>
                                        </li>
                                        <li class="menu_iconb">
                                            <a href="home">Log out <img style="margin-right: 15px;" src="icon/5.png" alt="#" /> </a>
                                        </li>

                                        <li>
                                            <button type="button" id="sidebarCollapse">
                                                <img src="images/menu_icon.png" alt="#" />
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- end header inner -->

                <!-- end header -->
                <section class="slider_section">
                    <div class="banner_main">
                        <div class="container-fluid padding3">
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mapimg">
                                    <div class="text-bg">
                                        <h1>All <br>
                                            In<br>
                                            One <br>
                                            Shop</h1>
                                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit</span>
                                        <a href="#">Buy now</a>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                    <div id="myCarousel" class="carousel slide banner_Client" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="container">
                                                    <div class="carousel-caption text">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="img_bg">
                                                                    <figure><img src="images/cap.png" /></figure>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="container">
                                                    <div class="carousel-caption text">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="img_bg">
                                                                    <figure><img src="images/cap.png" /></figure>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="container">
                                                    <div class="carousel-caption text">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="img_bg">
                                                                    <figure><img src="images/cap.png" /></figure>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </header>
        <!-- Categories -->
        <div class="Categories">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <h2> Categories</h2>
                            <ul class="categiri">
                                <li class="active"><a href="#">Clothing</a></li>
                                <li><a href="#">Electronics</a></li>
                                <li><a href="#shoes">Shoes</a></li>
                                <li><a href="#">Watches</a></li>
                                <li><a href="#jewellery">Jewellery</a></li>
                                <li><a href="#">Health and Beauty</a></li>
                                <li><a href="#kids">Kids and Babies</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Home and Garden</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- news brand -->
                <div id="brand"  class="brand-bg">
                    <h3>New brands</h3>
                    <div class="row">
                        <c:forEach items = "${listP}" var = "o" >
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                                <div class="brand-box">
                                    <i><img src="${o.product_image}"/></i>
                                    <h4>${o.product_name} <span class="nolmal"></span></h4>
                                    <h4>Price <span class="nolmal">${o.product_price}</span></h4>
                                </div>
                                <a class="buynow" href="#">Buy now</a>
                            </div>
                        </c:forEach>
                    </div>
                    <br><br><br><br>
                </div>
                <a class="seemore" href="#">See more</a>
                <!-- end news brand -->


                <!-- end Categories -->



                <!--  footer -->
                <footer>
                    <div class="footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="footer_top">
                                        <div class="row">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                                <a href="homepage.jsp"> <img class="logo1" src="images/logo1.png" /></a>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                                <ul class="sociel">
                                                    <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                                    <li> <a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 ">
                                            <div class="address">
                                                <h3>Contact us </h3>
                                                <ul class="loca">
                                                    <li>
                                                        <a href="#"><img src="icon/loc.png" alt="#" /></a>145 londone
                                                        <br>uk </li>
                                                    <li>
                                                        <a href="#"><img src="icon/call.png" alt="#" /></a>+12586954775 </li>
                                                    <li>
                                                        <a href="#"><img src="icon/email.png" alt="#" /></a>demo@gmail.com </li>

                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="address">
                                                <h3>customer service</h3>
                                                <ul class="Menu_footer">
                                                    <li class="active"> <a href="#">My account</a> </li>
                                                    <li><a href="#">Wishlist</a> </li>
                                                    <li><a href="#">My Cart</a> </li>
                                                    <li><a href="#">Checkout</a> </li>
                                                    <li><a href="#">Login</a> </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="address">
                                                <h3>corporation</h3>
                                                <ul class="Links_footer">
                                                    <li class="active"><a href="#">My account</a> </li>
                                                    <li><a href="#">Wishlist</a> </li>
                                                    <li><a href="#">My Cart</a> </li>
                                                    <li><a href="#"> Checkout</a> </li>
                                                    <li><a href="#">Login</a> </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-lg-3 col-md-6 col-sm-6 ">
                                            <div class="address">
                                                <h3>why choose us</h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna </p>
                                                <form class="newtetter">
                                                    <input class="tetter" placeholder="Your email" type="text" name="Your email">
                                                    <button class="submit">Subscribe</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="copyright">
                            <div class="container">
                                <p>Copyright 2019 All Right Reserved By <a href="https://html.design/">Free html Templates</a></p>
                            </div>
                        </div>
                    </div>

                </footer>
                <!-- end footer -->


            </div>

            <div class="overlay"></div>

            <!-- Javascript files-->
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="js/jquery-3.0.0.min.js"></script>

            <!-- sidebar -->
            <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
            <script src="js/custom.js"></script>
            <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function() {
                    $("#sidebar").mCustomScrollbar({
                        theme: "minimal"
                    });

                    $('#dismiss, .overlay').on('click', function() {
                        $('#sidebar').removeClass('active');
                        $('.overlay').removeClass('active');
                    });

                    $('#sidebarCollapse').on('click', function() {
                        $('#sidebar').addClass('active');
                        $('.overlay').addClass('active');
                        $('.collapse.in').toggleClass('in');
                        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                    });
                });
            </script>

            <script>
                $(document).ready(function() {
                    $(".fancybox").fancybox({
                        openEffect: "none",
                        closeEffect: "none"
                    });

                    $(".zoom").hover(function() {

                        $(this).addClass('transition');
                    }, function() {

                        $(this).removeClass('transition');
                    });
                });
            </script>
            <script>
                // This example adds a marker to indicate the position of Bondi Beach in Sydney,
                // Australia.
                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 11,
                        center: {
                            lat: 40.645037,
                            lng: -73.880224
                        },
                    });

                    var image = 'images/maps-and-flags.png';
                    var beachMarker = new google.maps.Marker({
                        position: {
                            lat: 40.645037,
                            lng: -73.880224
                        },
                        map: map,
                        icon: image
                    });
                }
            </script>
            <!-- google map js -->
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
            <!-- end google map js -->
</body>

</html>