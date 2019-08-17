<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/17/2019
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- User Info -->
<div class="user-info">
    <div class="image">
        <%--<img src="<%=request.getAttribute("adminPhoto")%>" width="100" height="100"
             alt="<%=request.getAttribute("username")%>"/>--%>
    </div>
    <div class="info-container">
        <div class="name" data-toggle="dropdown" aria-haspopup="true"
             aria-expanded="false">Welcome admin <%=request.getAttribute("username")%>
        </div>
        <%--<div class="email"><%=request.getAttribute("adminPhoneNumber")%>--%>
    </div>

</div>
<!-- #User Info -->
