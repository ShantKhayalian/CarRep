<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/17/2019
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.*" %>
<%@page isELIgnored="false" %>
<fmt:setLocale value="${requestScope.Pagelanguage}"/>

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