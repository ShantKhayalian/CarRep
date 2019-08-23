<%@ page language="java" contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Car repair</title>
    <jsp:include page="inc/metaAndLinks.jsp"/>

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
<fmt:setLocale value="${requestScope.Pagelanguage}"/>

<fmt:setBundle basename="/CarRep/src/main/java/com/ithome/web/start/Resources" var="Bundles"/>
<div class="ts-top-bar">
    <div class="top-bar-angle">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-4"></div>
                <div class="col-lg-4 col-md-5">
                    <div class="top-bar-event ts-top">
                        <i class="icon icon-clock"></i><span> <fmt:message key="We"
                                                                           bundle="${Bundles}"/>&#039;<fmt:message

                            key="are Open:" bundle="${Bundles}"/><fmt:message
                            key="Mon - Sat" bundle="${Bundles}"/> 8:00 - 18:00</span>



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
                            <a href="ContactUs?PageLanguage=${requestScope.Pagelanguage}"
                               class="btn btn-primary"><fmt:message key="Contact us" bundle="${Bundles}"/></a>
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
                                <a href="App" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                    <fmt:message key="Home" bundle="${Bundles}"/></a>
                            </li>
                            <li id="menu-item-57"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><fmt:message
                                        key="About" bundle="${Bundles}"/></a>
                                <ul class="dropdown-menu">
                                    <li id="menu-item-60"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                        <a href="About?Pagelanguage=${requestScope.Pagelanguage}"
                                           class=" dropdown-item"><fmt:message key="About us" bundle="${Bundles}"/></a>
                                    <li id="menu-item-59"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                        <a href="OurTeam?PageLanguage=${requestScope.Pagelanguage}"
                                           class=" dropdown-item"><fmt:message key="Our Team" bundle="${Bundles}"/></a>
                                    <li id="menu-item-58"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                        <a href="gallery.html" class=" dropdown-item"><fmt:message key="Gallery"
                                                                                                   bundle="${Bundles}"/></a>
                                        <%--         <li id="menu-item-62" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                                 <a href="faq.html" class=" dropdown-item"><fmt:message key="FAQ" bundle="${Bundles}"/></a>
                                                 <li id="menu-item-1691" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                                 <a href="testimonial.html" class=" dropdown-item"><fmt:message key="Testimonial" bundle="${Bundles}"/></a>
                                                 <li id="menu-item-1692" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                                 <a href="pricing-table.html" class=" dropdown-item"><fmt:message key="Pricing" bundle="${Bundles}"/></a></ul>--%>
                                    </li>
                                </ul>
                                    <li id="menu-item-75"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-75 nav-item dropdown">
                                        <a href="services-all.html" class="nav-link dropdown-toggle"
                                           data-toggle="dropdown"><fmt:message key="Services" bundle="${Bundles}"/></a>
                                        <ul class="dropdown-menu">
                                            <li id="menu-item-77"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-77 nav-item">
                                                <a href="•OilFilterChange?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Oil and filter change"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="ReplacementPadsBrakeDiscs?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message
                                                        key="Replacement of pads and brake discs"
                                                        bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="SuspensionRepair?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Suspension repair"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="EngineDiagnosticsRepair?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message
                                                        key="Engine diagnostics and repair" bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="DiagnosticsRepair?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message
                                                        key="Diagnostics and repairАКППCVTDSG" bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="ComputerDiagnostics?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Computer diagnostics"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="ChangeРМ?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Change ГРМ"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="RepairMaintenanceConditioners?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message
                                                        key="Repair and maintenance of air conditioners"
                                                        bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="GatheringCollapse?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="3D gathering-collapse"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1708"
                                                class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                                <a href="Electrician?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Electrician"
                                                                                       bundle="${Bundles}"/></a>

                                        </li>
                                        </ul>
                                    <li id="menu-item-57"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><fmt:message
                                                key="Body repair" bundle="${Bundles}"/></a>
                                        <ul class="dropdown-menu">
                                            <li id="menu-item-60"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                                <a href="TinPaintingWork?Pagelanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Tin painting work"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-59"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                                <a href="CarBodyPainting?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Car body painting"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-58"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                                <a href="BodyPolishing?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Body polishing"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-62"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                                <a href="DentRemovalWithoutPainting?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message
                                                        key="Dent removal without painting" bundle="${Bundles}"/></a>
                                            <li id="menu-item-1691"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                                <a href="BodyGeometryRestoration?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Body geometry restoration"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1692"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                                <a href="WeldingWork?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Welding work"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1692"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                                <a href="LocalDentRemoval?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Local dent removal"
                                                                                       bundle="${Bundles}"/></a>
                                            <li id="menu-item-1692"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                                <a href="WindowsReplacement?PageLanguage=${requestScope.Pagelanguage}"
                                                   class=" dropdown-item"><fmt:message key="Windows replacement"
                                                                                       bundle="${Bundles}"/></a>
                                    </li>
                                        </ul>
                                    <li id="menu-item-2080"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2080 nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><fmt:message
                                                key="Languages" bundle="${Bundles}"/></a>
                                        <ul class="dropdown-menu">
                                            <li id="menu-item-2081"
                                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2081 nav-item">
                                                <a href="App?Pagelanguage=en_US" class=" dropdown-item"><fmt:message
                                                        key="English" bundle="${Bundles}"/></a>
                                            <li id="menu-item-2082"
                                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2082 nav-item">
                                                <a href="App?Pagelanguage=ru_RU" class=" dropdown-item"><fmt:message
                                                        key="Russian" bundle="${Bundles}"/></a>
                                        </ul>
                                    </li>
                                    <li id="menu-item-78"
                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78 nav-item">
                                        <a href="ContactUs?PageLanguage=${requestScope.Pagelanguage}"
                                           class="nav-link"><fmt:message key="Contact"
                                                                         bundle="${Bundles}"/></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div> <!-- End of navbar collapse -->
                <%-- <div class="cart-link">
                     <form action="http://demo.themewinter.com/wp/autrics">
                         <span class="header-search-icon"><i class="icon icon-search show"></i></span>
                         <span class="search-close"><i class="icon icon-cross"></i></span>
                         <div class="search-box">
                             <input type="search" name="s" id="search" placeholder="Type here and Search...">
                         </div>
                     </form>
                 </div>--%>

                <div class="header-cart">
                    <%-- <div class="cart-link">
                         <a class="cart-contents" href="cart.html" title="View your shopping cart">
                             <span class="icon icon-cart"></span>
                             <sup>0</sup>

                         </a>
                     </div>--%>
                </div>

            </nav> <!-- End of Nav -->
        </div> <!-- End of Container -->
    </div> <!-- End of Header Angle-->


