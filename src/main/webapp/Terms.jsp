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

<body class="home page-template page-template-template page-template-homepage-template page-template-templatehomepage-template-php page page-id-35 woocommerce-no-js  elementor-default elementor-page elementor-page-35" >
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
                        <i class="icon icon-clock"></i><span> <fmt:message key="We" bundle="${Bundles}"/>&#039;<fmt:message key="are Open:" bundle="${Bundles}"/> <fmt:message key="Mon - Sat" bundle="${Bundles}"/> 8:00 - 18:00</span>
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
                                        <a href="Terms?PageLanguage=en_US" class=" dropdown-item"><fmt:message
                                                key="English" bundle="${Bundles}"/></a>
                                    <li id="menu-item-2082"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2082 nav-item">
                                        <a href="Terms?PageLanguage=ru_RU" class=" dropdown-item"><fmt:message
                                                key="Russian" bundle="${Bundles}"/></a>
                                </ul>
                            </li>

                        </ul>
                        </li>
                        </ul>
                    </div>
                </div>
    </div> <!-- End of Header Angle-->



</header><!-- Header end -->

<div class="banner-area bg-overlay  " id="banner-area" style="background-image:url('images/about_banner1.jpg');">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-heading">
                    <h1 class="banner-title">
                        <fmt:message
                        key="Terms" bundle="${Bundles}"/>
                    </h1>

                    <ol class="breadcrumb" data-wow-duration="2s"><li><a href="App?PageLanguage=${requestScope.PageLanguage}><fmt:message
                            key="Home" bundle="${Bundles}"/></a></li>   <li><fmt:message
                            key="Terms" bundle="${Bundles}"/></li></ol>                           </div><!-- Banner Heading end -->
            </div><!-- Col end-->
        </div><!-- Row end-->
    </div><!-- Container end-->
