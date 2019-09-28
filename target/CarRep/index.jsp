<%@ page language="java" contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Car repair</title>
    <jsp:include page="inc/metaAndLinks.jsp"/>

</head>

<div id="preloader">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
    <div class="preloader-cancel-btn-wraper">
        <a href="#" class="btn btn-primary preloader-cancel-btn">Cancel
            Preloader</a>
    </div>
</div>

<body
        class="home page-template page-template-template page-template-homepage-template page-template-templatehomepage-template-php page page-id-35 woocommerce-no-js  elementor-default elementor-page elementor-page-35">
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
                        <i class="icon icon-clock"></i><span> <fmt:message
                            key="We" bundle="${Bundles}"/>&#039;<fmt:message
                            key="are Open:" bundle="${Bundles}"/> <fmt:message
                            key="Mon to Sat" bundle="${Bundles}"/> 8:00 - 18:00
							</span>


                    </div>
                    <!-- Top Bar Text End -->

                </div>
                <!-- Col End -->
                <div class="col-lg-2 col-md-3 text-right">
                    <div class="top-bar-social-icon ml-auto">
                        <ul>
                            <li><a href="http://facebook.com/xpeedstudio/"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i
                                    class="fa fa-twitter"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i
                                    class="fa fa-google-plus"></i></a></li>
                            <li><a href="http://facebook.com/xpeedstudio/"><i
                                    class="fa fa-linkedin"></i></a></li>

                        </ul>
                    </div>
                    <!-- Social End -->
                </div>
                <!-- Col End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Angle Bar End -->
</div>


<!-- header nav start-->
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
                                        <a href="App?PageLanguage=en_US" class=" dropdown-item"><fmt:message
                                                key="English" bundle="${Bundles}"/></a>
                                    <li id="menu-item-2082"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2082 nav-item">
                                        <a href="App?PageLanguage=ru_RU" class=" dropdown-item"><fmt:message
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
<!-- Header end -->