</header><!-- Header end -->

<div data-elementor-type="post" data-elementor-id="35" class="elementor elementor-35" data-elementor-settings="[]">
    <div class="elementor-inner">
        <div class="elementor-section-wrap">
            <section
                    class="elementor-element elementor-element-7ea1113 elementor-section-full_width elementor-section-height-min-height home-featured-slider elementor-section-height-default elementor-section-items-middle elementor-section elementor-top-section"
                    data-id="7ea1113" data-element_type="section">
                <div class="elementor-container elementor-column-gap-no">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-994ec8e elementor-column elementor-col-100 elementor-top-column"
                             data-id="994ec8e" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-1ff1b2b elementor-widget elementor-widget-autrics-slider"
                                         data-id="1ff1b2b" data-element_type="widget"
                                         data-widget_type="autrics-slider.default">
                                        <div class="elementor-widget-container">

                                            <div data-controls="{&quot;show_nav&quot;:&quot;yes&quot;,&quot;auto_nav_slide&quot;:&quot;yes&quot;}"
                                                 class="ts-slider-area ts-slider-area-2 owl-carousel">
                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-bg1.jpg)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title">
                                                                            We give you
                                                                        </small>
                                                                        Quality <span>Auto Repair</span></h1>
                                                                    <p class="slider-desc">
                                                                        How you transform your business as technology,
                                                                        consumer, habits industry dynamis change? Find
                                                                        out from those leading the charge.
                                                                    </p>


                                                                    <a href="" class="btn btn-primary">Get
                                                                        Appointment</a>
                                                                </div> <!-- Slider Content End -->
                                                            </div> <!-- Col End -->
                                                        </div> <!-- Row ENd -->
                                                    </div> <!-- Container End -->


                                                </div> <!-- 1st Slider -->

                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-2-2.png)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title">
                                                                            The Best
                                                                        </small>
                                                                        Repair <span>&amp; Maintenance</span></h1>
                                                                    <p class="slider-desc">
                                                                        How you transform your business as technology,
                                                                        consumer, habits industry dynamis change? Find
                                                                        out from those leading the charge.
                                                                    </p>


                                                                    <a href="" class="btn btn-primary">Get
                                                                        Appointment</a>
                                                                </div> <!-- Slider Content End -->
                                                            </div> <!-- Col End -->
                                                        </div> <!-- Row ENd -->
                                                    </div> <!-- Container End -->


                                                </div> <!-- 1st Slider -->

                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-3.jpg)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title">
                                                                            We Ensure </small>
                                                                        Commitment <span>to Quality</span></h1>
                                                                    <p class="slider-desc">
                                                                        How you transform your business as technology,
                                                                        consumer, habits industry dynamis change? Find
                                                                        out from those leading the charge.
                                                                    </p>


                                                                    <a href="" class="btn btn-primary">Get
                                                                        Appointment</a>
                                                                </div> <!-- Slider Content End -->
                                                            </div> <!-- Col End -->
                                                        </div> <!-- Row ENd -->
                                                    </div> <!-- Container End -->


                                                </div> <!-- 1st Slider -->

                                            </div>
                                            <!-- banner end-->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-bdd0b05 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="bdd0b05" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-30c300d elementor-column elementor-col-33 elementor-top-column"
                             data-id="30c300d" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-469130f elementor-widget elementor-widget-text-editor"
                                         data-id="469130f" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p>Contact <strong>Details</strong>
                                            </p></div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-1f3bb99 elementor-widget elementor-widget-autrics-intro-contact"
                                         data-id="1f3bb99" data-element_type="widget"
                                         data-widget_type="autrics-intro-contact.default">
                                        <div class="elementor-widget-container">
                                            <div class="ts-intro-wrapper ts-intro-contact-list">
                                                <div class="intro-content">
                                                    <ul>
                                                        <li>
                                                            <span> Call us : </span>
                                                            <p class="intro-info"> +(91) 458 654 528</p>
                                                        </li>
                                                        <li>
                                                            <span> Find us : </span>
                                                            <p class="intro-info"> 1014 Retreat Avenue Birmingham, AL
                                                                35203</p>
                                                        </li>
                                                        <li>
                                                            <span> Work time : </span>
                                                            <p class="intro-info"> Mon - Sat 7.00 - 18.30 Sunday Closed
                                                                Call us for emergency</p>
                                                        </li>
                                                    </ul><!-- Ul List -->
                                                </div>
                                                <i class="icon icon-phone1"></i>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-ab1ecaa elementor-column elementor-col-33 elementor-top-column"
                             data-id="ab1ecaa" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-09ab2f9 elementor-widget elementor-widget-text-editor"
                                         data-id="09ab2f9" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p>Get <strong>30%
                                                Discount</strong></p></div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-2f82c6a text-center elementor-widget elementor-widget-shortcode"
                                         data-id="2f82c6a" data-element_type="widget"
                                         data-widget_type="shortcode.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-shortcode">
                                                <div role="form" class="wpcf7" id="wpcf7-f1071-p35-o1" lang="en-US"
                                                     dir="ltr">
                                                    <div class="screen-reader-response"></div>
                                                    <form action="/wp/autrics/#wpcf7-f1071-p35-o1" method="post"
                                                          class="wpcf7-form" novalidate="novalidate">
                                                        <div style="display: none;">
                                                            <input type="hidden" name="_wpcf7" value="1071"/>
                                                            <input type="hidden" name="_wpcf7_version" value="5.1.1"/>
                                                            <input type="hidden" name="_wpcf7_locale" value="en_US"/>
                                                            <input type="hidden" name="_wpcf7_unit_tag"
                                                                   value="wpcf7-f1071-p35-o1"/>
                                                            <input type="hidden" name="_wpcf7_container_post"
                                                                   value="35"/>
                                                            <input type="hidden" name="g-recaptcha-response" value=""/>
                                                        </div>
                                                        <div class="intro-form">
                                                            <div class="contactMe small">
                                                                <div class="form-row">
                                                                    <div class="col-md-12"><span
                                                                            class="wpcf7-form-control-wrap text-902"><input
                                                                            type="text" name="text-902" value=""
                                                                            size="40"
                                                                            class="wpcf7-form-control wpcf7-text field"
                                                                            aria-invalid="false"
                                                                            placeholder="Name"/></span></div>
                                                                </div>
                                                                <div class="form-row form-row-second">
                                                                    <div class="col-lg-6 col-md-12"><span
                                                                            class="wpcf7-form-control-wrap email-320"><input
                                                                            type="email" name="email-320" value=""
                                                                            size="40"
                                                                            class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email field"
                                                                            aria-required="true" aria-invalid="false"
                                                                            placeholder="Email"/></span></div>
                                                                    <div class="col-lg-6 col-md-12"><span
                                                                            class="wpcf7-form-control-wrap menu-843"><select
                                                                            name="menu-843"
                                                                            class="wpcf7-form-control wpcf7-select field"
                                                                            aria-invalid="false"><option
                                                                            value="Information">Information</option><option
                                                                            value="Supports">Supports</option><option
                                                                            value="Others...">Others...</option></select></span>
                                                                    </div>
                                                                </div>
                                                                <div class="btn-border-after">
                                                                    <input type="submit" value="Get Discount"
                                                                           class="wpcf7-form-control wpcf7-submit btn btn-bordered"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="wpcf7-response-output wpcf7-display-none"></div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-433b66c elementor-view-default elementor-widget elementor-widget-icon"
                                         data-id="433b66c" data-element_type="widget" data-widget_type="icon.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-icon-wrapper">
                                                <div class="elementor-icon">
                                                    <i class="icon icon-percentage" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-3e64cb4 elementor-column elementor-col-33 elementor-top-column"
                             data-id="3e64cb4" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-abbbd28 elementor-widget elementor-widget-autrics-contentSlider"
                                         data-id="abbbd28" data-element_type="widget"
                                         data-widget_type="autrics-contentSlider.default">
                                        <div class="elementor-widget-container">

                                            <div class="ts-intro-wrapper intro-carousel">
                                                <div class="intro-content-carousel owl-carousel">
                                                    <div class="intro-content">
                                                        <h2><span> Vehicle</span> Tips </h2>
                                                        <div class="intro-carousel">
                                                            <p>Most of the vehicles get damaged just because of
                                                                maintenance neglect. If you take care of your vehicles
                                                                , it will keep you safe.</p>
                                                        </div>
                                                    </div><!-- Intro Content End -->
                                                    <div class="intro-content">
                                                        <h2><span> Vehicle</span> Tips</h2>
                                                        <div class="intro-carousel">
                                                            <p>Most of the vehicles get damaged just because of
                                                                maintenance neglect. If you take care of your vehicles
                                                                , it will keep you safe.</p>
                                                        </div>
                                                    </div><!-- Intro Content End -->
                                                    <div class="intro-content">
                                                        <h2><span> Vehicle</span> Tips</h2>
                                                        <div class="intro-carousel">
                                                            <p>Most of the vehicles get damaged just because of
                                                                maintenance neglect. If you take care of your vehicles
                                                                , it will keep you safe.</p>
                                                        </div>
                                                    </div><!-- Intro Content End -->

                                                </div><!-- Intro Carousel end -->

                                                <i class="icon icon-solution"></i>

                                            </div><!-- Intro Wrapper End -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-6c3e4eb about-bg-img elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="6c3e4eb" data-element_type="section"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                <div class="elementor-background-overlay"></div>
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-ca20ebf elementor-column elementor-col-50 elementor-top-column"
                             data-id="ca20ebf" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-e64e30d elementor-widget elementor-widget-autrics-title"
                                         data-id="e64e30d" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>why</span> choose us </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <section
                                            class="elementor-element elementor-element-1946d12 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section"
                                            data-id="1946d12" data-element_type="section">
                                        <div class="elementor-container elementor-column-gap-default">
                                            <div class="elementor-row">
                                                <div class="elementor-element elementor-element-e290dd4 elementor-column elementor-col-50 elementor-inner-column"
                                                     data-id="e290dd4" data-element_type="column">
                                                    <div class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div class="elementor-element elementor-element-ccfacc4 elementor-widget elementor-widget-autrics-feature"
                                                                 data-id="ccfacc4" data-element_type="widget"
                                                                 data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
			<span class="feature-icon">
				<i class="icon icon-mechanic"></i>
			</span><!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3><span>Expert </span>Mechanics</h3>
                                                                            <p>Most of the vehicles get damaged just
                                                                                because of maintenance neglect you
                                                                                take</p>
                                                                        </div><!-- feature content end -->
                                                                    </div><!-- feature single end -->


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="elementor-element elementor-element-b9d04c8 elementor-column elementor-col-50 elementor-inner-column"
                                                     data-id="b9d04c8" data-element_type="column">
                                                    <div class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div class="elementor-element elementor-element-65c9f0f elementor-widget elementor-widget-autrics-feature"
                                                                 data-id="65c9f0f" data-element_type="widget"
                                                                 data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
			<span class="feature-icon">
				<i class="icon icon-price"></i>
			</span><!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3><span>Reasonable </span>Price</h3>
                                                                            <p>Most of the vehicles get damaged just
                                                                                because of maintenance neglect you
                                                                                take</p>
                                                                        </div><!-- feature content end -->
                                                                    </div><!-- feature single end -->


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <section
                                            class="elementor-element elementor-element-ee5348e elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section"
                                            data-id="ee5348e" data-element_type="section"
                                            data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                                        <div class="elementor-container elementor-column-gap-default">
                                            <div class="elementor-row">
                                                <div class="elementor-element elementor-element-228cf8c elementor-column elementor-col-50 elementor-inner-column"
                                                     data-id="228cf8c" data-element_type="column">
                                                    <div class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div class="elementor-element elementor-element-9cd29fa elementor-widget elementor-widget-autrics-feature"
                                                                 data-id="9cd29fa" data-element_type="widget"
                                                                 data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
			<span class="feature-icon">
				<i class="icon icon-client"></i>
			</span><!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3><span>Trusted</span> by 5000 Clients
                                                                            </h3>
                                                                            <p>Most of the vehicles get damaged just
                                                                                because of maintenance neglect you
                                                                                take</p>
                                                                        </div><!-- feature content end -->
                                                                    </div><!-- feature single end -->


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="elementor-element elementor-element-887f268 elementor-column elementor-col-50 elementor-inner-column"
                                                     data-id="887f268" data-element_type="column">
                                                    <div class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div class="elementor-element elementor-element-4fc253e elementor-widget elementor-widget-autrics-feature"
                                                                 data-id="4fc253e" data-element_type="widget"
                                                                 data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
			<span class="feature-icon">
				<i class="icon icon-fast"></i>
			</span><!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3><span>Fast </span>feature Delivery</h3>
                                                                            <p>Most of the vehicles get damaged just
                                                                                because of maintenance neglect you
                                                                                take</p>
                                                                        </div><!-- feature content end -->
                                                                    </div><!-- feature single end -->


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
                        <div class="elementor-element elementor-element-f871a03 elementor-column elementor-col-50 elementor-top-column"
                             data-id="f871a03" data-element_type="column">
                            <div class="elementor-column-wrap">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-4bedbe5 elementor-section-full_width elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="4bedbe5" data-element_type="section"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                <div class="elementor-container elementor-column-gap-no">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-1f7bdf2 skew-shap content-width-left elementor-column elementor-col-50 elementor-top-column"
                             data-id="1f7bdf2" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-c559395 elementor-widget elementor-widget-text-editor"
                                         data-id="c559395" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p>Come before 21st
                                                Feb</p></div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-33baadd elementor-widget elementor-widget-autrics-title"
                                         data-id="33baadd" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Get </span>Upto 30% Rewards </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-fba6631 elementor-widget elementor-widget-text-editor"
                                         data-id="fba6631" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p>Auto Painting &amp;
                                                Collision Repair Shop. We help you turn the car you drive back into the
                                                car you love!</p></div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-c054708 btn btn-primary elementor-align-left elementor-widget__width-initial elementor-widget elementor-widget-button"
                                         data-id="c054708" data-element_type="widget" data-widget_type="button.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-button-wrapper">
                                                <a href="#"
                                                   class="elementor-button-link elementor-button elementor-size-sm"
                                                   role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">Claim Reward</span>
		</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-79da2bb content-width about-autrics-img elementor-column elementor-col-50 elementor-top-column"
                             data-id="79da2bb" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-10fdf01 elementor-widget elementor-widget-autrics-title"
                                         data-id="10fdf01" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>About</span> Autrics </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-058b2f6 elementor-widget elementor-widget-text-editor"
                                         data-id="058b2f6" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p>Most of the
                                                vehicles get damaged just because of maintenance neglect you take. get
                                                damaged</p>
                                                <ul class="unstyled list-round">
                                                    <li>The vehicles get damaged just because of mainte</li>
                                                    <li>The Big Oxmox advised her not to do vehicles</li>
                                                    <li>The Little Blind Text didn’t listen herself</li>
                                                    <li>Alphabet Village and the subline of</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-7dd32a7 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="7dd32a7" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-d81666b elementor-column elementor-col-100 elementor-top-column"
                             data-id="d81666b" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-92c92f6 elementor-widget elementor-widget-autrics-title"
                                         data-id="92c92f6" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Our</span> Working Process </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-1cb489b elementor-widget elementor-widget-autrics-process"
                                         data-id="1cb489b" data-element_type="widget"
                                         data-widget_type="autrics-process.default">
                                        <div class="elementor-widget-container">


                                            <div class="row working-box-wrapper">
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_1">
                                                        <span class="working-left-shape"></span>
                                                        <div class="working-content-wrapper">
                     <span class="workig-icon">
                        <i class="icon icon-request_quote"></i>
                     </span>
                                                            <div class="working-content">
                                                                <h3><span>Request</span> Quote</h3>
                                                                <p>Most of the vehicles get damage just because of
                                                                    maintain</p>
                                                            </div> <!-- Working Content -->
                                                        </div> <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div> <!-- Working single box -->
                                                </div><!-- Col End -->
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_2 bg-red">
                                                        <span class="working-left-shape"></span>
                                                        <div class="working-content-wrapper">
				         <span class="workig-icon">
                        <i class="icon icon-car_1"></i>
                     </span>
                                                            <div class="working-content">
                                                                <h3><span>Bring</span> Your Vehicle</h3>
                                                                <p>Most of the vehicles get damage just because of
                                                                    maintain</p>
                                                            </div> <!-- Working Content -->
                                                        </div> <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div> <!-- Working single box -->
                                                </div><!-- Col End -->
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_3 bg-red-light">
                                                        <div class="working-content-wrapper">
				  <span class="workig-icon">
                        <i class="icon icon-car_2"></i>
                     </span>
                                                            <div class="working-content">
                                                                <h3><span>Get</span> It Repaired</h3>
                                                                <p>Most of the vehicles get damage just because of
                                                                    maintain</p>
                                                            </div> <!-- Working Content -->
                                                        </div> <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div> <!-- Working single box -->
                                                </div><!-- Col End -->
                                            </div> <!-- Row End -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-23cdd1d elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="23cdd1d" data-element_type="section"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                <div class="elementor-background-overlay"></div>
                <div class="elementor-container elementor-column-gap-no">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-885581e elementor-column elementor-col-100 elementor-top-column"
                             data-id="885581e" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-495b118 elementor-widget elementor-widget-autrics-title"
                                         data-id="495b118" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Services</span> We Provide </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-257b8ff elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="257b8ff" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-2a0d5e2 elementor-column elementor-col-100 elementor-top-column"
                             data-id="2a0d5e2" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-e1c58b7 elementor-widget elementor-widget-autrics-service"
                                         data-id="e1c58b7" data-element_type="widget"
                                         data-widget_type="autrics-service.default">
                                        <div class="elementor-widget-container">


                                            <div data-nav="1" class="service-carousel owl-carousel">
                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">
                           <img class="img-fluid" src="images/service_img61.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-oil"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">Performance
                                                                Upgrades </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">
                           <img class="img-fluid" src="images/service_img51.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-engine"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">Computer
                                                                Diagnostics </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">
                           <img class="img-fluid" src="images/service_img41.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-air_conditioning"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">Anti-Lock
                                                                Brake Service </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">
                           <img class="img-fluid" src="images/service_img31.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-air_conditioning"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">Air
                                                                Conditioning Evac </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">
                           <img class="img-fluid" src="images/service_img21.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-computer"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">Lube,
                                                                vehicles damaged </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
                                            <span class="service-img">
                        <a href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">
                           <img class="img-fluid" src="images/service_img11.jpg" alt="thumbnail">
                        </a>
                        </span> <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-performance"></i>
                                                        </div> <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">Engine
                                                                Diagnostics Entire </a>
                                                        </h3>
                                                        <p>
                                                            Most of the vehicles get damaged just because of maintenance
                                                        </p>

                                                        <a href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/"
                                                           class="readmore">Read More<i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div> <!-- Service content end -->
                                                </div> <!-- Service wrapper end -->


                                            </div><!-- Row end -->


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-a57132f elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="a57132f" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-6ba5c1b elementor-column elementor-col-50 elementor-top-column"
                             data-id="6ba5c1b" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-3c52a7c elementor-widget elementor-widget-autrics-title"
                                         data-id="3c52a7c" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Book</span> An Appointment </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-33d882b elementor-widget elementor-widget-shortcode"
                                         data-id="33d882b" data-element_type="widget"
                                         data-widget_type="shortcode.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-shortcode">
                                                <div role="form" class="wpcf7" id="wpcf7-f1142-p35-o2" lang="en-US"
                                                     dir="ltr">
                                                    <div class="screen-reader-response"></div>
                                                    <form action="/wp/autrics/#wpcf7-f1142-p35-o2" method="post"
                                                          class="wpcf7-form" novalidate="novalidate">
                                                        <div style="display: none;">
                                                            <input type="hidden" name="_wpcf7" value="1142"/>
                                                            <input type="hidden" name="_wpcf7_version" value="5.1.1"/>
                                                            <input type="hidden" name="_wpcf7_locale" value="en_US"/>
                                                            <input type="hidden" name="_wpcf7_unit_tag"
                                                                   value="wpcf7-f1142-p35-o2"/>
                                                            <input type="hidden" name="_wpcf7_container_post"
                                                                   value="35"/>
                                                            <input type="hidden" name="g-recaptcha-response" value=""/>
                                                        </div>
                                                        <div class="contactMe ts-main-form">
                                                            <div class="form-row">
                                                                <div class="col-lg-6">
                                                                    <span class="wpcf7-form-control-wrap text-255"><input
                                                                            type="text" name="text-255" value=""
                                                                            size="40"
                                                                            class="wpcf7-form-control wpcf7-text field"
                                                                            aria-invalid="false"
                                                                            placeholder="Name"/></span></div>
                                                                <div class="col-lg-6">
                                                                    <span class="wpcf7-form-control-wrap tel-348"><input
                                                                            type="tel" name="tel-348" value="" size="40"
                                                                            class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel field"
                                                                            aria-required="true" aria-invalid="false"
                                                                            placeholder="Phone Number"/></span></div>
                                                            </div>
                                                            <p><!-- Row 1 --></p>
                                                            <div class="form-row">
                                                                <div class="col-md-6">
                                                                    <span class="wpcf7-form-control-wrap email-540"><input
                                                                            type="email" name="email-540" value=""
                                                                            size="40"
                                                                            class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email field"
                                                                            aria-required="true" aria-invalid="false"
                                                                            placeholder="Email"/></span></div>
                                                                <div class="col-md-6 select-item">
                                                                    <span class="wpcf7-form-control-wrap menu-465"><select
                                                                            name="menu-465"
                                                                            class="wpcf7-form-control wpcf7-select field"
                                                                            aria-invalid="false"><option value="Brand">Brand</option><option
                                                                            value="BMW">BMW</option><option
                                                                            value="Toyota">Toyota</option></select></span>
                                                                </div>
                                                            </div>
                                                            <p><!-- Row 2 --></p>
                                                            <div class="form-row">
                                                                <div class="col-md-6">
                                                                    <span class="wpcf7-form-control-wrap date-497"><input
                                                                            type="date" name="date-497" value=""
                                                                            class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-date field cm-date"
                                                                            aria-required="true" aria-invalid="false"/></span>
                                                                </div>
                                                                <div class="col-md-6 select-item">
                                                                    <span class="wpcf7-form-control-wrap menu-465"><select
                                                                            name="menu-465"
                                                                            class="wpcf7-form-control wpcf7-select field"
                                                                            aria-invalid="false"><option
                                                                            value="Select Service">Select Service</option><option
                                                                            value="Engine Diagnostics">Engine Diagnostics</option><option
                                                                            value="Lube, Oil and Filters">Lube, Oil and Filters</option><option
                                                                            value="Air Conditioning Evac">Air Conditioning Evac</option></select></span>
                                                                </div>
                                                            </div>
                                                            <p><!-- Row 3 --></p>
                                                            <div class="btn-after pull-right">
                                                                <input type="submit" value="Estimate Rate"
                                                                       class="wpcf7-form-control wpcf7-submit btn btn-primary"/>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="wpcf7-response-output wpcf7-display-none"></div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-730bb17 elementor-column elementor-col-50 elementor-top-column"
                             data-id="730bb17" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-4133b9b elementor-widget elementor-widget-autrics-title"
                                         data-id="4133b9b" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Clients</span> Love </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-ffa2ce2 elementor-widget elementor-widget-autrics-quote-carousel"
                                         data-id="ffa2ce2" data-element_type="widget"
                                         data-widget_type="autrics-quote-carousel.default">
                                        <div class="elementor-widget-container">
                                            <div data-nav="" class="testimonial-carousel owl-carousel">
                                                <div class="testimonial-container">
                                                    <div class="testimonial-body">
                                                        <div class="testimonial-content">
                                                            <h4 class="service-name">Engine Digonastic</h4>

                                                        </div> <!-- Testimonial Content end -->
                                                        <p> wonderful serenity taken possession into entire soul like to
                                                            these sweet of tence this spot which was the main part
                                                            created for </p>
                                                        <span class="quote-icon"><i class="icon icon-quote1"></i></span>
                                                    </div> <!-- Testimonial Body end -->
                                                    <div class="testimonial-footer">

                                                        <img src="images/quote_profile1.png" alt="testimonial"
                                                             class="img-fluid">

                                                        <div class="client-info">

                                                            <h3 class="client-name">Donald Gonzales</h3>
                                                            <span class="client-desig">CEO,apple</span>
                                                        </div> <!-- Client info end -->
                                                    </div><!-- Testimonial Footer end -->
                                                </div> <!-- Testimonial Box end -->
                                                <div class="testimonial-container">
                                                    <div class="testimonial-body">
                                                        <div class="testimonial-content">
                                                            <h4 class="service-name">Engine Digonastic</h4>

                                                        </div> <!-- Testimonial Content end -->
                                                        <p> wonderful serenity taken possession into entire soul like to
                                                            these sweet of tence this spot which was the main part
                                                            created for </p>
                                                        <span class="quote-icon"><i class="icon icon-quote1"></i></span>
                                                    </div> <!-- Testimonial Body end -->
                                                    <div class="testimonial-footer">

                                                        <img src="images/quote_profile1.png" alt="testimonial"
                                                             class="img-fluid">

                                                        <div class="client-info">

                                                            <h3 class="client-name">Donald Gonzales</h3>
                                                            <span class="client-desig">CEO,apple</span>
                                                        </div> <!-- Client info end -->
                                                    </div><!-- Testimonial Footer end -->
                                                </div> <!-- Testimonial Box end -->

                                            </div> <!-- Testimonial Carousel -->


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-da54144 elementor-section-full_width elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="da54144" data-element_type="section"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                <div class="elementor-container elementor-column-gap-no">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-223864f content-width-left content-width1 elementor-column elementor-col-50 elementor-top-column"
                             data-id="223864f" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-416a0b0 elementor-widget elementor-widget-autrics-title"
                                         data-id="416a0b0" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Subscribe</span> For Newsletter </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-444e3d9 elementor-widget elementor-widget-shortcode"
                                         data-id="444e3d9" data-element_type="widget"
                                         data-widget_type="shortcode.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-shortcode">
                                                <script>(function () {
                                                    if (!window.mc4wp) {
                                                        window.mc4wp = {
                                                            listeners: [],
                                                            forms: {
                                                                on: function (event, callback) {
                                                                    window.mc4wp.listeners.push({
                                                                        event: event,
                                                                        callback: callback
                                                                    });
                                                                }
                                                            }
                                                        }
                                                    }
                                                })();
                                                </script>
                                                <!-- Mailchimp for WordPress v4.5.0 - https://wordpress.org/plugins/mailchimp-for-wp/ -->
                                                <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-1065" method="post"
                                                      data-id="1065" data-name="">
                                                    <div class="mc4wp-form-fields">
                                                        <div class="contactMe newsletter-form">


                                                            <div class=" newsletter-box">
                                                                <input type="email" name="email"
                                                                       data-displayname="E-mail" class="field"
                                                                       placeholder="Your Email" required="">
                                                                <button class="btn btn-bordered" type="submit"
                                                                        data-sending="Sending..."
                                                                        data-text="<i class=&quot;fa fa-send&quot;></i>">
                                                                    <i class="fa fa-send"></i></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <label style="display: none !important;">Leave this field empty if
                                                        you're human: <input type="text" name="_mc4wp_honeypot" value=""
                                                                             tabindex="-1"
                                                                             autocomplete="off"/></label><input
                                                        type="hidden" name="_mc4wp_timestamp" value="1565178512"/><input
                                                        type="hidden" name="_mc4wp_form_id" value="1065"/><input
                                                        type="hidden" name="_mc4wp_form_element_id"
                                                        value="mc4wp-form-1"/>
                                                    <div class="mc4wp-response"></div>
                                                </form><!-- / Mailchimp for WordPress Plugin --></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-755cf73 skew-shap-right elementor-column elementor-col-50 elementor-top-column"
                             data-id="755cf73" data-element_type="column" id="content-width">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-884b607 elementor-widget elementor-widget-text-editor"
                                         data-id="884b607" data-element_type="widget"
                                         data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix"><p><span
                                                    style="font-family: Dosis, sans-serif; font-size: 20px;">We offer you</span>
                                            </p></div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-01b9a3b elementor-widget elementor-widget-autrics-title"
                                         data-id="01b9a3b" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>The </span> Best Auto Repair Service </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-41280b6 btn btn-primary elementor-widget__width-auto elementor-widget elementor-widget-button"
                                         data-id="41280b6" data-element_type="widget" data-widget_type="button.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-button-wrapper">
                                                <a href="#"
                                                   class="elementor-button-link elementor-button elementor-size-sm"
                                                   role="button">
						<span class="elementor-button-content-wrapper">
						<span class="elementor-button-text">Contact US</span>
		</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section
                    class="elementor-element elementor-element-b26831b elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="b26831b" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-549a240 elementor-column elementor-col-100 elementor-top-column"
                             data-id="549a240" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-46eae22 elementor-widget elementor-widget-autrics-title"
                                         data-id="46eae22" data-element_type="widget"
                                         data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span>Our</span> Latest News </h2>
                                            </div><!-- Section title -->


                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-fdd797a elementor-widget elementor-widget-autrics-latestnews"
                                         data-id="fdd797a" data-element_type="widget"
                                         data-widget_type="autrics-latestnews.default">
                                        <div class="elementor-widget-container">
                                            <div data-controls="{&quot;show_nav&quot;:true,&quot;auto_nav_slide&quot;:&quot;&quot;}"
                                                 class="news-carousel owl-carousel">
                                                <div class="ts-latest-post">
                                                    <div class="post-media post-image">
                                                        <a href="http://demo.themewinter.com/wp/autrics/2019/01/11/bmw-vs-austin-martin-going-higher-2/"><img
                                                                src="images/post-img11-1.jpg" class="img-fluid"
                                                                alt="http://demo.themewinter.com/wp/autrics/author/autric/"></a>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="post-date">
                                                            <span class="day"> 11</span>
                                                            <span class="month">Jan</span>
                                                        </div> <!-- Post Date End -->


                                                        <div class="post-info">
                                                            <div class="post-meta">

                                                                <i class="icon icon-user"></i>
                                                                <span class="post-author">By <a
                                                                        href="http://demo.themewinter.com/wp/autrics/author/autric/">autric</a></span>

                                                            </div>
                                                        </div> <!-- Post Info End -->

                                                        <h3 class="post-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=109">20th
                                                                car looking </a>
                                                        </h3>
                                                        <div class="post-text">

                                                            <p> What a crazy time. I have five children in
                                                                colleghigh </p>


                                                        </div>
                                                        <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=109"
                                                           class="readmore">Read More <i
                                                                class="fa fa-angle-double-right"></i></a>

                                                    </div> <!-- Post Body End -->
                                                </div> <!-- Latest Post End -->
                                                <div class="ts-latest-post">
                                                    <div class="post-media post-image">
                                                        <a href="http://demo.themewinter.com/wp/autrics/2018/10/11/bmw-vs-austin-martin-going-higher/"><img
                                                                src="images/post-img21-1.jpg" class="img-fluid"
                                                                alt="http://demo.themewinter.com/wp/autrics/author/autric/"></a>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="post-date">
                                                            <span class="day"> 11</span>
                                                            <span class="month">Oct</span>
                                                        </div> <!-- Post Date End -->


                                                        <div class="post-info">
                                                            <div class="post-meta">

                                                                <i class="icon icon-user"></i>
                                                                <span class="post-author">By <a
                                                                        href="http://demo.themewinter.com/wp/autrics/author/autric/">autric</a></span>

                                                            </div>
                                                        </div> <!-- Post Info End -->

                                                        <h3 class="post-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=102">Repaired
                                                                Unlocking Being </a>
                                                        </h3>
                                                        <div class="post-text">

                                                            <p> What a crazy time. I have five children in
                                                                colleghigh </p>


                                                        </div>
                                                        <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=102"
                                                           class="readmore">Read More <i
                                                                class="fa fa-angle-double-right"></i></a>

                                                    </div> <!-- Post Body End -->
                                                </div> <!-- Latest Post End -->
                                                <div class="ts-latest-post">
                                                    <div class="post-media post-image">
                                                        <a href="http://demo.themewinter.com/wp/autrics/2017/07/11/bmw-vs-austin-going-higher/"><img
                                                                src="images/post-img21-1.jpg" class="img-fluid"
                                                                alt="http://demo.themewinter.com/wp/autrics/author/autric/"></a>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="post-date">
                                                            <span class="day"> 11</span>
                                                            <span class="month">Jul</span>
                                                        </div> <!-- Post Date End -->


                                                        <div class="post-info">
                                                            <div class="post-meta">

                                                                <i class="icon icon-user"></i>
                                                                <span class="post-author">By <a
                                                                        href="http://demo.themewinter.com/wp/autrics/author/autric/">autric</a></span>

                                                            </div>
                                                        </div> <!-- Post Info End -->

                                                        <h3 class="post-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=107">Crazy
                                                                Your Auto </a>
                                                        </h3>
                                                        <div class="post-text">

                                                            <p> What a crazy time. I have five children in
                                                                colleghigh </p>


                                                        </div>
                                                        <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=107"
                                                           class="readmore">Read More <i
                                                                class="fa fa-angle-double-right"></i></a>

                                                    </div> <!-- Post Body End -->
                                                </div> <!-- Latest Post End -->
                                                <div class="ts-latest-post">
                                                    <div class="post-media post-image">
                                                        <a href="http://demo.themewinter.com/wp/autrics/2017/01/11/riding-with-friend-is-the-best-feeling-in-the-world/"><img
                                                                src="images/post-img11.jpg" class="img-fluid"
                                                                alt="http://demo.themewinter.com/wp/autrics/author/autric/"></a>
                                                    </div>
                                                    <div class="post-body">
                                                        <div class="post-date">
                                                            <span class="day"> 11</span>
                                                            <span class="month">Jan</span>
                                                        </div> <!-- Post Date End -->


                                                        <div class="post-info">
                                                            <div class="post-meta">

                                                                <i class="icon icon-user"></i>
                                                                <span class="post-author">By <a
                                                                        href="http://demo.themewinter.com/wp/autrics/author/autric/">autric</a></span>

                                                            </div>
                                                        </div> <!-- Post Info End -->

                                                        <h3 class="post-title">
                                                            <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=89">Riding
                                                                with friend </a>
                                                        </h3>
                                                        <div class="post-text">

                                                            <p> Far far away, behind the word mountains, far from
                                                                the </p>


                                                        </div>
                                                        <a href="http://demo.themewinter.com/wp/autrics/?post_type=post&p=89"
                                                           class="readmore">Read More <i
                                                                class="fa fa-angle-double-right"></i></a>

                                                    </div> <!-- Post Body End -->
                                                </div> <!-- Latest Post End -->

                                            </div><!-- Row end -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Footer -->
            <section
                    class="elementor-element elementor-element-5763c2e solid-bg elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="5763c2e" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-fe3fdab elementor-column elementor-col-100 elementor-top-column"
                             data-id="fe3fdab" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-d292ab9 elementor-widget elementor-widget-image-carousel"
                                         data-id="d292ab9" data-element_type="widget"
                                         data-settings="{&quot;slides_to_show&quot;:&quot;5&quot;,&quot;slides_to_scroll&quot;:&quot;5&quot;,&quot;navigation&quot;:&quot;none&quot;,&quot;slides_to_show_tablet&quot;:&quot;3&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;direction&quot;:&quot;ltr&quot;}"
                                         data-widget_type="image-carousel.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-image-carousel-wrapper elementor-slick-slider"
                                                 dir="ltr">
                                                <div class="elementor-image-carousel">
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img5.png"
                                                                                               alt="client-img5"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img4.png"
                                                                                               alt="client-img4"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img3.png"
                                                                                               alt="client-img3"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img1-1.png"
                                                                                               alt="client-img1"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img2.png"
                                                                                               alt="client-img2"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner"><img class="slick-slide-image"
                                                                                               src="images/client-img1.png"
                                                                                               alt="client-img1"/>
                                                        </figure>
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

            <section
                    class="elementor-element elementor-element-619e197 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="619e197" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-663c0c5 elementor-column elementor-col-100 elementor-top-column"
                             data-id="663c0c5" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-338fc8d elementor-widget elementor-widget-autrics-process"
                                         data-id="338fc8d" data-element_type="widget"
                                         data-widget_type="autrics-process.default">
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