</div>
<div id="post-43" class="home-full-width-content post-43 page type-page status-publish hentry" role="main">
    <div class="builder-content">
        <div data-elementor-type="post" data-elementor-id="43" class="elementor elementor-43 elementor-bc-flex-widget" data-elementor-settings="[]">
            <div class="elementor-inner">
                <div class="elementor-section-wrap">
                    <section class="elementor-element elementor-element-08a0e01 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="08a0e01" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-16645af elementor-column elementor-col-100 elementor-top-column" data-id="16645af" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <section class="elementor-element elementor-element-49a71ab elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section" data-id="49a71ab" data-element_type="section">
                                                <div class="elementor-container elementor-column-gap-default">
                                                    <div class="elementor-row">
                                                        <div class="elementor-element elementor-element-65c9d07 skew-shap elementor-column elementor-col-50 elementor-inner-column" data-id="65c9d07" data-element_type="column">
                                                            <div class="elementor-column-wrap  elementor-element-populated">
                                                                <div class="elementor-widget-wrap">
                                                                    <div class="elementor-element elementor-element-2cbb54d elementor-hidden-tablet elementor-hidden-phone elementor-widget elementor-widget-image" data-id="2cbb54d" data-element_type="widget" data-widget_type="image.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-image">
                                                                                <img width="635" height="375" src="images/about-img21.jpg" class="attachment-large size-large" alt="" srcset="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/about-img21.jpg 635w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/about-img21-600x354.jpg 600w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/about-img21-300x177.jpg 300w" sizes="(max-width: 635px) 100vw, 635px" />                     </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="elementor-element elementor-element-2275c61 elementor-column elementor-col-50 elementor-inner-column" data-id="2275c61" data-element_type="column">
                                                            <div class="elementor-column-wrap  elementor-element-populated">
                                                                <div class="elementor-widget-wrap">
                                                                    <div class="elementor-element elementor-element-bd10e4d elementor-view-stacked elementor-shape-square elementor-widget elementor-widget-icon" data-id="bd10e4d" data-element_type="widget" data-widget_type="icon.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-icon-wrapper">
                                                                                <div class="elementor-icon">
                                                                                    <i class="icon icon-repair" aria-hidden="true"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-34820fa elementor-widget elementor-widget-autrics-title" data-id="34820fa" data-element_type="widget" data-widget_type="autrics-title.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="title-section-area title-border-none">
                                                                                <h3 class="section-title">
                                                                                    <span>20 Years</span> Experience            </h3>
                                                                            </div><!-- Section title -->


                                                                        </div>
                                                                    </div>
                                                                    <div class="elementor-element elementor-element-b5c3d5e elementor-widget elementor-widget-text-editor" data-id="b5c3d5e" data-element_type="widget" data-widget_type="text-editor.default">
                                                                        <div class="elementor-widget-container">
                                                                            <div class="elementor-text-editor elementor-clearfix">
                                                                                <c:if test="${requestScope.aboutUsList != null}">
                                                                                    <c:forEach items="${requestScope.aboutUsList}" var="language">
                                                                                        <c:set value="${requestScope.Pagelanguage}" var="Lang"/>
                                                                                        <c:choose>
                                                                                        <c:when test="${Lang == 'ru_RU'}">
                                                                                            <p>${language.aboutUs_Rus}/></p>
                                                                                        </c:when>
                                                                                        <c:otherwise>
                                                                                            <p>${language.aboutUs_Eng}</p>
                                                                                        </c:otherwise>
                                                                                        </c:choose>
                                                                                    </c:forEach>

                                                                                </c:if>
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
                    <section class="elementor-element elementor-element-28c98ce elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="28c98ce" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-838d034 elementor-column elementor-col-50 elementor-top-column" data-id="838d034" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-9f10f27 elementor-widget elementor-widget-autrics-about-us-tab" data-id="9f10f27" data-element_type="widget" data-widget_type="autrics-about-us-tab.default">
                                                <div class="elementor-widget-container">

                                                    <div class="row about-us">
                                                        <div class="col-lg-4 col-md-4">
                                                            <ul class="nav nav-tabs ts-tab" id="myTab" role="tablist">
                                                                <li class="nav-item">
                                                                    <a class="nav-link active" id="history-0-tab" data-toggle="tab" href="#history-0" role="tab" aria-controls="history-0" aria-selected="true">
                                                                        <i class="icon-history"></i>History</a>
                                                                </li>
                                                                <li class="nav-item">
                                                                    <a class="nav-link " id="our-mission-1-tab" data-toggle="tab" href="#our-mission-1" role="tab" aria-controls="our-mission-1" aria-selected="true">
                                                                        <i class="icon-history"></i>Our MIssion</a>
                                                                </li>
                                                                <li class="nav-item">
                                                                    <a class="nav-link " id="our-vission-2-tab" data-toggle="tab" href="#our-vission-2" role="tab" aria-controls="our-vission-2" aria-selected="true">
                                                                        <i class="icon-history"></i>Our VIssion</a>
                                                                </li>
                                                            </ul><!-- ul end -->
                                                        </div><!-- Col end -->
                                                        <div class="col-lg-8 col-md-8 about-us">
                                                            <div class="tab-content ts-tab-content" id="myTabContent">
                                                                <div class="tab-pane fade show active" id="history-0" role="tabpanel" aria-labelledby="history-0-tab">
                                                                    <h2 class="column-title-sm">
                                                                        <span> Autrics</span> was founded in 1999 at USA                   </h2>
                                                                    <p>
                                                                    <p>A wonderful serenity taken possession into entire soul also like these sweet morni spring which thing of an existence in this spot, which was the main partcreated for the bliss often souls like mine.</p><ul class="list-round-solid"><li>Share best practices and hitech product knowledge</li><li>Collaborate with technology</li><li>Technology, information security, and business partners</li></ul>                  </p>
                                                                </div> <!-- tab pane end -->
                                                                <div class="tab-pane fade show " id="our-mission-1" role="tabpanel" aria-labelledby="our-mission-1-tab">
                                                                    <h2 class="column-title-sm">
                                                                        <span> Autrics</span> Technology security,                  </h2>
                                                                    <p>
                                                                    <p>A wonderful serenity taken possession into entire soul also like these sweet morni spring which thing of an existence in this spot, which was the main partcreated for the bliss often souls like mine.</p><ul class="list-round-solid"><li>Share best practices and hitech product knowledge</li><li>Collaborate with technology</li><li>Technology, information security, and business partners</li></ul>                  </p>
                                                                </div> <!-- tab pane end -->
                                                                <div class="tab-pane fade show " id="our-vission-2" role="tabpanel" aria-labelledby="our-vission-2-tab">
                                                                    <h2 class="column-title-sm">
                                                                        <span> Autrics</span> Collaborate with technology                  </h2>
                                                                    <p>
                                                                    <p>A wonderful serenity taken possession into entire soul also like these sweet morni spring which thing of an existence in this spot, which was the main partcreated for the bliss often souls like mine.</p><ul class="list-round-solid"><li>Share best practices and hitech product knowledge</li><li>Collaborate with technology</li><li>Technology, information security, and business partners</li></ul>                  </p>
                                                                </div> <!-- tab pane end -->
                                                            </div> <!-- tab content -->
                                                        </div> <!-- col end -->
                                                    </div><!-- Row end -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-178506d elementor-column elementor-col-50 elementor-top-column" data-id="178506d" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-6cb1530 elementor-widget elementor-widget-image" data-id="6cb1530" data-element_type="widget" data-widget_type="image.default">
                                                <div class="elementor-widget-container">
                                                    <div class="elementor-image">
                                                        <img width="425" height="348" src="images/our-history1.png" class="attachment-large size-large" alt="" srcset="http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/our-history1.png 425w, http://demo.themewinter.com/wp/autrics/wp-content/uploads/2019/01/our-history1-300x246.png 300w" sizes="(max-width: 425px) 100vw, 425px" />                      </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-bbb7da3 solid-bg elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="bbb7da3" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-e384d29 elementor-column elementor-col-100 elementor-top-column" data-id="e384d29" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-8d1e6fa elementor-widget elementor-widget-image-carousel" data-id="8d1e6fa" data-element_type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;5&quot;,&quot;slides_to_scroll&quot;:&quot;5&quot;,&quot;navigation&quot;:&quot;none&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;direction&quot;:&quot;ltr&quot;}" data-widget_type="image-carousel.default">
                                                <div class="elementor-widget-container">
                                                    <div class="elementor-image-carousel-wrapper elementor-slick-slider" dir="ltr">
                                                        <div class="elementor-image-carousel">
                                                            <div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img5.png" alt="client-img5" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img4.png" alt="client-img4" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img3.png" alt="client-img3" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img1-1.png" alt="client-img1" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img2.png" alt="client-img2" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img1.png" alt="client-img1" /></figure></div>      </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="elementor-element elementor-element-89314f4 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="89314f4" data-element_type="section">
                        <div class="elementor-container elementor-column-gap-default">
                            <div class="elementor-row">
                                <div class="elementor-element elementor-element-f6c607f elementor-column elementor-col-100 elementor-top-column" data-id="f6c607f" data-element_type="column">
                                    <div class="elementor-column-wrap  elementor-element-populated">
                                        <div class="elementor-widget-wrap">
                                            <div class="elementor-element elementor-element-067d74f elementor-widget elementor-widget-autrics-process" data-id="067d74f" data-element_type="widget" data-widget_type="autrics-process.default">
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
            <!-- Footer -->
            <section class="elementor-element elementor-element-5763c2e solid-bg elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="5763c2e" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-fe3fdab elementor-column elementor-col-100 elementor-top-column" data-id="fe3fdab" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-d292ab9 elementor-widget elementor-widget-image-carousel" data-id="d292ab9" data-element_type="widget" data-settings="{&quot;slides_to_show&quot;:&quot;5&quot;,&quot;slides_to_scroll&quot;:&quot;5&quot;,&quot;navigation&quot;:&quot;none&quot;,&quot;slides_to_show_tablet&quot;:&quot;3&quot;,&quot;pause_on_hover&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;autoplay_speed&quot;:5000,&quot;infinite&quot;:&quot;yes&quot;,&quot;speed&quot;:500,&quot;direction&quot;:&quot;ltr&quot;}" data-widget_type="image-carousel.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-image-carousel-wrapper elementor-slick-slider" dir="ltr">
                                                <div class="elementor-image-carousel">
                                                    <div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img5.png" alt="client-img5" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img4.png" alt="client-img4" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img3.png" alt="client-img3" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img1-1.png" alt="client-img1" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img2.png" alt="client-img2" /></figure></div><div class="slick-slide"><figure class="slick-slide-inner"><img class="slick-slide-image" src="images/client-img1.png" alt="client-img1" /></figure></div>			</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="elementor-element elementor-element-619e197 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="619e197" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-row">
                        <div class="elementor-element elementor-element-663c0c5 elementor-column elementor-col-100 elementor-top-column" data-id="663c0c5" data-element_type="column">
                            <div class="elementor-column-wrap  elementor-element-populated">
                                <div class="elementor-widget-wrap">
                                    <div class="elementor-element elementor-element-338fc8d elementor-widget elementor-widget-autrics-process" data-id="338fc8d" data-element_type="widget" data-widget_type="autrics-process.default">
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

<jsp:include page="inc/FooterScripts.jsp"/>

</body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1565178512 -->
