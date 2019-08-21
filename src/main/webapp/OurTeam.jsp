<%@ page language="java" contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Car Repair Services and Auto Mechanic WordPress Theme &#8211; Just another WordPress site</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dosis%3A700%2C100%2C900%7CDosis%3A400%2C500%2C600%2C700%2C700i%7CRoboto%3A400%2C500%2C700%7CDosis%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&subset=" />

    <link rel='dns-prefetch' href='//fonts.googleapis.com' />
    <link rel="alternate" type="application/rss+xml" title="Car Repair Services and Auto Mechanic WordPress Theme &raquo; Feed" href="xml/feed.xml" />
    <link rel="alternate" type="application/rss+xml" title="Car Repair Services and Auto Mechanic WordPress Theme &raquo; Comments Feed" href="xml/comm_feed.xml" />
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url('fonts/iconfont.ttf');
        }
        @font-face {
            font-family: FontAwesome;
            src: url('fonts/fontawesome-webfont.woff2');
        }
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }

    </style>
    <link rel='stylesheet' id='wp-block-library-css'  href='css/style.min.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='wc-block-style-css'  href='css/style-42cb074388d96fb46ed4fe9c68be84ae.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='contact-form-7-css'  href='css/styles-0125cd48cb133cd2948f228e85897658.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='woocommerce-layout-css'  href='css/woocommerce-layout-6a896327bcac2f64d780227a9966933b.css' type='text/css' media='all' />
    <style id='woocommerce-layout-inline-css' type='text/css'>

        .infinite-scroll .woocommerce-pagination {
            display: none;
        }
    </style>
    <link rel='stylesheet' id='woocommerce-smallscreen-css'  href='css/woocommerce-smallscreen-3.6.2.css' type='text/css' media='only screen and (max-width: 768px)' />
    <link data-minify="1" rel='stylesheet' id='woocommerce-general-css'  href='css/woocommerce-b0df6da74f8ecf9c16c58dc3248fe83e.css' type='text/css' media='all' />
    <style id='woocommerce-inline-inline-css' type='text/css'>
        .woocommerce form .form-row .required { visibility: visible; }
    </style>
    <link rel='stylesheet' id='elementor-icons-css'  href='css/elementor-icons.min-4.3.0.css' type='text/css' media='all' />
    <link rel='stylesheet' id='font-awesome-css'  href='css/font-awesome.min-4.7.0.css' type='text/css' media='all' />
    <link rel='stylesheet' id='elementor-animations-css'  href='css/animations.min-2.5.14.css' type='text/css' media='all' />
    <link rel='stylesheet' id='elementor-frontend-css'  href='css/frontend.min-2.5.14.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='elementor-global-css'  href='css/global-a918dcb9e5542576ba68295bf91303aa.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='elementor-post-45-css'  href='css/post-45-57fa0217c0aef687ae0a5ea55e0137ae.css' type='text/css' media='all' />

    <link rel='stylesheet' id='bootstrap-css'  href='css/bootstrap.min-1565178511.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='icon-font-css'  href='css/icofont-750db623c282dd2ef7ddc6508b49c5ca.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='magnific-popup-css'  href='css/magnific-popup-cfc2f6e523355b83402ec0e3efa6b8c8.css' type='text/css' media='all' />
    <link rel='stylesheet' id='owlcarousel-css'  href='css/owlcarousel.min-1565178511.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='woocommerce-css'  href='css/woocommerce-b4ac410a7586aa9b86480c0735dcaaea.css' type='text/css' media='all' />
    <link rel='stylesheet' id='select2-full-style-css'  href='css/select2.min-1565178511.css' type='text/css' media='all' />
    <link data-minify="1" rel='stylesheet' id='autrics-style-css'  href='css/master-9eee1f69df4f3a5040f29269fae552cc.css' type='text/css' media='all' />
    <style id='autrics-style-inline-css' type='text/css'>

        body{ font-family:"Roboto";font-size:16px;font-weight:regular; }

        h1,h2{
            font-family:"Dosis";font-size:36px;font-weight:700;
        }
        h3,h4{ font-family:"Dosis";font-size:16px;font-weight:700; }


        body{
            background-color: #fff;
        }

        .single-intro-text .count-number,
        .header-angle:after,
        .ts-header:after,
        .navbar-nav .nav-item .dropdown-menu li a:hover, .navbar-nav .nav-item .dropdown-menu li a.active,
        .copyright .back-btn,

        .owl-carousel.owl-loaded .owl-nav button,
        .title-section-area .section-title:before,
        .owl-carousel.owl-loaded .owl-nav .owl-next.disabled, .owl-carousel.owl-loaded .owl-nav .owl-prev.disabled,
        .service-content .service-icon,
        .owl-carousel .owl-dots button.active,
        .ts-latest-post .post-body .post-date,
        .ts-header-classic .header-angle .ts-navbar,
        .ts-header-classic .header-angle .navbar-light,
        .quote-btn-area .btn,
        .ts-team-standard .ts-team-info .team-content .team-name,
        .ts-tab.nav-tabs .nav-link.active,
        .column-title:before, .column-title-sm:before,
        .ts-top-bar-2.standard,
        .ts-header-transparent .navbar .nav-item .nav-link:after,
        .tag-lists a:hover, .tagcloud a:hover,
        .widget_search .input-group-btn, .search-forms .input-group-btn,
        .blog-post-comment .btn-comments,
        .footer-main .footer-social ul li a:hover,
        .post-content.post-single .post-body .post-footer .post-tags a:hover,
        .ts-pricing-table-standard .plan.plan-highlight .plan-price,
        .plan .plan-tag,
        .button-normal .btn,
        .ts-header-standard .ts-logo-area .navbar .nav-item .nav-link.active:after,
        .woocommerce ul.products li.product .button,.woocommerce ul.products li.product .added_to_cart,
        .woocommerce nav.woocommerce-pagination ul li a:focus, .woocommerce nav.woocommerce-pagination ul li a:hover, .woocommerce nav.woocommerce-pagination ul li span.current,
        .woocommerce #respond input#submit.alt, .woocommerce a.button.alt, .woocommerce button.button.alt, .woocommerce input.button.alt,.sponsor-web-link a:hover i, .woocommerce .widget_price_filter .ui-slider .ui-slider-range,
        .woocommerce span.onsale
        {
            background-color: #ee3131;
        }

        .ts-slider-area.owl-carousel .owl-nav button:hover{
            background-color: #ee3131 !important;
        }
        .slider-content h1 span,
        .testimonial-body .quote-icon,
        .ts-latest-post:hover .post-body .post-title a,
        .ts-latest-post:hover .post-body .readmore,
        .ts-service-wrapper:hover .service-content h3, .ts-service-wrapper:hover .service-content h3 > a,
        .ts-service-wrapper:hover .readmore,
        .testimonial-item-single.with-bg .quote-item:before,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .nav-link:focus,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .nav-link:hover,
        .ts-feature-standard .feature-single.feature-single:hover h3 a,
        .ts-team-info:hover .team-content .team-name,
        .ts-team-info .team-content .team-details .team-rating,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link:focus,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link:hover,
        .post .post-body .entry-title a:hover,
        .readmore,
        .sidebar .widget_archive ul li a:hover,
        .sidebar .widget_categories ul li a:hover,
        .recent-post-widget .media-body .entry-title a:hover,
        .post .post-quote-content .entry-header i,
        .breadcrumb li a,
        .post-content.post-single .post-body .entry-content blockquote p cite,
        blockquote:before,
        .testimonial-item-wrapper .quote-item i,
        .top-contact-info li span,
        .ts-header-transparent .navbar-light .navbar-nav .active>.nav-link,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link.active,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link:hover:before,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link.show,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .active>.nav-link,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .nav-link.active
        .ts-header-transparent .navbar-light .navbar-nav .show>.nav-link,
        .post-content .post-footer .readmore:hover,
        .post-navigation span:hover, .post-navigation h3:hover,
        .woocommerce ul.products li.product .price,
        .woocommerce ul.products li.product .woocommerce-loop-product__title:hover
        {
            color: #ee3131;
        }
        .ts-latest-post .post-body .post-date:before,
        .ts-latest-post:hover .post-body .post-date:before{
            border-top-color: #ee3131;
        }
        .ts-latest-post:hover .post-body .readmore i,
        .ts-header-classic .header-angle .ts-navbar,
        .ts-service-wrapper:hover .readmore i,
        .readmore i,
        .footer-main .footer-social ul li a:hover{
            border-color: #ee3131;
        }
        .header-angle:before,
        .ts-header-classic .header-angle .navbar-light:before{
            border-right-color: #ee3131;
        }

        .ts-team-standard .ts-team-info .team-content .team-name:before,
        .ts-pricing-table-standard .plan.plan-highlight .plan-price:after{
            border-top-color: #ee3131;
        }
        .ts-tab.nav-tabs .nav-link.active:after{
            border-left-color: #ee3131;
        }


        .copyright{
            background: #2f3967;
        }
        .ts-team-standard .ts-team-info:hover .team-content .team-name{
            color: #fff;
        }

        /* -- secondary color-- */
        .ts-top-bar:before,
        .top-bar-angle:after,
        .ts-top-bar-2.classic,
        .button-normal .btn:hover,
        .woocommerce ul.products li.product .added_to_cart:hover, .woocommerce #respond input#submit.alt:hover, .woocommerce a.button.alt:hover, .woocommerce button.button.alt:hover, .woocommerce input.button.alt:hover,.woocommerce .widget_price_filter .ui-slider .ui-slider-handle{
            background-color:  #2f3967;
        }

        .feature-single .feature-icon,
        .woocommerce ul.products li.product .woocommerce-loop-product__title{
            color: #2f3967;
        }

        .top-bar-angle:before{
            border-right-color: #2f3967;
            border-left-color: #2f3967;
        }
        .btn:after{
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(238, 49, 49)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }
        .btn:hover:after{
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(47, 57, 103)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }
        .btn-after:after{
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(238, 49, 49)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }
        .btn-after:hover:after{
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(47, 57, 103)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }




        .footer{
            background: #06163a;
            padding-top: 0px;
        }
        .copyright{
            background:#2f3967;
        }

    </style>

    <script type='text/javascript' src='js/jquery-1.12.4.js'></script>
    <script type='text/javascript' src='js/jquery-migrate.min-1.4.1.js'></script>
    <link rel='https://api.w.org/' href='js/api.json' />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://demo.themewinter.com/wp/autrics/xmlrpc.php?rsd" />
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="xml/wlwmanifest.xml" />
    <meta name="generator" content="WordPress 5.1.1" />
    <meta name="generator" content="WooCommerce 3.6.2" />
    <link rel="canonical" href="http://demo.themewinter.com/wp/autrics/" />
    <link rel='shortlink' href='http://demo.themewinter.com/wp/autrics/' />
    <link rel="alternate" type="application/json+oembed" href="js/embed.json" />
    <link rel="alternate" type="text/xml+oembed" href="xml/embed.xml" />
    <noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
    <style type="text/css" id="wp-custom-css">
        @media (max-width: 1199px){
            .home-featured-slider .slider-items{
                background-position: 75% 0 !important;
            }
            .about-autrics-img .elementor-background-overlay{
                background-image: none !important;
            }
            .ts-latest-post .post-body .post-date:before{
                display: none;
            }
            .ts-latest-post .post-body .post-date{
                height: 65px;
            }
        }

        .sidebar-woo .unstyled.service-time li{
            color: #232323;
        }

        .navbar-fixed.sticky .sticky-logo .d-none img{
            max-width: 150px;
        }

        .btn:after,
        .btn-after:after,
        .wpcf7-submit.btn:after{
            background-size: cover !important;
            background-repeat: no-repeat !important;
            background-position: center center !important;
        }
        .ts-intro-wrapper{
            z-index:0;
        }
    </style>
