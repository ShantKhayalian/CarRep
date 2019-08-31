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
            <a href="<%=request.getContextPath()%>/AdminSignInCheck">
                <i class="material-icons">home</i>
                <span>Home</span>
            </a>
        </li>
        <%--//////////////////////////////////////////////////////////////////////////////////////////Հիմնական նավիգացիան--%>
        <%--//////////////////////////////////////////////////////////////////////////////////////////Ադմին վերահսկիչ--%>
        <li>
            <a href="<%=request.getContextPath()%>/ToAdminUpdatPage">
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
                    <a href="<%=request.getContextPath()%>/AboutUsEng">
                        <span>About us English</span>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/AboutUsRus">
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
                    <a href="<%=request.getContextPath()%>/ShowAllEmployee">
                        <span>Show All</span>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/AddNewEmployee">
                        <span>Add new</span>
                    </a>
                </li>
            </ul>

            <%--//////////////////////////////////////////////////////////////////////////////////////////Employee Section--%>
            <%--//////////////////////////////////////////////////////////////////////////////////////////Vehicle tips Section--%>
        <li>
            <a href="javascript:void(0);" class="menu-toggle">
                <i class="material-icons">directions_car</i>
                <span>Vehicle tips</span>
            </a>
            <ul class="ml-menu">
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <span>Vehicle tips</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/AddTipsEng">
                                <span>Add Vehicle tips</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <span>Vehicle tips controller</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/TipsEng">
                                <span>Vehicle tips English</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/TipsRus">
                                <span>Vehicle tips Russian</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>

                    <%--//////////////////////////////////////////////////////////////////////////////////////////Vehicle tips Section--%>
                    <%--//////////////////////////////////////////////////////////////////////////////////////////Service Section--%>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">directions_car</i>
                    <span>Services</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Oil Filter Change</span>
                        </a>
                        <ul class="ml-menu">
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Update Oil Filter change</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="<%=request.getContextPath()%>/OilFilterEng">
                                            <span>Update English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/OilFilterRus">
                                            <span>Update Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Change PM</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Change PM controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="<%=request.getContextPath()%>/ChangePMEng">
                                            <span>Update Change PM English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/ChangePMRus">
                                            <span>Update Change PM Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Computer Diagnostics</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Computer Diagnostics controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="<%=request.getContextPath()%>/CDEng">
                                            <span>Computer Diagnostics English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/CDRus">
                                            <span>Computer Diagnostics Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Electrician</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Electrician controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="<%=request.getContextPath()%>/EEng">
                                            <span>Electrician English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/ERus">
                                            <span>Electrician Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Diagnostics Repair</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Diagnostics Repair controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="DREng">
                                            <span>Diagnostics Repair English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="DRRus">
                                            <span>Diagnostics Repair Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Conditioners</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Conditioners controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="<%=request.getContextPath()%>/CEng">
                                            <span>Conditioners English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath()%>/CRus">
                                            <span>Conditioners Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Replacement Discs</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Replacement Discs controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="RPBDiscsEng">
                                            <span>Replacement Discs English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="RPBDiscsRus">
                                            <span>Replacement Discs Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Suspension Repair</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Suspension Repair controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="SREng">
                                            <span>Suspension Repair English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="SRRus">
                                            <span>Suspension Repair Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>

                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Engine Diagnostics Repair</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Engine Diagnostics Repair controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="EDREng">
                                            <span>Engine Diagnostics Repair English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="EDRRus">
                                            <span>Engine Diagnostics Repair Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span>Gathering Collapse</span>
                        </a>
                        <ul class="ml-menu">

                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Gathering Collapse controller</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="GCEng">
                                            <span>Gathering Collapse English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="GCRus">
                                            <span>Gathering Collapse Russian</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </li>

                </ul>
            </li>
            </ul>
        </li>
    </ul>

</div>
<!-- Menu -->