<div data-elementor-type="post" data-elementor-id="35"
     class="elementor elementor-35" data-elementor-settings="[]">
    <div class="elementor-inner">
        <div class="elementor-section-wrap">
            <section
                    class="elementor-element elementor-element-7ea1113 elementor-section-full_width elementor-section-height-min-height home-featured-slider elementor-section-height-default elementor-section-items-middle elementor-section elementor-top-section"
                    data-id="7ea1113" data-element_type="section">
                <div class="elementor-container elementor-column-gap-no">
                    <div class="elementor-row">
                        <div
                                class="elementor-element elementor-element-994ec8e elementor-column elementor-col-100 elementor-top-column"
                                data-id="994ec8e" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-1ff1b2b elementor-widget elementor-widget-autrics-slider"
                                            data-id="1ff1b2b" data-element_type="widget"
                                            data-widget_type="autrics-slider.default">
                                        <div class="elementor-widget-container">

                                            <div
                                                    data-controls="{&quot;show_nav&quot;:&quot;yes&quot;,&quot;auto_nav_slide&quot;:&quot;yes&quot;}"
                                                    class="ts-slider-area ts-slider-area-2 owl-carousel">
                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-bg1.jpg)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title"><fmt:message
                                                                                key="We give you" bundle="${Bundles}"/>

                                                                        </small>
                                                                        <fmt:message key="Quality" bundle="${Bundles}"/>
                                                                        <span><fmt:message key="Auto Repair"
                                                                                           bundle="${Bundles}"/></span>
                                                                    </h1>
                                                                    <p class="slider-desc">
                                                                        <fmt:message
                                                                                key="How you transform your business as technology, consumer, habits industry dynamics change? Find out from those leading the charge."
                                                                                bundle="${Bundles}"/>

                                                                    </p>


                                                                    <!--  <a href="" class="btn btn-primary">Get
                                                                    Appointment</a> -->
                                                                </div>
                                                                <!-- Slider Content End -->
                                                            </div>
                                                            <!-- Col End -->
                                                        </div>
                                                        <!-- Row ENd -->
                                                    </div>
                                                    <!-- Container End -->


                                                </div>
                                                <!-- 1st Slider -->

                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-2-2.png)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title"><fmt:message
                                                                                key="The Best" bundle="${Bundles}"/>
                                                                        </small>
                                                                        <fmt:message key="Repair" bundle="${Bundles}"/>
                                                                        <span>&amp;<fmt:message key="Maintenance"
                                                                                                bundle="${Bundles}"/>
																			</span>
                                                                    </h1>
                                                                    <p class="slider-desc">
                                                                        <fmt:message
                                                                                key="How you transform your business as technology, consumer, habits industry dynamics change? Find out from those leading the charge."
                                                                                bundle="${Bundles}"/>
                                                                    </p>

                                                                </div>
                                                                <!-- Slider Content End -->
                                                            </div>
                                                            <!-- Col End -->
                                                        </div>
                                                        <!-- Row ENd -->
                                                    </div>
                                                    <!-- Container End -->


                                                </div>
                                                <!-- 1st Slider -->

                                                <div class="slider-items slider-overlay"
                                                     style="background: url(images/slider-3.jpg)">
                                                    <div class="container">
                                                        <div class="row align-items-center">
                                                            <div class="col-lg-8 col-md-12">
                                                                <div class="slider-content ">
                                                                    <h1>
                                                                        <small class="top-title"><fmt:message
                                                                                key="We Ensure" bundle="${Bundles}"/>
                                                                        </small>
                                                                        <fmt:message key="Commitment"
                                                                                     bundle="${Bundles}"/>
                                                                        <span><fmt:message key="to Quality"
                                                                                           bundle="${Bundles}"/></span>
                                                                    </h1>
                                                                    <p class="slider-desc">
                                                                        <fmt:message
                                                                                key="How you transform your business as technology, consumer, habits industry dynamics change? Find out from those leading the charge."
                                                                                bundle="${Bundles}"/>
                                                                    </p>

                                                                </div>
                                                                <!-- Slider Content End -->
                                                            </div>
                                                            <!-- Col End -->
                                                        </div>
                                                        <!-- Row ENd -->
                                                    </div>
                                                    <!-- Container End -->


                                                </div>
                                                <!-- 1st Slider -->

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
                        <div
                                class="elementor-element elementor-element-30c300d elementor-column elementor-col-33 elementor-top-column"
                                data-id="30c300d" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-469130f elementor-widget elementor-widget-text-editor"
                                            data-id="469130f" data-element_type="widget"
                                            data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix">
                                                <p>
                                                    <fmt:message key="Contact" bundle="${Bundles}"/>
                                                    <strong><fmt:message key="to Quality"
                                                                         bundle="${Bundles}"/>Details</strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-1f3bb99 elementor-widget elementor-widget-autrics-intro-contact"
                                            data-id="1f3bb99" data-element_type="widget"
                                            data-widget_type="autrics-intro-contact.default">
                                        <div class="elementor-widget-container">
                                            <div class="ts-intro-wrapper ts-intro-contact-list">
                                                <div class="intro-content">
                                                    <ul>
                                                        <li><span><fmt:message key="Call us"
                                                                               bundle="${Bundles}"/> </span>
                                                            <p class="intro-info">+7 (926) 609-50-50</p></li>
                                                        <li><span> <fmt:message key="Find us "
                                                                                bundle="${Bundles}"/>
															</span>
                                                            <p class="intro-info">
                                                                <fmt:message key="st. Admiral Kornilov, 1"
                                                                             bundle="${Bundles}"/>
                                                            </p></li>
                                                        <li><span> <fmt:message key="Work time "
                                                                                bundle="${Bundles}"/>
															</span>
                                                            <p class="intro-info">
                                                                <fmt:message key="Mon - Sat" bundle="${Bundles}"/>
                                                                7.00 - 18.30
                                                                <fmt:message key="Sunday Closed" bundle="${Bundles}"/>
                                                                <fmt:message key="Call us for emergency"
                                                                             bundle="${Bundles}"/>
                                                            </p></li>
                                                    </ul>
                                                    <!-- Ul List -->
                                                </div>
                                                <i class="icon icon-phone1"></i>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="elementor-element elementor-element-ab1ecaa elementor-column elementor-col-33 elementor-top-column"
                                data-id="ab1ecaa" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-09ab2f9 elementor-widget elementor-widget-text-editor"
                                            data-id="09ab2f9" data-element_type="widget"
                                            data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix">
                                                <p>
                                                    <fmt:message key="Get" bundle="${Bundles}"/>
                                                    <strong> <fmt:message key="Discount"
                                                                          bundle="${Bundles}"/></strong>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-2f82c6a text-center elementor-widget elementor-widget-shortcode"
                                            data-id="2f82c6a" data-element_type="widget"
                                            data-widget_type="shortcode.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-shortcode">
                                                <div role="form" class="wpcf7" id="wpcf7-f1071-p35-o1"
                                                     lang="en-US" dir="ltr">
                                                    <div class="screen-reader-response"></div>

                                                    <div style="display: none;">
                                                        <input type="hidden" name="_wpcf7" value="1071"/> <input
                                                            type="hidden" name="_wpcf7_version" value="5.1.1"/> <input
                                                            type="hidden" name="_wpcf7_locale" value="en_US"/> <input
                                                            type="hidden" name="_wpcf7_unit_tag"
                                                            value="wpcf7-f1071-p35-o1"/> <input type="hidden"
                                                                                                name="_wpcf7_container_post"
                                                                                                value="35"/> <input
                                                            type="hidden" name="g-recaptcha-response" value=""/>
                                                    </div>
                                                    <div class="intro-form">
                                                        <div class="contactMe small">
                                                            <form action="GetDiscount" method="post">
                                                                <div class="form-row">
                                                                    <div class="col-md-12">
																			<span class="wpcf7-form-control-wrap text-902"><input
                                                                                    type="text" name="Name" value=""
                                                                                    size="40"
                                                                                    class="wpcf7-form-control wpcf7-text field"
                                                                                    aria-invalid="false"
                                                                                    placeholder=
                                                                                    <fmt:message key="Name"
                                                                                                 bundle="${Bundles}"/> /></span>
                                                                    </div>
                                                                </div>
                                                                <div class="form-row form-row-second">
                                                                    <div class="col-lg-6 col-md-12">
																			<span class="wpcf7-form-control-wrap email-320"><input
                                                                                    type="email" name="Email" value=""
                                                                                    size="40"
                                                                                    class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email field"
                                                                                    aria-required="true"
                                                                                    aria-invalid="false"
                                                                                    placeholder=
                                                                                    <fmt:message key="Email"
                                                                                                 bundle="${Bundles}"/> /></span>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-12">
																			<span class="wpcf7-form-control-wrap menu-843"><select
                                                                                    name="menu"
                                                                                    class="wpcf7-form-control wpcf7-select field"
                                                                                    aria-invalid="false"><option
                                                                                    value="Information"><fmt:message
                                                                                    key="Information"
                                                                                    bundle="${Bundles}"/></option>
																					<option value="Supports"><fmt:message
                                                                                            key="Supports"
                                                                                            bundle="${Bundles}"/></option>
																					<option value="Others..."><fmt:message
                                                                                            key="Others"
                                                                                            bundle="${Bundles}"/>...
																					</option></select></span>
                                                                    </div>
                                                                </div>
                                                                <div class="btn-border-after">
                                                                    <input type="submit"
                                                                           value=
                                                                           <fmt:message key="Get Discount"
                                                                                        bundle="${Bundles}"/>
                                                                                   class="wpcf7-form-control
                                                                           wpcf7-submit btn btn-bordered" />
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div ><%
                                                        if (request.getAttribute("message") != null) {
                                                    %>
                                                        <%=request.getAttribute("message")%>
                                                        <%
                                                            }
                                                        %></div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-433b66c elementor-view-default elementor-widget elementor-widget-icon"
                                            data-id="433b66c" data-element_type="widget"
                                            data-widget_type="icon.default">
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
                        <div
                                class="elementor-element elementor-element-3e64cb4 elementor-column elementor-col-33 elementor-top-column"
                                data-id="3e64cb4" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-abbbd28 elementor-widget elementor-widget-autrics-contentSlider"
                                            data-id="abbbd28" data-element_type="widget"
                                            data-widget_type="autrics-contentSlider.default">
                                        <div class="elementor-widget-container">

                                            <div class="ts-intro-wrapper intro-carousel">
                                                <div class="intro-content-carousel owl-carousel">
                                                    <c:if test="${requestScope.vehicleTipsList != null}" >
                                                     <c:forEach items="${requestScope.vehicleTipsList}" var="tips" varStatus="loop">
                                                    <div class="intro-content">
                                                        <h2>
																<span><fmt:message key="Vehicle"
                                                                                   bundle="${Bundles}"/> </span>
                                                            <fmt:message key="Tips" bundle="${Bundles}"/>
                                                        </h2>
                                                        <c:set value="${requestScope.PageLanguage}" var="lang"/>
                                                        <c:choose>
                                                            <c:when test="${lang == 'en_US'}">
                                                        <div class="intro-carousel">
                                                            <p>${tips.vehicleTipsEng}</p>
                                                        </div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <p>${tips.vehicleTipsRus}</p>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                     </c:forEach>
                                                    </c:if>
                                                    <!-- Intro Content End -->


                                                </div>
                                                <!-- Intro Carousel end -->

                                                <i class="icon icon-solution"></i>

                                            </div>
                                            <!-- Intro Wrapper End -->

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
                        <div
                                class="elementor-element elementor-element-ca20ebf elementor-column elementor-col-50 elementor-top-column"
                                data-id="ca20ebf" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-e64e30d elementor-widget elementor-widget-autrics-title"
                                            data-id="e64e30d" data-element_type="widget"
                                            data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span><fmt:message
                                                            key="Why" bundle="${Bundles}"/></span><fmt:message
                                                        key="Choose Us" bundle="${Bundles}"/>
                                                </h2>
                                            </div>
                                            <!-- Section title -->
                                        </div>
                                    </div>
                                    <section
                                            class="elementor-element elementor-element-1946d12 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section"
                                            data-id="1946d12" data-element_type="section">
                                        <div class="elementor-container elementor-column-gap-default">
                                            <div class="elementor-row">
                                                <div
                                                        class="elementor-element elementor-element-e290dd4 elementor-column elementor-col-50 elementor-inner-column"
                                                        data-id="e290dd4" data-element_type="column">
                                                    <div
                                                            class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div
                                                                    class="elementor-element elementor-element-ccfacc4 elementor-widget elementor-widget-autrics-feature"
                                                                    data-id="ccfacc4" data-element_type="widget"
                                                                    data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
																			<span class="feature-icon"> <i
                                                                                    class="icon icon-mechanic"></i>
																			</span>
                                                                        <!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3>
                                                                                <span><fmt:message
                                                                                        key="Expert" bundle="${Bundles}"/> </span><fmt:message
                                                                                    key="Mechanics" bundle="${Bundles}"/>
                                                                            </h3>
                                                                            <p><fmt:message
                                                                                    key="Most of the vehicles get damaged just because of maintenance neglect you take" bundle="${Bundles}"/></p>
                                                                        </div>
                                                                        <!-- feature content end -->
                                                                    </div>
                                                                    <!-- feature single end -->


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="elementor-element elementor-element-b9d04c8 elementor-column elementor-col-50 elementor-inner-column"
                                                        data-id="b9d04c8" data-element_type="column">
                                                    <div
                                                            class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div
                                                                    class="elementor-element elementor-element-65c9f0f elementor-widget elementor-widget-autrics-feature"
                                                                    data-id="65c9f0f" data-element_type="widget"
                                                                    data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
																			<span class="feature-icon"> <i
                                                                                    class="icon icon-price"></i>
																			</span>
                                                                        <!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3>
                                                                                <span><fmt:message
                                                                                        key="Reasonable" bundle="${Bundles}"/>  </span><fmt:message
                                                                                key="Price" bundle="${Bundles}"/>
                                                                            </h3>
                                                                            <p><fmt:message
                                                                                    key="Most of the vehicles get damaged just because of maintenance neglect you take" bundle="${Bundles}"/></p>
                                                                        <!-- feature content end -->
                                                                    </div>
                                                                    <!-- feature single end -->


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
                                                <div
                                                        class="elementor-element elementor-element-228cf8c elementor-column elementor-col-50 elementor-inner-column"
                                                        data-id="228cf8c" data-element_type="column">
                                                    <div
                                                            class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div
                                                                    class="elementor-element elementor-element-9cd29fa elementor-widget elementor-widget-autrics-feature"
                                                                    data-id="9cd29fa" data-element_type="widget"
                                                                    data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
																			<span class="feature-icon"> <i
                                                                                    class="icon icon-client"></i>
																			</span>
                                                                        <!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3>
                                                                                <span><fmt:message
                                                                                        key="Trusted" bundle="${Bundles}"/></span><fmt:message
                                                                                    key="by 5000 Clients" bundle="${Bundles}"/>
                                                                            </h3>
                                                                            <p><fmt:message
                                                                                    key="Most of the vehicles get damaged just because of maintenance neglect you take" bundle="${Bundles}"/></p>
                                                                        </div>
                                                                        <!-- feature content end -->
                                                                    </div>
                                                                    <!-- feature single end -->


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="elementor-element elementor-element-887f268 elementor-column elementor-col-50 elementor-inner-column"
                                                        data-id="887f268" data-element_type="column">
                                                    <div
                                                            class="elementor-column-wrap  elementor-element-populated">
                                                        <div class="elementor-widget-wrap">
                                                            <div
                                                                    class="elementor-element elementor-element-4fc253e elementor-widget elementor-widget-autrics-feature"
                                                                    data-id="4fc253e" data-element_type="widget"
                                                                    data-widget_type="autrics-feature.default">
                                                                <div class="elementor-widget-container">

                                                                    <div class="feature-single">
																			<span class="feature-icon"> <i
                                                                                    class="icon icon-fast"></i>
																			</span>
                                                                        <!-- feature icon -->
                                                                        <div class="feature-content">
                                                                            <h3>
                                                                                <span><fmt:message
                                                                                        key="Fast" bundle="${Bundles}"/> </span><fmt:message
                                                                                    key="feature Delivery" bundle="${Bundles}"/>
                                                                            </h3>
                                                                            <p><fmt:message
                                                                                    key="Most of the vehicles get damaged just because of maintenance neglect you take" bundle="${Bundles}"/></p>
                                                                        </div>
                                                                        <!-- feature content end -->
                                                                    </div>
                                                                    <!-- feature single end -->


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
                        <div
                                class="elementor-element elementor-element-f871a03 elementor-column elementor-col-50 elementor-top-column"
                                data-id="f871a03" data-element_type="column">
                            <div class="elementor-column-wrap">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap"></div>
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
                        <div
                                class="elementor-element elementor-element-d81666b elementor-column elementor-col-100 elementor-top-column"
                                data-id="d81666b" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-92c92f6 elementor-widget elementor-widget-autrics-title"
                                            data-id="92c92f6" data-element_type="widget"
                                            data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span><fmt:message
                                                            key="Our" bundle="${Bundles}"/></span><fmt:message
                                                        key="Working Process" bundle="${Bundles}"/>
                                                </h2>
                                            </div>
                                            <!-- Section title -->


                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-1cb489b elementor-widget elementor-widget-autrics-process"
                                            data-id="1cb489b" data-element_type="widget"
                                            data-widget_type="autrics-process.default">
                                        <div class="elementor-widget-container">


                                            <div class="row working-box-wrapper">
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_1">
                                                        <span class="working-left-shape"></span>
                                                        <div class="working-content-wrapper">
																<span class="workig-icon"> <i
                                                                        class="icon icon-request_quote"></i>
																</span>
                                                            <div class="working-content">
                                                                <h3>
                                                                    <span><fmt:message
                                                                            key="Request" bundle="${Bundles}"/></span><fmt:message
                                                                        key="Quote" bundle="${Bundles}"/>
                                                                </h3>
                                                                <p><fmt:message
                                                                        key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>
                                                            </div>
                                                            <!-- Working Content -->
                                                        </div>
                                                        <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div>
                                                    <!-- Working single box -->
                                                </div>
                                                <!-- Col End -->
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_2 bg-red">
                                                        <span class="working-left-shape"></span>
                                                        <div class="working-content-wrapper">
																<span class="workig-icon"> <i
                                                                        class="icon icon-car_1"></i>
																</span>
                                                            <div class="working-content">
                                                                <h3>
                                                                    <span><fmt:message
                                                                            key="Bring" bundle="${Bundles}"/></span><fmt:message
                                                                        key="Your Vehicle" bundle="${Bundles}"/>
                                                                </h3>
                                                                <p><fmt:message
                                                                        key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>
                                                            </div>
                                                            <!-- Working Content -->
                                                        </div>
                                                        <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div>
                                                    <!-- Working single box -->
                                                </div>
                                                <!-- Col End -->
                                                <div class="col-md-4">
                                                    <div class="working-single-box child_3 bg-red-light">
                                                        <div class="working-content-wrapper">
																<span class="workig-icon"> <i
                                                                        class="icon icon-car_2"></i>
																</span>
                                                            <div class="working-content">
                                                                <h3>
                                                                    <span><fmt:message
                                                                            key="Get" bundle="${Bundles}"/></span><fmt:message
                                                                        key="It Repaired" bundle="${Bundles}"/>
                                                                </h3>
                                                                <p><fmt:message
                                                                        key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>
                                                            </div>
                                                            <!-- Working Content -->
                                                        </div>
                                                        <!-- Working wrapper -->
                                                        <span class="working-right-shape"></span>
                                                    </div>
                                                    <!-- Working single box -->
                                                </div>
                                                <!-- Col End -->
                                            </div>
                                            <!-- Row End -->

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
                        <div
                                class="elementor-element elementor-element-885581e elementor-column elementor-col-100 elementor-top-column"
                                data-id="885581e" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-495b118 elementor-widget elementor-widget-autrics-title"
                                            data-id="495b118" data-element_type="widget"
                                            data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span> <span><fmt:message
                                                            key="Services" bundle="${Bundles}"/></span> <span><fmt:message
                                                            key="We Provide" bundle="${Bundles}"/>
                                                </h2>
                                            </div>
                                            <!-- Section title -->


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
                        <div
                                class="elementor-element elementor-element-2a0d5e2 elementor-column elementor-col-100 elementor-top-column"
                                data-id="2a0d5e2" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-e1c58b7 elementor-widget elementor-widget-autrics-service"
                                            data-id="e1c58b7" data-element_type="widget"
                                            data-widget_type="autrics-service.default">
                                        <div class="elementor-widget-container">


                                            <div data-nav="1" class="service-carousel owl-carousel">
                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">
																<img class="img-fluid" src="images/service_img61.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-oil"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/"><fmt:message
                                                                    key="Performance Upgrades" bundle="${Bundles}"/></a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">
																<img class="img-fluid" src="images/service_img51.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-engine"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">
                                                                <fmt:message key="Computer Diagnostics" bundle="${Bundles}"/></a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">
																<img class="img-fluid" src="images/service_img41.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-air_conditioning"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/"><fmt:message key="Anti-Lock Brake Service" bundle="${Bundles}"/></a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">
																<img class="img-fluid" src="images/service_img31.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-air_conditioning"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/"><fmt:message key="Air Conditioning Evac" bundle="${Bundles}"/> </a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">
																<img class="img-fluid" src="images/service_img21.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-computer"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/"><fmt:message key="Lube, vehicles damaged" bundle="${Bundles}"/> </a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->

                                                <div class="ts-service-wrapper">
														<span class="service-img"> <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">
																<img class="img-fluid" src="images/service_img11.jpg"
                                                                     alt="thumbnail">
														</a>
														</span>
                                                    <!-- Service Img end -->

                                                    <div class="service-content">
                                                        <div class="service-icon">
                                                            <i class="icon icon-performance"></i>
                                                        </div>
                                                        <!-- Service icon end -->

                                                        <h3 class="ts-service-title">
                                                            <a
                                                                    href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/"><fmt:message key="Engine Diagnostics Entire" bundle="${Bundles}"/> </a>
                                                        </h3>
                                                        <p><fmt:message key="Most of the vehicles get damage just because of maintain" bundle="${Bundles}"/></p>

                                                        <a
                                                                href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/"
                                                                class="readmore"><fmt:message key="Read More" bundle="${Bundles}"/><i
                                                                class="fa fa-angle-double-right"></i></a>


                                                    </div>
                                                    <!-- Service content end -->
                                                </div>
                                                <!-- Service wrapper end -->


                                            </div>
                                            <!-- Row end -->


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
                        <div
                                class="elementor-element elementor-element-223864f content-width-left content-width1 elementor-column elementor-col-50 elementor-top-column"
                                data-id="223864f" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-416a0b0 elementor-widget elementor-widget-autrics-title"
                                            data-id="416a0b0" data-element_type="widget"
                                            data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span><fmt:message key="Subscribe" bundle="${Bundles}"/></span> <fmt:message key="For Newsletter" bundle="${Bundles}"/>
                                                </h2>
                                            </div>
                                            <!-- Section title -->


                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-444e3d9 elementor-widget elementor-widget-shortcode"
                                            data-id="444e3d9" data-element_type="widget"
                                            data-widget_type="shortcode.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-shortcode">
                                                <script>
                                                    (function () {
                                                        if (!window.mc4wp) {
                                                            window.mc4wp = {
                                                                listeners: [],
                                                                forms: {
                                                                    on: function (
                                                                        event,
                                                                        callback) {
                                                                        window.mc4wp.listeners
                                                                            .push({
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
                                                <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-1065"
                                                      method="post" data-id="1065" data-name="">
                                                    <div class="mc4wp-form-fields">
                                                        <div class="contactMe newsletter-form">


                                                            <div class=" newsletter-box">
                                                                <input type="email" name="email"
                                                                       data-displayname="E-mail" class="field"
                                                                       placeholder="Your Email" required="">
                                                                <button class="btn btn-bordered" type="submit"
                                                                        data-sending="Sending..."
                                                                        data-text="<i class=&quot;fa fa-send&quot;>
																		</i>"><i class="fa fa-send"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <label style="display: none !important;">Leave
                                                        this field empty if you're human: <input type="text"
                                                                                                 name="_mc4wp_honeypot"
                                                                                                 value="" tabindex="-1"
                                                                                                 autocomplete="off"/>
                                                    </label><input type="hidden" name="_mc4wp_timestamp"
                                                                   value="1565178512"/><input type="hidden"
                                                                                              name="_mc4wp_form_id"
                                                                                              value="1065"/><input
                                                        type="hidden" name="_mc4wp_form_element_id"
                                                        value="mc4wp-form-1"/>
                                                    <div class="mc4wp-response"></div>
                                                </form>
                                                <!-- / Mailchimp for WordPress Plugin -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="elementor-element elementor-element-755cf73 skew-shap-right elementor-column elementor-col-50 elementor-top-column"
                                data-id="755cf73" data-element_type="column" id="content-width">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-background-overlay"></div>
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-884b607 elementor-widget elementor-widget-text-editor"
                                            data-id="884b607" data-element_type="widget"
                                            data-widget_type="text-editor.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-text-editor elementor-clearfix">
                                                <p>
														<span
                                                                style="font-family: Dosis, sans-serif; font-size: 20px;"><fmt:message key="We offer you" bundle="${Bundles}"/></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-01b9a3b elementor-widget elementor-widget-autrics-title"
                                            data-id="01b9a3b" data-element_type="widget"
                                            data-widget_type="autrics-title.default">
                                        <div class="elementor-widget-container">
                                            <div class="title-section-area">
                                                <h2 class="section-title">
                                                    <span><fmt:message key="Best Auto Repair Service" bundle="${Bundles}"/></span>
                                                </h2>
                                            </div>
                                            <!-- Section title -->


                                        </div>
                                    </div>
                                    <div
                                            class="elementor-element elementor-element-41280b6 btn btn-primary elementor-widget__width-auto elementor-widget elementor-widget-button"
                                            data-id="41280b6" data-element_type="widget"
                                            data-widget_type="button.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-button-wrapper">
                                                <a href="#"
                                                   class="elementor-button-link elementor-button elementor-size-sm"
                                                   role="button"> <span
                                                        class="elementor-button-content-wrapper"> <span
                                                        class="elementor-button-text"><fmt:message key="Contact us" bundle="${Bundles}"/></span>
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

            <!-- Footer -->
            <section
                    class="elementor-element elementor-element-5763c2e solid-bg elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section"
                    data-id="5763c2e" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div
                                class="elementor-element elementor-element-fe3fdab elementor-column elementor-col-100 elementor-top-column"
                                data-id="fe3fdab" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-d292ab9 elementor-widget elementor-widget-image-carousel"
                                            data-id="d292ab9" data-element_type="widget"
                                            data-settings="{&quot;slides_to_show&quot;:&quot;5&quot;,&quot;slides_to_scroll&quot;:&quot;5&quot;,&quot;navigation&quot;:&quot;none&quot;,&quot;slides_to_show_tablet&quot;:&quot;3&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;direction&quot;:&quot;ltr&quot;}"
                                            data-widget_type="image-carousel.default">
                                        <div class="elementor-widget-container">
                                            <div
                                                    class="elementor-image-carousel-wrapper elementor-slick-slider"
                                                    dir="ltr">
                                                <div class="elementor-image-carousel">
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img5.png" alt="client-img5"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img4.png" alt="client-img4"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img3.png" alt="client-img3"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img1-1.png" alt="client-img1"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img2.png" alt="client-img2"/>
                                                        </figure>
                                                    </div>
                                                    <div class="slick-slide">
                                                        <figure class="slick-slide-inner">
                                                            <img class="slick-slide-image"
                                                                 src="images/client-img1.png" alt="client-img1"/>
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
                        <div
                                class="elementor-element elementor-element-663c0c5 elementor-column elementor-col-100 elementor-top-column"
                                data-id="663c0c5" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div
                                            class="elementor-element elementor-element-338fc8d elementor-widget elementor-widget-autrics-process"
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
                                                </div>
                                                <!-- Box 1 end-->
                                                <div class="col-md-4 footer-box">
                                                    <i class="icon icon-phone1"></i>
                                                    <div class="footer-box-content">
                                                        <h3>+(91) 458 654 528</h3>
                                                        <p><fmt:message key="Give us a call" bundle="${Bundles}"/></p>
                                                    </div>
                                                    <span class="angle-shap"></span>

                                                </div>
                                                <!-- Box 1 end-->
                                                <div class="col-md-4 footer-box">
                                                    <i class="icon icon-envelope1"></i>
                                                    <div class="footer-box-content">
                                                        <h3>info@domain.com</h3>
                                                        <p>24/7 online support</p>
                                                    </div>
                                                </div>
                                                <!-- Box 1 end-->
                                            </div>
                                            <!-- Content row end-->


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
                                            href="http://demo.themewinter.com/wp/autrics/service/performance-upgrades/">Performance
                                        Upgrades</a>
                                </li>
                                <li id="menu-item-1595"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1595">
                                    <a
                                            href="http://demo.themewinter.com/wp/autrics/service/computer-diagnostics/">Computer
                                        Diagnostics</a>
                                </li>
                                <li id="menu-item-1596"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1596">
                                    <a
                                            href="http://demo.themewinter.com/wp/autrics/service/anti-lock-brake-service/">Anti-Lock
                                        Brake Service</a>
                                </li>
                                <li id="menu-item-1597"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1597">
                                    <a
                                            href="http://demo.themewinter.com/wp/autrics/service/air-conditioning-evac/">Air
                                        Conditioning Evac</a>
                                </li>
                                <li id="menu-item-1598"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1598">
                                    <a
                                            href="http://demo.themewinter.com/wp/autrics/service/lube-oil-and-filters/">Lube,
                                        vehicles damaged just</a>
                                </li>
                                <li id="menu-item-1599"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1599">
                                    <a
                                            href="http://demo.themewinter.com/wp/autrics/service/engine-diagnostics/">Engine
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
                        <ul>
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
                        </ul>
                    </div>
                </div>
                <!-- Col End -->
                <div class="col-lg-3 col-md-6 footer-widget">
                    <div id="xs-service-3" class="widget automobil-widget">
                        <h4 class="widget-title">
                            <span>Service </span> Hours
                        </h4>
                        <jsp:include page="inc/WorkingTimesDownPage.jsp"/>


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
                                        href="#"><fmt:message key="Terms" bundle="${Bundles}"/></a></li>
                                <li id="menu-item-86"
                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-86"><a
                                        href="#"><fmt:message key="Privacy Policy" bundle="${Bundles}"/></a></li>
                                <li id="menu-item-83"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-83"><a
                                        href="contact.html"><fmt:message key="Contact" bundle="${Bundles}"/></a></li>
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
<!-- Footer End -->

<jsp:include page="inc/FooterScripts.jsp"/>

</body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1565178512 -->
