<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Master admin </title>
    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Master admin</title>
        <!-- Favicon-->
        <link rel="icon" href="<%=request.getContextPath()%>/favicon.ico" type="image/x-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="<%=request.getContextPath()%>/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="<%=request.getContextPath()%>/plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="<%=request.getContextPath()%>/plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Custom Css -->
        <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">

        <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
        <link href="<%=request.getContextPath()%>/css/themes/all-themes.css" rel="stylesheet" />
    </head>
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
    <jsp:include page="inc/adminHead.jsp"/>
</nav>
<!-- #Top Bar -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <jsp:include page="inc/leftSideAdmin.jsp"/>
        <!-- #User Info -->
       <jsp:include page="inc/Menu.jsp"/>
        <!-- Footer -->
        <jsp:include page="inc/Version.jsp"/>
        <!-- #Footer -->
    </aside>
    <!-- #END# Left Sidebar -->
    <!-- Right Sidebar -->

    <!-- #END# Right Sidebar -->
</section>

<section class="content">
    <div class="container-fluid">
        <div class="block-header">

        </div>

        <!-- CKEditor -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <c:if test="${requestScope.oilFilterChangeList != null}">
                    <c:forEach items="${requestScope.oilFilterChangeList}" var="tips">
                    <form action="UpdateOilFilterEnglishInData" method="post">
                        <div class="header">
                            <h2>
                                Tips in English for Id ${tips.id}
                            </h2>
                            <div >
                                <%
                                    if (request.getAttribute("message") != null) {
                                %>
                                <%=request.getAttribute("message")%>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="body">

                            <textarea id="ckeditor" name="TipsText">
                               ${tips.oilfilterchangeeng}
                                 </textarea>


                        </div>
                        <button type="submit" class="btn btn-info waves-effect right">Update</button>
                        <input type="hidden" value="${tips.id}" name="TipsId" >
                    </form>
                    </c:forEach>
                    </c:if>
                </div>
            </div>
            <!-- #END# CKEditor -->

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

<!-- Ckeditor -->
<script src="<%=request.getContextPath()%>/plugins/ckeditor/ckeditor.js"></script>

<!-- TinyMCE -->
<script src="<%=request.getContextPath()%>/plugins/tinymce/tinymce.js"></script>

<!-- Custom Js -->
<script src="<%=request.getContextPath()%>/js/admin.js"></script>
<script src="<%=request.getContextPath()%>/js/pages/forms/editors.js"></script>

<!-- Demo Js -->
<script src="<%=request.getContextPath()%>/js/demo.js"></script>
</body>

</html>