</head>

<div id="preloader">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
    <div class="preloader-cancel-btn-wraper">
        <a href="#" class="btn btn-primary preloader-cancel-btn">Cancel Preloader</a>
    </div>
</div>

<body class="home page-template page-template-template page-template-homepage-template page-template-templatehomepage-template-php page page-id-35 woocommerce-no-js  elementor-default elementor-page elementor-page-35" >

<div class="ts-top-bar">
    <div class="top-bar-angle">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-4"></div>
                <div class="col-lg-4 col-md-5">
                    <div class="top-bar-event ts-top">
                        <i class="icon icon-clock"></i><span>We&#039;are Open: Mon - Sat 8:00 - 18:00</span>
                    </div> <!-- Top Bar Text End -->

                </div> <!-- Col End -->
                <div class="col-lg-2 col-md-3 text-right">
                    <div class="top-bar-social-icon ml-auto">
                        <ul>
                            <li><a href="http://facebook.com/xpeedstudio/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i class="fa fa-linkedin"></i></a></li>

                        </ul>
                    </div> <!-- Social End -->
                </div><!-- Col End -->
            </div> <!-- Row End -->
        </div> <!-- Container End -->
    </div> <!-- Angle Bar End -->
</div>



<!-- header nav start-->
<header class="ts-header header-default">
    <div class="ts-logo-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <a class="ts-logo" href="http://demo.themewinter.com/wp/autrics/">
                        <img src="images/logo.png" alt="Car Repair Services and Auto Mechanic WordPress Theme">
                    </a>
                </div> <!-- Col End -->
                <div class="col-md-8 float-right">
                    <ul class="top-contact-info">


                        <li>
                            <span><i class="icon icon-phone1"></i></span>
                            <div class="info-wrapper">
                                <p class="info-title">Call Us</p>
                                <p class="info-subtitle">+91 458 654 528</p>
                            </div>
                        </li> <!-- li End -->

                        <li>
                            <span><i class="icon icon-envelope1"></i></span>
                            <div class="info-wrapper">
                                <p class="info-title">Send us mail</p>
                                <p class="info-subtitle">query@finances.com</p>
                            </div>
                        </li> <!-- Li End -->


                        <li>
                            <a href="#" class="btn btn-primary">Contact Us</a>
                        </li> <!-- Li End -->
                    </ul> <!-- Contact info End -->
                </div> <!-- Col End -->
            </div> <!-- Row End -->
        </div> <!-- Container End -->
    </div> <!-- Logo End -->

    <!-- navigation start -->
    <div class="header-angle navbar-fixed ">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button><!-- End of Navbar toggler -->
                <div class="sticky-logo">
                    <a class="ts-logo d-none" href="http://demo.themewinter.com/wp/autrics/" class="ts-logo">
                        <img src="images/logo-white-.png" alt="Car Repair Services and Auto Mechanic WordPress Theme">
                    </a>
                </div>
                <div class="collapse navbar-collapse justify-content-end ts-navbar" id="navbarSupportedContent">

                    <div id="primary-nav" class="menu-main-menu-container"><ul id="main-menu" class="navbar-nav"><li id="menu-item-52" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-52 nav-item dropdown"><a href="index.html" class="nav-link dropdown-toggle" data-toggle="dropdown">Home</a>
                        <ul class="dropdown-menu">
                            <li id="menu-item-56" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-35 current_page_item menu-item-56 nav-item active"><a href="index.html" class=" dropdown-item active">Home one</a> <li id="menu-item-55" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-55 nav-item"><a href="index_two.html" class=" dropdown-item">Home two</a> <li id="menu-item-54" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-54 nav-item"><a href="index_three.html" class=" dropdown-item">Home Three</a> <li id="menu-item-53" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-53 nav-item"><a href="index_four.html" class=" dropdown-item">Home four</a></ul>
                    </li>
                        <li id="menu-item-57" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown"><a href="about.html" class="nav-link dropdown-toggle" data-toggle="dropdown">About</a>
                            <ul class="dropdown-menu">
                                <li id="menu-item-60" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item"><a href="about.html" class=" dropdown-item">About Us</a> <li id="menu-item-59" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item"><a href="our_team.html" class=" dropdown-item">Our Team</a>  <li id="menu-item-58" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item"><a href="gallery.html" class=" dropdown-item">Gallery</a>  <li id="menu-item-62" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item"><a href="faq.html" class=" dropdown-item">FAQ</a>  <li id="menu-item-1691" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item"><a href="testimonial.html" class=" dropdown-item">Testimonial</a>  <li id="menu-item-1692" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item"><a href="pricing-table.html" class=" dropdown-item">Pricing</a></ul>
                        </li>
                        <li id="menu-item-75" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-75 nav-item dropdown"><a href="services-all.html" class="nav-link dropdown-toggle" data-toggle="dropdown">Services</a>
                            <ul class="dropdown-menu">
                                <li id="menu-item-77" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-77 nav-item"><a href="services-all.html" class=" dropdown-item">Services All</a>  <li id="menu-item-1708" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item"><a href="services-single.html" class=" dropdown-item">Service Single</a></ul>
                        </li>
                        <li id="menu-item-2080" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2080 nav-item dropdown"><a href="shop.html" class="nav-link dropdown-toggle" data-toggle="dropdown">Shop</a>
                            <ul class="dropdown-menu">
                                <li id="menu-item-2081" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2081 nav-item"><a href="shop.html" class=" dropdown-item">Product</a> <li id="menu-item-2082" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2082 nav-item"><a href="shop-single.html" class=" dropdown-item">Shop single</a></ul>
                        </li>
                        <li id="menu-item-1494" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1494 nav-item dropdown"><a href="blog.html" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                            <ul class="dropdown-menu">
                                <li id="menu-item-1986" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1986 nav-item"><a href="blog.html" class=" dropdown-item">Blog List</a> <li id="menu-item-1750" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-1750 nav-item"><a href="blog-single.html" class=" dropdown-item">Blog Single</a></ul>
                        </li>
                        <li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78 nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                    </ul></div>




                </div> <!-- End of navbar collapse -->
                <div class="cart-link">
                    <form action="http://demo.themewinter.com/wp/autrics">
                        <span class="header-search-icon"><i class="icon icon-search show"></i></span>
                        <span class="search-close"><i class="icon icon-cross"></i></span>
                        <div class="search-box">
                            <input type="search" name="s" id="search" placeholder="Type here and Search...">
                        </div>
                    </form>
                </div>

                <div class="header-cart">
                    <div class="cart-link">
                        <a class="cart-contents" href="cart.html" title="View your shopping cart">
                            <span class="icon icon-cart"></span>
                            <sup>0</sup>

                        </a>
                    </div>
                </div>

            </nav> <!-- End of Nav -->
        </div> <!-- End of Container -->
    </div> <!-- End of Header Angle-->



