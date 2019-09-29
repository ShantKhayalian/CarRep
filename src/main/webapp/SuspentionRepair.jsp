<%@ page language="java" contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
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
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Dosis%3A700%2C100%2C900%7CDosis%3A400%2C500%2C600%2C700%2C700i%7CRoboto%3A400%2C500%2C700%7CDosis%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&subset="/>

    <link rel='dns-prefetch' href='//fonts.googleapis.com'/>
    <link rel="alternate" type="application/rss+xml"
          title="Car Repair Services and Auto Mechanic WordPress Theme &raquo; Feed" href="xml/feed.xml"/>
    <link rel="alternate" type="application/rss+xml"
          title="Car Repair Services and Auto Mechanic WordPress Theme &raquo; Comments Feed" href="xml/comm_feed.xml"/>
    <style type="text/css">
        @font-face {
            font-family: iconfont;
            src: url(fonts/iconfont.ttf);
        }

        @font-face {
            font-family: FontAwesome;
            src: url(fonts/fontawesome-webfont.woff2);
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
    <link rel='stylesheet' id='wp-block-library-css' href='css/style.min.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='wc-block-style-css' href='css/style-42cb074388d96fb46ed4fe9c68be84ae.css'
          type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='contact-form-7-css'
          href='css/styles-0125cd48cb133cd2948f228e85897658.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='woocommerce-layout-css'
          href='css/woocommerce-layout-6a896327bcac2f64d780227a9966933b.css' type='text/css' media='all'/>
    <style id='woocommerce-layout-inline-css' type='text/css'>

        .infinite-scroll .woocommerce-pagination {
            display: none;
        }
    </style>
    <link rel='stylesheet' id='woocommerce-smallscreen-css' href='css/woocommerce-smallscreen-3.6.2.css' type='text/css'
          media='only screen and (max-width: 768px)'/>
    <link data-minify="1" rel='stylesheet' id='woocommerce-general-css'
          href='css/woocommerce-b0df6da74f8ecf9c16c58dc3248fe83e.css' type='text/css' media='all'/>
    <style id='woocommerce-inline-inline-css' type='text/css'>
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
    <link rel='stylesheet' id='elementor-icons-css' href='css/elementor-icons.min-4.3.0.css' type='text/css'
          media='all'/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel='stylesheet' id='elementor-animations-css' href='css/animations.min-2.5.14.css' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='elementor-frontend-css' href='css/frontend.min-2.5.14.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='elementor-global-css'
          href='css/global-a918dcb9e5542576ba68295bf91303aa.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='elementor-post-19-css'
          href='http://demo.themewinter.com/wp/autrics/wp-content/cache/min/1/wp/autrics/wp-content/uploads/elementor/css/post-19-0f55c2f3f594349d08aa6d8d3b4ed638.css'
          type='text/css' media='all'/>

    <link rel='stylesheet' id='bootstrap-css' href='css/bootstrap.min-1565178511.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='icon-font-css' href='css/icofont-750db623c282dd2ef7ddc6508b49c5ca.css'
          type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='magnific-popup-css'
          href='css/magnific-popup-cfc2f6e523355b83402ec0e3efa6b8c8.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='owlcarousel-css' href='css/owlcarousel.min-1565178511.css' type='text/css' media='all'/>
    <link data-minify="1" rel='stylesheet' id='woocommerce-css'
          href='css/woocommerce-b4ac410a7586aa9b86480c0735dcaaea.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='select2-full-style-css' href='css/select2.min-1565178511.css' type='text/css'
          media='all'/>
    <link data-minify="1" rel='stylesheet' id='autrics-style-css' href='css/master-9eee1f69df4f3a5040f29269fae552cc.css'
          type='text/css' media='all'/>
    <style id='autrics-style-inline-css' type='text/css'>

        body {
            font-family: "Roboto";
            font-size: 16px;
            font-weight: regular;
        }

        h1, h2 {
            font-family: "Dosis";
            font-size: 36px;
            font-weight: 700;
        }

        h3, h4 {
            font-family: "Dosis";
            font-size: 16px;
            font-weight: 700;
        }

        body {
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
        .woocommerce ul.products li.product .button, .woocommerce ul.products li.product .added_to_cart,
        .woocommerce nav.woocommerce-pagination ul li a:focus, .woocommerce nav.woocommerce-pagination ul li a:hover, .woocommerce nav.woocommerce-pagination ul li span.current,
        .woocommerce #respond input#submit.alt, .woocommerce a.button.alt, .woocommerce button.button.alt, .woocommerce input.button.alt, .sponsor-web-link a:hover i, .woocommerce .widget_price_filter .ui-slider .ui-slider-range,
        .woocommerce span.onsale {
            background-color: #ee3131;
        }

        .ts-slider-area.owl-carousel .owl-nav button:hover {
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
        .ts-header-transparent .navbar-light .navbar-nav .active > .nav-link,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link.active,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link:hover:before,
        .ts-header-transparent .navbar-light .navbar-nav .nav-link.show,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .active > .nav-link,
        .ts-header-standard .ts-logo-area .navbar-light .navbar-nav .nav-link.active
        .ts-header-transparent .navbar-light .navbar-nav .show > .nav-link,
        .post-content .post-footer .readmore:hover,
        .post-navigation span:hover, .post-navigation h3:hover,
        .woocommerce ul.products li.product .price,
        .woocommerce ul.products li.product .woocommerce-loop-product__title:hover {
            color: #ee3131;
        }

        .ts-latest-post .post-body .post-date:before,
        .ts-latest-post:hover .post-body .post-date:before {
            border-top-color: #ee3131;
        }

        .ts-latest-post:hover .post-body .readmore i,
        .ts-header-classic .header-angle .ts-navbar,
        .ts-service-wrapper:hover .readmore i,
        .readmore i,
        .footer-main .footer-social ul li a:hover {
            border-color: #ee3131;
        }

        .header-angle:before,
        .ts-header-classic .header-angle .navbar-light:before {
            border-right-color: #ee3131;
        }

        .ts-team-standard .ts-team-info .team-content .team-name:before,
        .ts-pricing-table-standard .plan.plan-highlight .plan-price:after {
            border-top-color: #ee3131;
        }

        .ts-tab.nav-tabs .nav-link.active:after {
            border-left-color: #ee3131;
        }

        .copyright {
            background: #2f3967;
        }

        .ts-team-standard .ts-team-info:hover .team-content .team-name {
            color: #fff;
        }

        /* -- secondary color-- */
        .ts-top-bar:before,
        .top-bar-angle:after,
        .ts-top-bar-2.classic,
        .button-normal .btn:hover,
        .woocommerce ul.products li.product .added_to_cart:hover, .woocommerce #respond input#submit.alt:hover, .woocommerce a.button.alt:hover, .woocommerce button.button.alt:hover, .woocommerce input.button.alt:hover, .woocommerce .widget_price_filter .ui-slider .ui-slider-handle {
            background-color: #2f3967;
        }

        .feature-single .feature-icon,
        .woocommerce ul.products li.product .woocommerce-loop-product__title {
            color: #2f3967;
        }

        .top-bar-angle:before {
            border-right-color: #2f3967;
            border-left-color: #2f3967;
        }

        .btn:after {
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(238, 49, 49)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }

        .btn:hover:after {
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(47, 57, 103)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }

        .btn-after:after {
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(238, 49, 49)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }

        .btn-after:hover:after {
            background: url('data:image/svg+xml;utf8,<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 50" preserveAspectRatio="none"><g><polygon fill-rule="evenodd" clip-rule="evenodd" fill="rgb(47, 57, 103)" points="0,0 0,50 166,50 180,37 180,0"/></g></svg>') no-repeat;
        }

        .footer {
            background: #06163a;
            padding-top: 0px;
        }

        .copyright {
            background: #2f3967;
        }

    </style>

    <script type='text/javascript' src='js/jquery-1.12.4.js'></script>
    <script type='text/javascript' src='js/jquery-migrate.min-1.4.1.js'></script>
    <link rel='https://api.w.org/' href='js/api.json'/>
    <link rel="EditURI" type="application/rsd+xml" title="RSD"
          href="http://demo.themewinter.com/wp/autrics/xmlrpc.php?rsd"/>
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="xml/wlwmanifest.xml"/>
    <meta name="generator" content="WordPress 5.1.1"/>
    <meta name="generator" content="WooCommerce 3.6.2"/>
    <link rel="canonical" href="http://demo.themewinter.com/wp/autrics/"/>
    <link rel='shortlink' href='http://demo.themewinter.com/wp/autrics/'/>
    <link rel="alternate" type="application/json+oembed" href="js/embed.json"/>
    <link rel="alternate" type="text/xml+oembed" href="xml/embed.xml"/>
    <noscript>
        <style>.woocommerce-product-gallery {
            opacity: 1 !important;
        }</style>
    </noscript>
    <style type="text/css" id="wp-custom-css">
        @media (max-width: 1199px) {
            .home-featured-slider .slider-items {
                background-position: 75% 0 !important;
            }

            .about-autrics-img .elementor-background-overlay {
                background-image: none !important;
            }

            .ts-latest-post .post-body .post-date:before {
                display: none;
            }

            .ts-latest-post .post-body .post-date {
                height: 65px;
            }
        }

        .sidebar-woo .unstyled.service-time li {
            color: #232323;
        }

        .navbar-fixed.sticky .sticky-logo .d-none img {
            max-width: 150px;
        }

        .btn:after,
        .btn-after:after,
        .wpcf7-submit.btn:after {
            background-size: cover !important;
            background-repeat: no-repeat !important;
            background-position: center center !important;
        }

        .ts-intro-wrapper {
            z-index: 0;
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

<body class="home page-template page-template-template page-template-homepage-template page-template-templatehomepage-template-php page page-id-35 woocommerce-no-js  elementor-default elementor-page elementor-page-35">
<fmt:setLocale value="${requestScope.PageLanguage}"/>

<fmt:setBundle
        basename="com.ithome.web.start.Resources.Resources.Content"
        var="Bundles"/>
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
                                <p class="info-title"><fmt:message key="Call us" bundle="${Bundles}"/></p>
                                <p class="info-subtitle">+91 458 654 528</p>
                            </div>
                        </li> <!-- li End -->

                        <li>
                            <span><i class="icon icon-envelope1"></i></span>
                            <div class="info-wrapper">
                                <p class="info-title"><fmt:message key="Send us mail" bundle="${Bundles}"/></p>
                                <p class="info-subtitle">query@finances.com</p>
                            </div>
                        </li> <!-- Li End -->


                        <li>
                            <a href="#" class="btn btn-primary"><fmt:message key="Contact us" bundle="${Bundles}"/></a>
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
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button><!-- End of Navbar toggler -->
                <div class="sticky-logo">
                    <a class="ts-logo d-none" href="http://demo.themewinter.com/wp/autrics/" class="ts-logo">
                        <img src="images/logo-white-.png" alt="Car Repair Services and Auto Mechanic WordPress Theme">
                    </a>
                </div>
                <div class="collapse navbar-collapse justify-content-end ts-navbar" id="navbarSupportedContent">

                    <div id="primary-nav" class="menu-main-menu-container">
                        <ul id="main-menu" class="navbar-nav">
                            <li id="menu-item-52"
                                class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children  menu-item-52 nav-item dropdown">
                                <a href="App" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"> <fmt:message key="Home" bundle="${Bundles}"/></a>
                            </li>
                            <li
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"><fmt:message key="About"
                                                                       bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-60"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                        <a href="About?PageLanguage=${requestScope.PageLanguage}"
                                           class=" dropdown-item"><fmt:message key="About us"
                                                                               bundle="${Bundles}"/></a>
                                    <li id="menu-item-59"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                        <a href="OurTeam?PageLanguage=${requestScope.PageLanguage}"
                                           class=" dropdown-item"><fmt:message key="Our Team"
                                                                               bundle="${Bundles}"/></a>
                                    <li id="menu-item-58"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                        <%--<a href="gallery.html" class=" dropdown-item"><fmt:message
                                                key="Gallery" bundle="${Bundles}"/></a> --%><%--         <li id="menu-item-62" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                                 <a href="faq.html" class=" dropdown-item"><fmt:message key="FAQ" bundle="${Bundles}"/></a>
                                                 <li id="menu-item-1691" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                                 <a href="testimonial.html" class=" dropdown-item"><fmt:message key="Testimonial" bundle="${Bundles}"/></a>
                                                 <li id="menu-item-1692" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                                 <a href="pricing-table.html" class=" dropdown-item"><fmt:message key="Pricing" bundle="${Bundles}"/></a></ul>--%>
                                    </li>
                                </ul>
                                <!-- ////////////////////////////////////////////////////////////////////////////////////1 th End -->
                            <li
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-75 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"><fmt:message key="Services" bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-77"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-77 nav-item">
                                        <a
                                                href="OilFilterChangeC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Oil and filter change" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="ReplacementPadsBrakeDiscsC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Replacement of pads and brake discs"
                                                bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="SuspensionRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Suspension repair" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="EngineDiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Engine diagnostics and repair" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="DiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Diagnostics and repair" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="ComputerDiagnostics?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Computer diagnostics" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a href="ChangeРМC?PageLanguage=${requestScope.PageLanguage}"
                                           class=" dropdown-item"><fmt:message key="Change Timing"
                                                                               bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="RepairMaintenanceConditionersC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Repair and maintenance of air conditioners"
                                                bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="GatheringCollapseC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="3D gathering-collapse" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1708"
                                        class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                        <a
                                                href="ElectricianC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Electrician"
                                                                                    bundle="${Bundles}"/></a>

                                    </li>
                                </ul>
                                <!-- ////////////////////////////////////////////////////////////////////////////////////1 th End -->
                                <!-- ////////////////////////////////////////////////////////////////////////////////////2 th End -->
                            <li
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"><fmt:message key="Body repair"
                                                                       bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-601"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                        <a
                                                href="TinPaintingWork?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Tin painting work" bundle="${Bundles}"/></a>
                                    <li id="menu-item-591"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                        <a
                                                href="CarBodyPaintingC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Car body painting" bundle="${Bundles}"/></a>
                                    <li id="menu-item-581"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                        <a
                                                href="BodyPolishingC?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Body polishing"
                                                                                    bundle="${Bundles}"/></a>
                                    <li id="menu-item-621"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                        <a
                                                href="DentRemovalWithoutPainting?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Dent removal without painting" bundle="${Bundles}"/></a>
                                    <li id="menu-item-16911"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                        <a
                                                href="BodyGeometryRestoration?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Body geometry restoration" bundle="${Bundles}"/></a>
                                    <li id="menu-item-16912"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                        <a
                                                href="WeldingWork?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Welding work"
                                                                                    bundle="${Bundles}"/></a>
                                    <li id="menu-item-16913"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                        <a
                                                href="LocalDentRemoval?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Local dent removal" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1696"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                        <a
                                                href="WindowsReplacement?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Windows replacement" bundle="${Bundles}"/></a>
                                    </li>
                                </ul>

                                <!-- ////////////////////////////////////////////////////////////////////////////////////2 th End -->
                                <!-- ////////////////////////////////////////////////////////////////////////////////////3 th start -->
                            <li
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"><fmt:message key="Detailing"
                                                                       bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-601"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                        <a
                                                href="CarWrapping?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Car wrapping"
                                                                                    bundle="${Bundles}"/></a>
                                    <li id="menu-item-591"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                        <a
                                                href="Tinting?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Tinting"
                                                                                    bundle="${Bundles}"/></a>
                                    <li id="menu-item-581"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                        <a
                                                href="CeramicS?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Ceramic coating"
                                                                                    bundle="${Bundles}"/></a>
                                    <li id="menu-item-62"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                        <a
                                                href="SounDis?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Sound insulation and vibration isolation"
                                                bundle="${Bundles}"/></a>
                                    <li id="menu-item-1691"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                        <a
                                                href="PreSal?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Pre-sale preparation" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1697"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                        <a
                                                href="DiskRes?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message
                                                key="Disk restoration" bundle="${Bundles}"/></a>
                                    <li id="menu-item-1692"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                        <a
                                                href="BodyKi?PageLanguage=${requestScope.PageLanguage}"
                                                class=" dropdown-item"><fmt:message key="Body kit"
                                                                                    bundle="${Bundles}"/></a>

                                    </li>
                                </ul>
                                <!-- ////////////////////////////////////////////////////////////////////////////////////3 th End -->
                            <li
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2080 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"
                                   data-toggle="dropdown"><fmt:message key="Languages"
                                                                       bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-2081"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2081 nav-item">
                                        <a href="SuspensionRepairC?PageLanguage=en_US" class=" dropdown-item"><fmt:message
                                                key="English" bundle="${Bundles}"/></a>
                                    <li id="menu-item-2082"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2082 nav-item">
                                        <a href="SuspensionRepairC?PageLanguage=ru_RU" class=" dropdown-item"><fmt:message
                                                key="Russian" bundle="${Bundles}"/></a>
                                </ul>
                            </li>

                        </ul>
                        </li>
                        </ul>
                    </div>
                </div>


                </div> <!-- End of navbar collapse -->
                <%--<div class="cart-link">
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
                </div>--%>

            </nav> <!-- End of Nav -->
        </div> <!-- End of Container -->
    </div> <!-- End of Header Angle-->


</header><!-- Header end -->

<div class="banner-area bg-overlay  " id="banner-area" style="background-image:url(images/about_banner-1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-heading">

                    <h1 class="banner-title">
                        Best Services
                    </h1>

                    <ol class="breadcrumb" data-wow-duration="2s">
                        <li><a href="App?PageLanguage=${requestScope.PageLanguage}"><fmt:message key="Home" bundle="${Bundles}"/></a></li>
                        <li><fmt:message key="Service" bundle="${Bundles}"/></li>
                        <li><fmt:message key="Suspension repair" bundle="${Bundles}"/></li>
                    </ol>
                </div><!-- Banner Heading end -->
            </div><!-- Col end-->
        </div><!-- Row end-->
    </div><!-- Container end-->
</div>

<div id="post-19"
     class="home-full-width-content post-19 ts_service type-ts_service status-publish has-post-thumbnail hentry"
     role="main">
    <div class="builder-content">
        <div data-elementor-type="post" data-elementor-id="19" class="elementor elementor-19 elementor-bc-flex-widget"
             data-elementor-settings="[]">
            <div class="elementor-inner">
                <div class="elementor-section-wrap">
                    <section
                            class="elementor-element elementor-element-79ba9481 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                            data-id="79ba9481" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-4b80a05e elementor-column elementor-col-50 elementor-top-column"
                                     data-id="4b80a05e" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-6a12e42f service-menu elementor-widget elementor-widget-wp-widget-nav_menu"
                                                 data-id="6a12e42f" data-element_type="widget"
                                                 data-widget_type="wp-widget-nav_menu.default">
                                                <div class="elementor-widget-container">
                                                    <div class="menu-service-container">
                                                        <ul id="menu-service" class="menu">
                                                            <li id="menu-item-1609"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1594">
                                                                <a
                                                                        href="OilFilterChangeC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Oil and filter change" bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1608"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1595">
                                                                <a
                                                                        href="ReplacementPadsBrakeDiscsC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Replacement brake discs"
                                                                        bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1607"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service current-menu-item menu-item-1596">
                                                                <a
                                                                        href="SuspensionRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                    key="Suspension repair" bundle="${Bundles}"/>
                                                            </li>
                                                            <li id="menu-item-1606"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1597">
                                                                <a
                                                                        href="EngineDiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Engine diagnostics and repair" bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1605"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1598">
                                                                <a
                                                                        href="DiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Diagnostics and repair" bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1604"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                                                <a
                                                                        href="ComputerDiagnostics?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Computer diagnostics" bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1600"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                                                <a href="ChangeРМC?PageLanguage=${requestScope.PageLanguage}"
                                                                   class=" dropdown-item"><fmt:message key="Change Timing"
                                                                                                       bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1601"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                                                <a
                                                                        href="RepairMaintenanceConditionersC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="Repair and maintenance of air conditioners"
                                                                        bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1602"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                                                <a
                                                                        href="GatheringCollapseC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message
                                                                        key="3D gathering-collapse" bundle="${Bundles}"/></a>
                                                            </li>
                                                            <li id="menu-item-1603"
                                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                                                <a
                                                                        href="ElectricianC?PageLanguage=${requestScope.PageLanguage}"
                                                                        class=" dropdown-item"><fmt:message key="Electrician"
                                                                                                            bundle="${Bundles}"/></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="elementor-element elementor-element-26b610c5 elementor-widget elementor-widget-wp-widget-xs-service"
                                                 data-id="26b610c5" data-element_type="widget"
                                                 data-widget_type="wp-widget-xs-service.default">
                                                <div class="elementor-widget-container">
                                                    <h5><span>Service </span> hour</h5>
                                                    <ul class="unstyled service-time">
                                                        <li>
                                                            <span><fmt:message key="Monday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>
                                                        <li>
                                                            <span><fmt:message key="Tuesday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>
                                                        <li>
                                                            <span><fmt:message key="Wednesday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>
                                                        <li>
                                                            <span><fmt:message key="Thursday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>

                                                        <li>
                                                            <span><fmt:message key="Saturday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>

                                                        <li>
                                                            <span><fmt:message key="Sunday" bundle="${Bundles}"/></span>
                                                            <span>7.00 - 16.30</span>
                                                        </li>


                                                    </ul> <!-- Service Time -->


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-2606d89a elementor-column elementor-col-50 elementor-top-column"
                                     data-id="2606d89a" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-1339d6d0 elementor-widget elementor-widget-autrics-title"
                                                 data-id="1339d6d0" data-element_type="widget"
                                                 data-widget_type="autrics-title.default">
                                                <div class="elementor-widget-container">
                                                    <div class="title-section-area">
                                                        <h2 class="section-title">
                                                            <span><fmt:message key="Suspension repair" bundle="${Bundles}"/></span> </h2>
                                                    </div><!-- Section title -->


                                                </div>
                                            </div>



                                            <div class="elementor-element elementor-element-7dc8c679 elementor-widget elementor-widget-text-editor"
                                                 data-id="7dc8c679" data-element_type="widget"
                                                 data-widget_type="text-editor.default">
                                                <div class="elementor-widget-container">
                                                    <div class="elementor-text-editor elementor-clearfix">
                                                        <c:if test="${requestScope.list != null}">
                                                        <c:forEach items="${requestScope.list}" var="list">
                                                        <c:set value="${requestScope.PageLanguage}" var="lang"/>
                                                            <c:choose>
                                                                <c:when test="${lang == 'en_US'}">
                                                                    <p>${list.suspensionRepairEng}</p>
                                                                </c:when>
                                                                <c:when test="${lang == 'ru_RU'}">
                                                                    <p>${list.suspensionRepairRus}</p>
                                                                </c:when>
                                                            </c:choose>

                                                        </c:forEach>
                                                        </c:if>

                                                       </div>
                                                </div>
                                            </div>

                                            <section
                                                    class="elementor-element elementor-element-3e95e95b elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section"
                                                    data-id="3e95e95b" data-element_type="section">
                                                <div class="elementor-container elementor-column-gap-default">
                                                    <div class="elementor-row">
                                                        <div class="elementor-element elementor-element-3976cd5 elementor-column elementor-col-100 elementor-inner-column"
                                                             data-id="3976cd5" data-element_type="column">
                                                            <div class="elementor-column-wrap  elementor-element-populated">
                                                                <div class="elementor-widget-wrap">
                                                                    <div class="elementor-element elementor-element-e9cb765 elementor-widget elementor-widget-image"
                                                                         data-id="e9cb765" data-element_type="widget"
                                                                         data-widget_type="image.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-image">
                                                                                <img width="800" height="215"
                                                                                     src="images/service_img81.jpg"
                                                                                     class="attachment-large size-large"
                                                                                     alt=""
                                                                                     srcset="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/service_img81.jpg 819w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/service_img81-600x161.jpg 600w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/service_img81-300x81.jpg 300w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/service_img81-768x206.jpg 768w"
                                                                                     sizes="(max-width: 800px) 100vw, 800px"/>
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
                </div>
            </div>
        </div>
    </div> <!-- end main-content -->
</div> <!-- end main-content -->

<footer style='padding-top: 0px' class="footer" id="footer">

    <div class="footer-main" style='background: #06163a'>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 footer-widget footer-about">

                    <div id="media_image-2" class="widget widget_media_image">
                        <a href="#"><img width="217" height="68"
                                         src="images/logo2.png"
                                         class="image wp-image-1569  attachment-full size-full" alt=""
                                         style="max-width: 100%; height: auto;"/></a>
                    </div>
                    <div id="text-2" class="widget widget_text">
                        <div class="textwidget">
                            <p>A wonderful serenity taken possession into entire soul
                                like to these sweet of tence this spot which was the main part
                                created the bliss often souls like mine.</p>
                        </div>
                    </div>
                    <div id="xs-social-5" class="widget automobil-widget">
                        <div class="footer-social">
                            <ul
                                    class="unstyled xs-social-list xs-social-list-v6 automobil-social-list ">

                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>

                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>

                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>

                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>


                            </ul>
                        </div>
                        <!-- Footer social end -->

                    </div>
                </div>
                <!-- Col End -->
                <!-- About us end-->
                <div class="col-lg-3 col-md-6 footer-widget widget-service">
                    <div id="nav_menu-2" class="footer-area-2 widget_nav_menu">
                        <h4 class="widget-title">
                            <span>Our</span> Services
                        </h4>
                        <div class="menu-service-container">
                            <ul id="menu-service" class="menu">
                                <li id="menu-item-1594"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1594">
                                    <a
                                            href="DiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}">Performance
                                        Upgrades</a>
                                </li>
                                <li id="menu-item-1595"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1595">
                                    <a
                                            href="ComputerDiagnostics?PageLanguage=${requestScope.PageLanguage}">Computer
                                        Diagnostics</a>
                                </li>
                                <li id="menu-item-1596"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1596">
                                    <a
                                            href="ReplacementPadsBrakeDiscsC?PageLanguage=${requestScope.PageLanguage}">Anti-Lock
                                        Brake Service</a>
                                </li>
                                <li id="menu-item-1597"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1597">
                                    <a
                                            href="RepairMaintenanceConditionersC?PageLanguage=${requestScope.PageLanguage}">Air
                                        Conditioning Evac</a>
                                </li>
                                <li id="menu-item-1598"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1598">
                                    <a
                                            href="TinPaintingWork?PageLanguage=${requestScope.PageLanguage}">Lube,
                                        vehicles damaged just</a>
                                </li>
                                <li id="menu-item-1599"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                    <a
                                            href="EngineDiagnosticsRepairC?PageLanguage=${requestScope.PageLanguage}">Engine
                                        Diagnostics Entire</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget news-widget">
                    <div id="recent-posts-3"
                         class="footer-area-3 widget_recent_entries">
                        <h4 class="widget-title">
                            <span>Latest</span> News
                        </h4>
                        <%-- <ul>
                             <li><a
                                     href="http://demo.themewinter.com/wp/autrics/2019/01/11/bmw-vs-austin-martin-going-higher-2/">20th
                                 car looking smarter</a> <span class="post-date">January 11,
                                         2019</span></li>
                             <li><a
                                     href="http://demo.themewinter.com/wp/autrics/2018/10/11/bmw-vs-austin-martin-going-higher/">Repaired
                                 Unlocking Being</a> <span class="post-date">October 11,
                                         2018</span></li>
                             <li><a
                                     href="http://demo.themewinter.com/wp/autrics/2017/07/11/bmw-vs-austin-going-higher/">Crazy
                                 Your Auto Repair</a> <span class="post-date">July 11, 2017</span>
                             </li>
                         </ul>--%>
                    </div>
                </div>
                <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget">
                    <div id="xs-service-3" class="widget automobil-widget">
                        <h4 class="widget-title">
                            <span>Service </span> Hours
                        </h4>
                        <fmt:setBundle
                                basename="com.ithome.web.start.Resources.Resources.Content"
                                var="Bundles"/>
                        <ul class="unstyled service-time">
                            <li>
                                <span><fmt:message key="Monday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span><fmt:message key="Tuesday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span><fmt:message key="Wednesday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>
                            <li>
                                <span><fmt:message key="Thursday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>

                            <li>
                                <span><fmt:message key="Saturday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>

                            <li>
                                <span><fmt:message key="Sunday" bundle="${Bundles}"/></span>
                                <span>7.00 - 16.30</span>
                            </li>


                        </ul> <!-- Service Time -->


                    </div>
                </div>
                <!-- Col End -->
            </div>
            <!-- Content row end-->
        </div>
        <!-- Container end-->
    </div>
    <!-- Footer Main-->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="copyright-info">
                        <span style="background: #2f3967&amp;#039;"><fmt:message key="Copyright &copy; 2019 Autrics. All Rights Reserved." bundle="${Bundles}"/></span>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="footer-menu">
                        <div class="menu-footer-menu-container">
                            <ul id="menu-footer-menu" class="nav unstyled">
                                <li id="menu-item-84"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-35 current_page_item menu-item-84">
                                    <a href="index.html" aria-current="page"><fmt:message key="Home" bundle="${Bundles}"/></a>
                                </li>
                                <li id="menu-item-85"
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-85"><a
                                        href="Terms?PageLanguage=${requestScope.PageLanguage}"><fmt:message key="Terms" bundle="${Bundles}"/></a></li>
                                <li id="menu-item-86"
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-86"><a
                                        href="Policy?PageLanguage=${requestScope.PageLanguage}"><fmt:message key="Privacy Policy" bundle="${Bundles}"/></a></li>
                                <li id="menu-item-83"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-83"><a
                                        href="ContactUs?PageLanguage=${requestScope.PageLanguage}"><fmt:message key="Contact" bundle="${Bundles}"/></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Footer menu end -->

                </div>
                <!-- Col End -->

            </div>
            <!-- Row end-->

        </div>
        <!-- Container end-->
        <div class="back-to-top" id="back-to-top" data-spy="affix"
             data-offset-top="10" style="display: block;">
            <button class="back-btn" title="Back to Top">
                <i class="fa fa-angle-double-up"></i>
                <!-- icon end-->
            </button>
            <!-- button end-->
        </div>
        <!-- Back to top -->
    </div>
    <!-- Copyright end-->
</footer>

<script>(function () {
    function addEventListener(element, event, handler) {
        if (element.addEventListener) {
            element.addEventListener(event, handler, false);
        } else if (element.attachEvent) {
            element.attachEvent('on' + event, handler);
        }
    }

    function maybePrefixUrlField() {
        if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
            this.value = "http://" + this.value;
        }
    }

    var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
    if (urlFields && urlFields.length > 0) {
        for (var j = 0; j < urlFields.length; j++) {
            addEventListener(urlFields[j], 'blur', maybePrefixUrlField);
        }
    }
    /* test if browser supports date fields */
    var testInput = document.createElement('input');
    testInput.setAttribute('type', 'date');
    if (testInput.type !== 'date') {

        /* add placeholder & pattern to all date fields */
        var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
        for (var i = 0; i < dateFields.length; i++) {
            if (!dateFields[i].placeholder) {
                dateFields[i].placeholder = 'YYYY-MM-DD';
            }
            if (!dateFields[i].pattern) {
                dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
            }
        }
    }

})();</script>
<script type="text/javascript">
    var c = document.body.className;
    c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
    document.body.className = c;
</script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wpcf7 = {
        "apiSettings": {
            "root": "http:\/\/demo.themewinter.com\/wp\/autrics\/wp-json\/contact-form-7\/v1",
            "namespace": "contact-form-7\/v1"
        }, "cached": "1"
    };
    /* ]]> */
</script>
<script data-minify="1" type='text/javascript' src='js/scripts-0c7eb015bcae9e064bd1f0f89c150eb9.js'></script>
<script type='text/javascript' src='js/jquery.blockUI.min-2.70.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_add_to_cart_params = {
        "ajax_url": "\/wp\/autrics\/wp-admin\/admin-ajax.php",
        "wc_ajax_url": "\/wp\/autrics\/?wc-ajax=%%endpoint%%",
        "i18n_view_cart": "View cart",
        "cart_url": "http:\/\/demo.themewinter.com\/wp\/autrics\/cart\/",
        "is_cart": "",
        "cart_redirect_after_add": "no"
    };
    /* ]]> */
</script>
<script type='text/javascript' src='js/add-to-cart.min-3.6.2.js'></script>
<script type='text/javascript' src='js/js.cookie.min-2.1.4.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var woocommerce_params = {
        "ajax_url": "\/wp\/autrics\/wp-admin\/admin-ajax.php",
        "wc_ajax_url": "\/wp\/autrics\/?wc-ajax=%%endpoint%%"
    };
    /* ]]> */