<footer style='padding-top:0px' class="footer" id="footer">

    <div class="footer-main" style='background:#06163a'>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 footer-widget footer-about">

                    <div id="media_image-2" class="widget widget_media_image"><a href="#"><img width="217" height="68"
                                                                                               src="images/logo2.png"
                                                                                               class="image wp-image-1569  attachment-full size-full"
                                                                                               alt=""
                                                                                               style="max-width: 100%; height: auto;"/></a>
                    </div>
                    <div id="text-2" class="widget widget_text">
                        <div class="textwidget"><p>A wonderful serenity taken possession into entire soul like to these
                            sweet of tence this spot which was the main part created the bliss often souls like
                            mine.</p>
                        </div>
                    </div>
                    <div id="xs-social-5" class="widget automobil-widget">
                        <div class="footer-social">
                            <ul class="unstyled xs-social-list xs-social-list-v6 automobil-social-list ">

                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>

                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>

                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>

                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>


                            </ul>
                        </div><!-- Footer social end -->

                    </div>
                </div> <!-- Col End -->
                <!-- About us end-->
                <div class="col-lg-3 col-md-6 footer-widget widget-service">
                    <div id="nav_menu-2" class="footer-area-2 widget_nav_menu">
                        <h4 class="widget-title"><span>Our</span> Services</h4>
                        <div class="menu-service-container">
                            <ul id="menu-service" class="menu">
                                <li id="menu-item-1594"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1594">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">Performance
                                        Upgrades</a></li>
                                <li id="menu-item-1595"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1595">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">Computer
                                        Diagnostics</a></li>
                                <li id="menu-item-1596"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1596">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">Anti-Lock
                                        Brake Service</a></li>
                                <li id="menu-item-1597"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1597">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">Air
                                        Conditioning Evac</a></li>
                                <li id="menu-item-1598"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1598">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">Lube,
                                        vehicles damaged just</a></li>
                                <li id="menu-item-1599"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                    <a href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">Engine
                                        Diagnostics Entire</a></li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget news-widget">
                    <div id="recent-posts-3" class="footer-area-3 widget_recent_entries"><h4 class="widget-title"><span>Latest</span>
                        News</h4>
                        <ul>
                            <li>
                                <a href="http://demo.themewinter.com/wp/autrics/2019/01/11/bmw-vs-austin-martin-going-higher-2/">20th
                                    car looking smarter</a>
                                <span class="post-date">January 11, 2019</span>
                            </li>
                            <li>
                                <a href="http://demo.themewinter.com/wp/autrics/2018/10/11/bmw-vs-austin-martin-going-higher/">Repaired
                                    Unlocking Being</a>
                                <span class="post-date">October 11, 2018</span>
                            </li>
                            <li>
                                <a href="http://demo.themewinter.com/wp/autrics/2017/07/11/bmw-vs-austin-going-higher/">Crazy
                                    Your Auto Repair</a>
                                <span class="post-date">July 11, 2017</span>
                            </li>
                        </ul>
                    </div>
                </div> <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget">
                    <div id="xs-service-3" class="widget automobil-widget"><h4 class="widget-title">
                        <span>Service </span> Hours</h4>
                        <jsp:include page="inc/WorkingTimesDownPage.jsp"/>


                    </div>
                </div> <!-- Col End -->
            </div><!-- Content row end-->
        </div><!-- Container end-->
    </div><!-- Footer Main-->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="copyright-info">
                        <span style=&#039;background:#2f3967&#039;>Copyright &copy; 2019 Autrics. All Rights Reserved.</span>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="footer-menu">
                        <div class="menu-footer-menu-container">
                            <ul id="menu-footer-menu" class="nav unstyled">
                                <li id="menu-item-84"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-35 current_page_item menu-item-84">
                                    <a href="index.html" aria-current="page">Home</a></li>
                                <li id="menu-item-85"
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-85"><a
                                        href="#">Terms</a></li>
                                <li id="menu-item-86"
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-86"><a
                                        href="#">Privacy Policy</a></li>
                                <li id="menu-item-83"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-83"><a
                                        href="contact.html">Contact</a></li>
                            </ul>
                        </div>
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

<jsp:include page="inc/FooterScripts.jsp"/>

</body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1565178512 -->
