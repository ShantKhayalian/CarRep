<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Master admin </title>
    <meta charset="UTF-8">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Favicon-->
    <link rel="icon" href="<%=request.getContextPath()%>/favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="<%=request.getContextPath()%>/plugins/node-waves/waves.css" rel="stylesheet"/>

    <!-- Animation Css -->
    <link href="<%=request.getContextPath()%>/plugins/animate-css/animate.css" rel="stylesheet"/>

    <!-- Custom Css -->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="<%=request.getContextPath()%>/css/themes/all-themes.css" rel="stylesheet"/>
</head>
<body class="theme-deep-purple">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="preloader">
            <div class="spinner-layer pl-red">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <p>Please wait...</p>
    </div>
</div>
<!-- #END# Page Loader -->
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->
<!-- Search Bar -->
<div class="search-bar">
    <div class="search-icon">
        <i class="material-icons">search</i>
    </div>
    <input type="text" placeholder="START TYPING...">
    <div class="close-search">
        <i class="material-icons">close</i>
    </div>
</div>
<!-- #END# Search Bar -->
<!-- Top Bar -->
<nav class="navbar">
    <jsp:include page="../inc/adminHead.jsp"/>
</nav>
<!-- #Top Bar -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <jsp:include page="../inc/leftSideAdmin.jsp"/>
        <!-- #User Info -->
        <jsp:include page="../inc/Menu.jsp"/>
        <!-- Footer -->
        <jsp:include page="../inc/Version.jsp"/>
        <!-- #Footer -->
    </aside>
    <!-- #END# Left Sidebar -->
    <!-- Right Sidebar -->

    <!-- #END# Right Sidebar -->
</section>

<section class="content">
    <div class="container-fluid">
        <!-- Input -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <c:if test="${requestScope.employeeList != null}">
                        <c:forEach items="${requestScope.employeeList}" var="Employee" varStatus="page">
                            <div class="body">
                                <h2 class="card-inside-title">Update Employee form</h2>
                                <%
                                    if (request.getAttribute("message") != null) {
                                %>
                                <%=request.getAttribute("message")%>
                                <%
                                    }
                                %>
                                <div class="row clearfix">
                                    <div class="col-sm-12">
                                        <form action="UpdateEmployeToData" method="post">
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="FirstNameEng" id="FirstNameEng" class="form-control"
                                                           value=" ${Employee.firstName}"/>
                                                    <label class="form-label">First Name English</label>


                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="FirstNameRus" id="FirstNameRus" class="form-control"
                                                           value="${Employee.firstNamRue}"/>
                                                    <label class="form-label">First Name Russian</label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="LastNameEng" id="LastNameEng" class="form-control"
                                                           value="${Employee.lastName}"/>
                                                    <label class="form-label">Last Name English</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="LastNameRus" id="LastNameRus" class="form-control"
                                                           value="${Employee.lastNameRu}"/>
                                                    <label class="form-label">Last Name Russian</label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="SpecialtyEng" class="form-control"
                                                           value="${Employee.perfession}"/>
                                                    <label class="form-label">Specialty English</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="SpecialtyRus" class="form-control"
                                                           value="${Employee.perfessionRu}"/>
                                                    <label class="form-label">Specialty Russian</label>
                                                </div>
                                            </div>

                                            <div class="input-group date" id="bs_datepicker_component_container">
                                                <div class="form-line">
                                                    <input type="text" name="Date" class="form-control"
                                                           value="${Employee.dateOfBirth}">
                                                    <label class="form-label">Please choose a date...</label>
                                                </div>
                                                <span class="input-group-addon">
                                            <i class="material-icons">date_range</i>
                                        </span>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="Experience" class="form-control"
                                                           value="${Employee.experianceYears}"/>
                                                    <label class="form-label">Experience by years </label>

                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="PhoneNumber" class="form-control"
                                                           value="${Employee.phoneNumber}"/>
                                                    <label class="form-label">Phone number</label>
                                                </div>
                                            </div>

                                            <div class=" form-group">
                                                <div class="form-line">
                                                    <input type="text" name="email" class="form-control"
                                                           value="${Employee.email}"/>
                                                    <label class="form-label">email</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="AddressEng" class="form-control"
                                                           value="${Employee.address}"/>
                                                    <label class="form-label">Address English</label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="form-line">
                                                    <input type="text" name="AddressRus" class="form-control"
                                                           value="${Employee.addressRu}"/>
                                                    <label class="form-label">Address Russian</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn bg-blue waves-effect">
                                                    <i class="material-icons">verified_user</i>
                                                    <span>UPDATE</span>
                                                </button>
                                                <input type="hidden" name="EmployeeId" value="${Employee.id}">
                                            </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

</section>

<!-- Jquery Core Js -->
<script src="<%=request.getContextPath()%>/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!-- Slimscroll Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/node-waves/waves.js"></script>

<!-- Autosize Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/autosize/autosize.js"></script>

<!-- Moment Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/momentjs/moment.js"></script>

<!-- Bootstrap Material Datetime Picker Plugin Js -->

<script src="<%=request.getContextPath()%>/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

<!-- Bootstrap Datepicker Plugin Js -->
<script src="<%=request.getContextPath()%>/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<!-- Custom Js -->
<script src="<%=request.getContextPath()%>/js/admin.js"></script>
<script src="<%=request.getContextPath()%>/js/pages/forms/basic-form-elements.js"></script>

<!-- Demo Js -->
<script src="<%=request.getContextPath()%>/js/demo.js"></script>

</body>

</html>

