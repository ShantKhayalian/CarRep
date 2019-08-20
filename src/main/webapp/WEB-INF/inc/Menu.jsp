<%--
  Created by IntelliJ IDEA.
  User: Shant
  Date: 8/20/2019
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Menu -->
<div class="menu">
    <ul class="list">
        <%--//////////////////////////////////////////////////////////////////////////////////////////Հիմնական նավիգացիան--%>
        <li class="header">Navigation</li>
        <li>
            <a href="AdminSignInCheck">
                <i class="material-icons">home</i>
                <span>Home</span>
            </a>
        </li>
        <%--//////////////////////////////////////////////////////////////////////////////////////////Հիմնական նավիգացիան--%>
        <%--//////////////////////////////////////////////////////////////////////////////////////////Ադմին վերահսկիչ--%>
        <li>
            <a href="ToAdminUpdatPage">
                <i class="material-icons">face</i>
                <span>Update admin details</span>
            </a>
        </li>
        <%--//////////////////////////////////////////////////////////////////////////////////////////Ադմին վերահսկիչ--%>
        <%--//////////////////////////////////////////////////////////////////////////////////////////About us Section--%>
        <li>
            <a href="javascript:void(0);" class="menu-toggle">
                <i class="material-icons">control_point_duplicate</i>
                <span>About Us</span>
            </a>
            <ul class="ml-menu">
                <li>
                    <a href="AboutUsEng">
                        <span>About us English</span>
                    </a>
                </li>
                <li>
                    <a href="AboutUsRus">
                        <span>About us Russian</span>
                    </a>
                </li>

            </ul>
            <%--//////////////////////////////////////////////////////////////////////////////////////////About us Section--%>
            <%--//////////////////////////////////////////////////////////////////////////////////////////Employee Section--%>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">accessibility</i>
                    <span>Employee</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="ShowAllEmployee">
                            <span>Show All</span>
                        </a>
                    </li>
                    <li>
                        <a href="AddNewEmployee">
                            <span>Add new</span>
                        </a>
                    </li>

                </ul>
                <%--//////////////////////////////////////////////////////////////////////////////////////////Employee Section--%>
        </li>
    </ul>
</div>
<!-- Menu -->