</header><!-- Header end -->

<div class="banner-area bg-overlay  " id="banner-area" style="background-image:url(images/banner-bg11.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-heading">
                    <h1 class="banner-title">
                        Our Team
                    </h1>

                    <ol class="breadcrumb" data-wow-duration="2s"><li><a href="http://demo.themewinter.com/wp/autrics">Home</a></li>   <li>Our Team</li></ol>                           </div><!-- Banner Heading end -->
            </div><!-- Col end-->
        </div><!-- Row end-->
    </div><!-- Container end-->
</div>

<div id="post-45" class="home-full-width-content post-45 page type-page status-publish hentry" role="main">
    <div class="builder-content">
        <div data-elementor-type="post" data-elementor-id="45" class="elementor elementor-45" data-elementor-settings="[]">
            <div class="elementor-inner">
                <div class="elementor-section-wrap">
                    <section class="elementor-element elementor-element-a20e8aa elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="a20e8aa" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-d7d6815 elementor-column elementor-col-100 elementor-top-column" data-id="d7d6815" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-5c56ee9 elementor-widget elementor-widget-autrics-title" data-id="5c56ee9" data-element_type="widget" data-widget_type="autrics-title.default">
                                                <div class="elementor-widget-container">
                                                    <div class="title-section-area">
                                                        <h2 class="section-title">
                                                            <span>Our</span> Mechanics         </h2>
                                                    </div><!-- Section title -->


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-292ccac elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="292ccac" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-f93b72a elementor-column elementor-col-33 elementor-top-column" data-id="f93b72a" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-8b4014b elementor-widget elementor-widget-autrics-team" data-id="8b4014b" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">



                                                    <div class="ts-team-info">
                                                        <img src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team1.png" alt=" Jhon Wick" class="img-fluid">

                                                        <div class="team-content">
                                                            <div class="team-details">
                                                                <h3 class="team-name">
                                                                    Jhon Wick                           </h3>
                                                                <p>  Lead Painter </p>
                                                                <span class="team-rating">
                              <i class="fa fa-star"><span>4 </span></i>
                           </span>
                                                            </div>
                                                            <div class="team-text">

                                                                <p>Year Of experience<span>2</span></p>
                                                                <p>Project Done<span>2</span></p>

                                                            </div>
                                                        </div> <!-- Post Body End -->
                                                    </div> <!-- Latest Post End -->







                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-e626852 elementor-column elementor-col-33 elementor-top-column" data-id="e626852" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-48eb6c4 elementor-widget elementor-widget-autrics-team" data-id="48eb6c4" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">



                                                    <div class="ts-team-info">
                                                        <img src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/02/team2.png" alt="                                Michel Andarson                             " class="img-fluid">

                                                        <div class="team-content">
                                                            <div class="team-details">
                                                                <h3 class="team-name">
                                                                    Michel Andarson                                                        </h3>
                                                                <p>  Lead Painter </p>
                                                                <span class="team-rating">
                              <i class="fa fa-star"><span>5 </span></i>
                           </span>
                                                            </div>
                                                            <div class="team-text">

                                                                <p>Year Of experience<span>2</span></p>
                                                                <p>Project Done<span>2</span></p>

                                                            </div>
                                                        </div> <!-- Post Body End -->
                                                    </div> <!-- Latest Post End -->







                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-3005073 elementor-column elementor-col-33 elementor-top-column" data-id="3005073" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-036386f elementor-widget elementor-widget-autrics-team" data-id="036386f" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">



                                                    <div class="ts-team-info">
                                                        <img src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team3.png" alt="                                Jr. Adam Smith                             " class="img-fluid">

                                                        <div class="team-content">
                                                            <div class="team-details">
                                                                <h3 class="team-name">
                                                                    Jr. Adam Smith                                                        </h3>
                                                                <p>  Lead Painter </p>
                                                                <span class="team-rating">
                              <i class="fa fa-star"><span>4 </span></i>
                           </span>
                                                            </div>
                                                            <div class="team-text">

                                                                <p>Year Of experience<span>2</span></p>
                                                                <p>Project Done<span>2</span></p>

                                                            </div>
                                                        </div> <!-- Post Body End -->
                                                    </div> <!-- Latest Post End -->







                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-6b0403a elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="6b0403a" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-411e4fc elementor-column elementor-col-25 elementor-top-column" data-id="411e4fc" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-1921637 elementor-widget elementor-widget-autrics-team" data-id="1921637" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">




                                                    <div class="ts-team-classic">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team6.png" alt=" Robert Alexander">
                                                                <ul class="team-social unstyled">

                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-google-plus"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>

                                                                </ul><!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Robert Alexander                        <span>Lead Painter</span>
                                                                </h3>
                                                                <p>Mail - 99977788-2255</p>
                                                                <p>Phone - robert@autrics.com</p>
                                                            </div><!-- Team content end -->
                                                        </div><!-- Team info end -->
                                                    </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-956557b elementor-column elementor-col-25 elementor-top-column" data-id="956557b" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-120dbb8 elementor-widget elementor-widget-autrics-team" data-id="120dbb8" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">




                                                    <div class="ts-team-classic">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team8.png" alt=" Michel Andarson">
                                                                <ul class="team-social unstyled">

                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-google-plus"></i></a></li>

                                                                </ul><!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Michel Andarson                        <span>Lead Painter</span>
                                                                </h3>
                                                                <p>Mail - 99977788-2255</p>
                                                                <p>Phone - robert@autrics.com</p>
                                                            </div><!-- Team content end -->
                                                        </div><!-- Team info end -->
                                                    </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-42c3b1e elementor-column elementor-col-25 elementor-top-column" data-id="42c3b1e" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-7e03ced elementor-widget elementor-widget-autrics-team" data-id="7e03ced" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">




                                                    <div class="ts-team-classic">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team6.png" alt=" Robert Alexander">
                                                                <ul class="team-social unstyled">

                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>


                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>

                                                                </ul><!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Robert Alexander                        <span>Lead Painter</span>
                                                                </h3>
                                                                <p>Mail - 99977788-2255</p>
                                                                <p>Phone - robert@autrics.com</p>
                                                            </div><!-- Team content end -->
                                                        </div><!-- Team info end -->
                                                    </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-7b1c207 elementor-column elementor-col-25 elementor-top-column" data-id="7b1c207" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-49008ca elementor-widget elementor-widget-autrics-team" data-id="49008ca" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">




                                                    <div class="ts-team-classic">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team7.png" alt=" Jhon Wick">
                                                                <ul class="team-social unstyled">

                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>


                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>


                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>


                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>

                                                                </ul><!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Jhon Wick                        <span>Lead Painter</span>
                                                                </h3>
                                                                <p>Mail - 99977788-2255</p>
                                                                <p>Phone - robert@autrics.com</p>
                                                            </div><!-- Team content end -->
                                                        </div><!-- Team info end -->
                                                    </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-ddfdfc1 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="ddfdfc1" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-d0e4a03 elementor-column elementor-col-25 elementor-top-column" data-id="d0e4a03" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-523f0cb elementor-widget elementor-widget-autrics-team" data-id="523f0cb" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">





                                                    <div class="ts-team-standard">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team9.png" alt=" Robert Alexander">
                                                                <ul class="team-social unstyled">
                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-google-plus"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>
                                                                </ul>
                                                                <!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Robert Alexander               </h3>
                                                            </div>
                                                            <!-- Team content end -->
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-aacd8a5 elementor-column elementor-col-25 elementor-top-column" data-id="aacd8a5" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-7167951 elementor-widget elementor-widget-autrics-team" data-id="7167951" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">





                                                    <div class="ts-team-standard">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team10.png" alt=" Michel Andarson">
                                                                <ul class="team-social unstyled">
                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-google-plus"></i></a></li>
                                                                </ul>
                                                                <!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Michel Andarson               </h3>
                                                            </div>
                                                            <!-- Team content end -->
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-806e2ab elementor-column elementor-col-25 elementor-top-column" data-id="806e2ab" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-18a5b5d elementor-widget elementor-widget-autrics-team" data-id="18a5b5d" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">





                                                    <div class="ts-team-standard">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team11.png" alt=" Robert Alexander">
                                                                <ul class="team-social unstyled">
                                                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-linkedin"></i></a></li>
                                                                </ul>
                                                                <!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Robert Alexander               </h3>
                                                            </div>
                                                            <!-- Team content end -->
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-d3170e9 elementor-column elementor-col-25 elementor-top-column" data-id="d3170e9" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-fec07a6 elementor-widget elementor-widget-autrics-team" data-id="fec07a6" data-element_type="widget" data-widget_type="autrics-team.default">
                                                <div class="elementor-widget-container">





                                                    <div class="ts-team-standard">
                                                        <div class="ts-team-info">
                                                            <div class="team-img">
                                                                <img class="img-fluid" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/team9.png" alt=" Jhon Wick">
                                                                <ul class="team-social unstyled">
                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                                                </ul>
                                                                <!-- Team social end -->
                                                            </div>
                                                            <div class="team-content">
                                                                <h3 class="team-name">
                                                                    Jhon Wick               </h3>
                                                            </div>
                                                            <!-- Team content end -->
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
                    <section class="elementor-element elementor-element-5132359 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="5132359" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-81600ed elementor-column elementor-col-100 elementor-top-column" data-id="81600ed" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-6b86654 elementor-widget elementor-widget-autrics-title" data-id="6b86654" data-element_type="widget" data-widget_type="autrics-title.default">
                                                <div class="elementor-widget-container">
                                                    <div class="title-section-area">
                                                        <h2 class="section-title">
                                                            <span>Our </span>Skills        </h2>
                                                    </div><!-- Section title -->


                                                </div>
                                            </div>
                                            <section class="elementor-element elementor-element-a4a6a33 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section" data-id="a4a6a33" data-element_type="section">
                                                <div class="elementor-container elementor-column-gap-default">
                                                    <div class="elementor-row">
                                                        <div class="elementor-element elementor-element-1a6e188 elementor-column elementor-col-50 elementor-inner-column" data-id="1a6e188" data-element_type="column">
                                                            <div class="elementor-column-wrap  elementor-element-populated">
                                                                <div class="elementor-widget-wrap">
                                                                    <div class="elementor-element elementor-element-5e837e0 elementor-widget elementor-widget-text-editor" data-id="5e837e0" data-element_type="widget" data-widget_type="text-editor.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-text-editor elementor-clearfix"><p>A wonderful serenity taken possession into entire soul like to these sweet mornings of spring which thing of existence this spot which was the main part</p></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-9da9398 elementor-widget elementor-widget-progress" data-id="9da9398" data-element_type="widget" data-widget_type="progress.default">
                                                                        <div class="elementor-widget-container">
                                                                            <span class="elementor-title">Wheel Servicing</span>

                                                                            <div class="elementor-progress-wrapper" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="80" aria-valuetext="">
                                                                                <div class="elementor-progress-bar" data-max="80">
                                                                                    <span class="elementor-progress-text"></span>
                                                                                    <span class="elementor-progress-percentage">80%</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-1b2544e elementor-widget elementor-widget-progress" data-id="1b2544e" data-element_type="widget" data-widget_type="progress.default">
                                                                        <div class="elementor-widget-container">
                                                                            <span class="elementor-title">Engine Diagnostics</span>

                                                                            <div class="elementor-progress-wrapper" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="70" aria-valuetext="">
                                                                                <div class="elementor-progress-bar" data-max="70">
                                                                                    <span class="elementor-progress-text"></span>
                                                                                    <span class="elementor-progress-percentage">70%</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-f935012 elementor-widget elementor-widget-progress" data-id="f935012" data-element_type="widget" data-widget_type="progress.default">
                                                                        <div class="elementor-widget-container">
                                                                            <span class="elementor-title">Air Conditioning</span>

                                                                            <div class="elementor-progress-wrapper" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="90" aria-valuetext="">
                                                                                <div class="elementor-progress-bar" data-max="90">
                                                                                    <span class="elementor-progress-text"></span>
                                                                                    <span class="elementor-progress-percentage">90%</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-16d5fee elementor-align-left btn btn-primary elementor-widget__width-auto elementor-widget elementor-widget-button" data-id="16d5fee" data-element_type="widget" data-widget_type="button.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-button-wrapper">
                                                                                <a href="#" class="elementor-button-link elementor-button elementor-size-sm" role="button">
            <span class="elementor-button-content-wrapper">
            <span class="elementor-button-text">Get Appointment</span>
    </span>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="elementor-element elementor-element-5b0949c elementor-column elementor-col-50 elementor-inner-column" data-id="5b0949c" data-element_type="column">
                                                            <div class="elementor-column-wrap  elementor-element-populated">
                                                                <div class="elementor-widget-wrap">
                                                                    <div class="elementor-element elementor-element-ced0972 elementor-aspect-ratio-219 elementor-widget elementor-widget-video" data-id="ced0972" data-element_type="widget" data-settings="{&quot;lightbox&quot;:&quot;yes&quot;,&quot;aspect_ratio&quot;:&quot;219&quot;}" data-widget_type="video.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-wrapper elementor-open-lightbox">
                                                                                <div class="elementor-custom-embed-image-overlay" data-elementor-open-lightbox="yes" data-elementor-lightbox="{&quot;type&quot;:&quot;video&quot;,&quot;videoType&quot;:&quot;youtube&quot;,&quot;url&quot;:&quot;https:\/\/www.youtube.com\/embed\/0O2aH4XLbto?feature=oembed&amp;start&amp;end&amp;wmode=opaque&amp;loop=0&amp;controls=1&amp;mute=0&amp;rel=1&amp;modestbranding=0&quot;,&quot;modalOptions&quot;:{&quot;id&quot;:&quot;elementor-lightbox-ced0972&quot;,&quot;entranceAnimation&quot;:&quot;&quot;,&quot;entranceAnimation_tablet&quot;:&quot;&quot;,&quot;entranceAnimation_mobile&quot;:&quot;&quot;,&quot;videoAspectRatio&quot;:&quot;219&quot;}}">
                                                                                    <img src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/elementor/thumbs/skill-video-img-o3i1tyxca80fb4e3vxn2ch2rbfpt8svr4wyl58hwvg.jpg" title="skill-video-img" alt="skill-video-img" />                               <div class="elementor-custom-embed-play" role="button">
                                                                                    <i class="fa fa-play-circle"></i>
                                                                                    <span class="elementor-screen-only">Play Video</span>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-2ee2145 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="2ee2145" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-d103d99 elementor-column elementor-col-100 elementor-top-column" data-id="d103d99" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-17827fe elementor-widget elementor-widget-image-carousel" data-id="17827fe" data-element_type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;5&quot;,&quot;slides_to_scroll&quot;:&quot;5&quot;,&quot;navigation&quot;:&quot;none&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;direction&quot;:&quot;ltr&quot;}" data-widget_type="image-carousel.default">
                                                <div class="elementor-widget-container">
                                                    <div class="elementor-image-carousel-wrapper elementor-slick-slider" dir="ltr">
                                                        <div class="elementor-image-carousel">
                                                            <div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img5.png" alt="client-img5" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img4.png" alt="client-img4" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img3.png" alt="client-img3" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img1-1.png" alt="client-img1" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img2.png" alt="client-img2" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/client-img1.png" alt="client-img1" /></figure></div>      </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-ae6e500 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="ae6e500" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-977d055 elementor-column elementor-col-100 elementor-top-column" data-id="977d055" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-3adce00 elementor-widget elementor-widget-autrics-process" data-id="3adce00" data-element_type="widget" data-widget_type="autrics-process.default">
                                                <div class="elementor-widget-container">


                                                    <div class="row footer-top">
                                                        <div class="col-md-4 footer-box">
                                                            <i class="icon icon-map-marker1"></i>
                                                            <div class="footer-box-content">
                                                                <h3>Birmingham, Alaska</h3>
                                                                <p>1014 Retreat Avenue</p>
                                                            </div>
                                                            <span class="angle-shap"></span>
                                                        </div><!-- Box 1 end-->
                                                        <div class="col-md-4 footer-box">
                                                            <i class="icon icon-phone1"></i>
                                                            <div class="footer-box-content">
                                                                <h3>+(91) 458 654 528</h3>
                                                                <p>Give us a call</p>
                                                            </div>
                                                            <span class="angle-shap"></span>

                                                        </div><!-- Box 1 end-->
                                                        <div class="col-md-4 footer-box">
                                                            <i class="icon icon-envelope1"></i>
                                                            <div class="footer-box-content">
                                                                <h3>info@domain.com</h3>
                                                                <p>24/7 online support</p>
                                                            </div>
                                                        </div><!-- Box 1 end-->
                                                    </div><!-- Content row end-->


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div> <!-- end main-content -->
</div> <!-- end main-content -->