</script>
<script type='text/javascript' src='js/woocommerce.min-3.6.2.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_cart_fragments_params = {
        "ajax_url": "\/wp\/autrics\/wp-admin\/admin-ajax.php",
        "wc_ajax_url": "\/wp\/autrics\/?wc-ajax=%%endpoint%%",
        "cart_hash_key": "wc_cart_hash_bead31f80244b1047206122c16ba04fe",
        "fragment_name": "wc_fragments_bead31f80244b1047206122c16ba04fe",
        "request_timeout": "5000"
    };
    /* ]]> */
</script>
<script type='text/javascript' src='js/cart-fragments.min-3.6.2.js'></script>
<script type='text/javascript'>
    jQuery('body').bind('wc_fragments_refreshed', function () {
        jQuery('body').trigger('jetpack-lazy-images-load');
    });

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
<script type='text/javascript'
        src='http://demo.themewinter.com/wp/autrics/wp-content/plugins/mailchimp-for-wp/assets/js/third-party/placeholders.min.js?ver=4.5.0'></script>
<![endif]-->
<script type='text/javascript' src='js/frontend-modules.min-2.5.14.js'></script>
<script type='text/javascript' src='js/position.min-1.11.4.js'></script>
<script type='text/javascript' src='js/dialog.min-4.7.1.js'></script>
<script type='text/javascript' src='js/waypoints.min-4.0.2.js'></script>
<script type='text/javascript' src='js/swiper.min-4.4.6.js'></script>
<script type='text/javascript'>
    var elementorFrontendConfig = {
        "environmentMode": {"edit": false, "wpPreview": false},
        "is_rtl": false,
        "breakpoints": {"xs": 0, "sm": 480, "md": 768, "lg": 1025, "xl": 1440, "xxl": 1600},
        "version": "2.5.14",
        "urls": {"assets": "http:\/\/demo.themewinter.com\/wp\/autrics\/wp-content\/plugins\/elementor\/assets\/"},
        "settings": {
            "page": [],
            "general": {"elementor_global_image_lightbox": "yes", "elementor_enable_lightbox_in_editor": "yes"}
        },
        "post": {"id": 35, "title": "Home one", "excerpt": ""}
    };
</script>
<script type='text/javascript' src='js/frontend.min-2.5.14.js'></script>
<script data-minify="1" type='text/javascript' src='js/elementor-f0fdc903fdd1ae6bf53d4e86eeaeee01.js'></script>

</body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1565178512 -->