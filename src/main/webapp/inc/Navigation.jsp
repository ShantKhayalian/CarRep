<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/24/2019
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <img src="images/logo-white-.png" alt="Car Repair Services and Auto Mechanic">
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
                        <li
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
                        <li
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
                                            key="Diagnostics and repair" bundle="${Bundles}"/></a>
                                <li id="menu-item-1708"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                    <a href="ComputerDiagnostics?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Computer diagnostics"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-1708"
                                    class="menu-item menu-item-type-post_type menu-item-object-ts_service menu-item-1708 nav-item">
                                    <a href="ChangeРМ?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Change Timing"
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
                        <li
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
                        <li
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-57 nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><fmt:message
                                    key="Detailing" bundle="${Bundles}"/></a>
                            <ul class="dropdown-menu">
                                <li id="menu-item-60"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60 nav-item">
                                    <a href="TinPaintingWork?Pagelanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Car wrapping"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-59"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59 nav-item">
                                    <a href="CarBodyPainting?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Tinting"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-58"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-58 nav-item">
                                    <a href="BodyPolishing?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Ceramic coating"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-62"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-62 nav-item">
                                    <a href="DentRemovalWithoutPainting?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message
                                            key="Sound insulation and vibration isolation" bundle="${Bundles}"/></a>
                                <li id="menu-item-1691"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1691 nav-item">
                                    <a href="BodyGeometryRestoration?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Pre-sale preparation"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-1692"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                    <a href="WeldingWork?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Disk restoration"
                                                                           bundle="${Bundles}"/></a>
                                <li id="menu-item-1692"
                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1692 nav-item">
                                    <a href="LocalDentRemoval?PageLanguage=${requestScope.Pagelanguage}"
                                       class=" dropdown-item"><fmt:message key="Body kit"
                                                                           bundle="${Bundles}"/></a>

                                </li>
                            </ul>
                        <li
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

                    </ul>
                    </li>
                    </ul>
                </div>
            </div>