<footer style='padding-top:0px' class="footer" id="footer">

    <div class="footer-main" style='background:#06163a' >
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 footer-widget footer-about">

                    <div id="media_image-2" class="widget widget_media_image"><a href="#"><img width="217" height="68" src="images/logo2.png" class="image wp-image-1569  attachment-full size-full" alt="" style="max-width: 100%; height: auto;" /></a></div><div id="text-2" class="widget widget_text">     <div class="textwidget"><p>A wonderful serenity taken possession into entire soul like to these sweet of tence this spot which was the main part created the bliss often souls like mine.</p>
                </div>
                </div><div id="xs-social-5" class="widget automobil-widget">    <div class="footer-social">
                    <ul class="unstyled xs-social-list xs-social-list-v6 automobil-social-list ">

                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>

                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>

                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>

                        <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>





                    </ul>
                </div><!-- Footer social end -->

                </div>                        </div> <!-- Col End -->
                <!-- About us end-->
                <div class="col-lg-3 col-md-6 footer-widget widget-service">
                    <div id="nav_menu-2" class="footer-area-2 widget_nav_menu"><h4 class="widget-title"><span>Our</span> Services</h4><div class="menu-service-container"><ul id="menu-service" class="menu"><li id="menu-item-1594" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1594"><a href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">Performance Upgrades</a></li>
                        <li id="menu-item-1595" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1595"><a href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">Computer Diagnostics</a></li>
                        <li id="menu-item-1596" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1596"><a href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">Anti-Lock Brake Service</a></li>
                        <li id="menu-item-1597" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1597"><a href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">Air Conditioning Evac</a></li>
                        <li id="menu-item-1598" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1598"><a href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">Lube, vehicles damaged just</a></li>
                        <li id="menu-item-1599" class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599"><a href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">Engine Diagnostics Entire</a></li>
                    </ul></div></div>                        </div> <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget news-widget">
                    <div id="recent-posts-3" class="footer-area-3 widget_recent_entries">   <h4 class="widget-title"><span>Latest</span> News</h4>    <ul>
                        <li>
                            <a href="http://demo.themewinter.com/wp/autrics/2019/01/11/bmw-vs-austin-martin-going-higher-2/">20th car looking smarter</a>
                            <span class="post-date">January 11, 2019</span>
                        </li>
                        <li>
                            <a href="http://demo.themewinter.com/wp/autrics/2018/10/11/bmw-vs-austin-martin-going-higher/">Repaired Unlocking Being</a>
                            <span class="post-date">October 11, 2018</span>
                        </li>
                        <li>
                            <a href="http://demo.themewinter.com/wp/autrics/2017/07/11/bmw-vs-austin-going-higher/">Crazy  Your Auto Repair</a>
                            <span class="post-date">July 11, 2017</span>
                        </li>
                    </ul>
                    </div>                        </div> <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget">
                    <div id="xs-service-3" class="widget automobil-widget"><h4 class="widget-title"><span>Service </span> Hours</h4>
                        <ul class="unstyled service-time">
                            <li>
                                <span>Monday</span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span>Tuesday</span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span>Wednesday</span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span>Thursday</span>
                                <span>7.00 - 16.30</span>
                            </li>

                            <li>
                                <span>Saturday</span>
                                <span>7.00 - 16.30</span>
                            </li>

                            <li>
                                <span>Sunday</span>
                                <span>7.00 - 16.30</span>
                            </li>


                        </ul> <!-- Service Time -->


                    </div>                        </div> <!-- Col End -->
            </div><!-- Content row end-->
        </div><!-- Container end-->
    </div><!-- Footer Main-->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="copyright-info">
                        <span style=&#039;background:#2f3967&#039; >Copyright &copy; 2019 Autrics. All Rights Reserved.</span>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="footer-menu">
                        <div class="menu-footer-menu-container"><ul id="menu-footer-menu" class="nav unstyled"><li id="menu-item-84" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-35 current_page_item menu-item-84"><a href="index.html" aria-current="page">Home</a></li>
                            <li id="menu-item-85" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-85"><a href="#">Terms</a></li>
                            <li id="menu-item-86" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-86"><a href="#">Privacy Policy</a></li>
                            <li id="menu-item-83" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-83"><a href="contact.html">Contact</a></li>
                        </ul></div>
                    </div> <!-- Footer menu end -->

                </div> <!-- Col End -->

            </div><!-- Row end-->

        </div><!-- Container end-->
        <div class="back-to-top" id="back-to-top" data-spy="affix" data-offset-top="10" style="display: block;">
            <button class="back-btn" title="Back to Top">
                <i class="fa fa-angle-double-up"></i><!-- icon end-->
            </button><!-- button end-->
        </div><!-- Back to top -->
    </div><!-- Copyright end-->
</footer> <!-- Footer End -->

<script>(function() {function addEventListener(element,event,handler) {
    if(element.addEventListener) {
        element.addEventListener(event,handler, false);
    } else if(element.attachEvent){
        element.attachEvent('on'+event,handler);
    }
}function maybePrefixUrlField() {
    if(this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
        this.value = "http://" + this.value;
    }
}

    var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
    if( urlFields && urlFields.length > 0 ) {
        for( var j=0; j < urlFields.length; j++ ) {
            addEventListener(urlFields[j],'blur',maybePrefixUrlField);
        }
    }/* test if browser supports date fields */
    var testInput = document.createElement('input');
    testInput.setAttribute('type', 'date');
    if( testInput.type !== 'date') {

        /* add placeholder & pattern to all date fields */
        var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
        for(var i=0; i<dateFields.length; i++) {
            if(!dateFields[i].placeholder) {
                dateFields[i].placeholder = 'YYYY-MM-DD';
            }
            if(!dateFields[i].pattern) {
                dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
            }
        }
    }

})();</script>  <script type="text/javascript">
    var c = document.body.className;
    c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
    document.body.className = c;
</script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wpcf7 = {"apiSettings":{"root":"http:\/\/demo.themewinter.com\/wp\/autrics\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"cached":"1"};
    /* ]]> */
</script>
<script data-minify="1" type='text/javascript' src='js/scripts-0c7eb015bcae9e064bd1f0f89c150eb9.js'></script>
<script type='text/javascript' src='js/jquery.blockUI.min-2.70.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_add_to_cart_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/demo.themewinter.com\/wp\/autrics\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
    /* ]]> */
</script>
<script type='text/javascript' src='js/add-to-cart.min-3.6.2.js'></script>
<script type='text/javascript' src='js/js.cookie.min-2.1.4.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var woocommerce_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%"};
    /* ]]> */
</script>
<script type='text/javascript' src='js/woocommerce.min-3.6.2.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_cart_fragments_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_bead31f80244b1047206122c16ba04fe","fragment_name":"wc_fragments_bead31f80244b1047206122c16ba04fe","request_timeout":"5000"};
    /* ]]> */
</script>
<script type='text/javascript' src='js/cart-fragments.min-3.6.2.js'></script>
<script type='text/javascript'>
    jQuery( 'body' ).bind( 'wc_fragments_refreshed', function() {
        jQuery( 'body' ).trigger( 'jetpack-lazy-images-load' );
    } );

</script>
<script type='text/javascript' src='js/bootstrap.min-1565178511.js'></script>
<script type='text/javascript' src='js/popper.min-1565178511.js'></script>
<script type='text/javascript' src='js/jquery.magnific-popup.min-1565178511.js'></script>
<script type='text/javascript' src='js/owl-carousel.2.3.0.min-1565178511.js'></script>
<script type='text/javascript' src='js/select2.full.min-1565178511.js'></script>
<script data-minify="1" type='text/javascript' src='js/script-604da3964c0c3ad981f4d9c90ee8928f.js'></script>
<script type='text/javascript' src='js/wp-embed.min.js'></script>
<script type='text/javascript' src='js/slick.min-1.8.1.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var mc4wp_forms_config = [];
    /* ]]> */
</script>
<script type='text/javascript' src='js/forms-api.min-4.5.0.js'></script>
<!--[if lte IE 9]>
<script type='text/javascript' src='http://demo.themewinter.com/wp/autrics/wp-content/plugins/mailchimp-for-wp/assets/js/third-party/placeholders.min.js?ver=4.5.0'></script>
<![endif]-->
<script type='text/javascript' src='js/frontend-modules.min-2.5.14.js'></script>
<script type='text/javascript' src='js/position.min-1.11.4.js'></script>
<script type='text/javascript' src='js/dialog.min-4.7.1.js'></script>
<script type='text/javascript' src='js/waypoints.min-4.0.2.js'></script>
<script type='text/javascript' src='js/swiper.min-4.4.6.js'></script>
<script type='text/javascript'>
    var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":false},"is_rtl":false,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"version":"2.5.14","urls":{"assets":"http:\/\/demo.themewinter.com\/wp\/autrics\/wp-content\/plugins\/elementor\/assets\/"},"settings":{"page":[],"general":{"elementor_global_image_lightbox":"yes","elementor_enable_lightbox_in_editor":"yes"}},"post":{"id":35,"title":"Home one","excerpt":""}};
</script>
<script type='text/javascript' src='js/frontend.min-2.5.14.js'></script>
<script data-minify="1" type='text/javascript' src='js/elementor-f0fdc903fdd1ae6bf53d4e86eeaeee01.js'></script>

</body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1565178512 -->