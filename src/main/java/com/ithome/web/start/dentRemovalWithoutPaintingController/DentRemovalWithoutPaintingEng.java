package com.ithome.web.start.dentRemovalWithoutPaintingController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.Dental;
import com.ithome.web.start.Beans.SuspensionRepair;
import com.ithome.web.start.DaoController.DentalDao;
import com.ithome.web.start.DaoController.SuspensionRepairDao;
import com.ithome.web.start.Helpers.AdminChecker;
import com.ithome.web.start.Helpers.SessionChecker;


@WebServlet("/DentRemovalWithoutPaintingEng")
public class DentRemovalWithoutPaintingEng extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<Dental> list = new ArrayList<>();

    private DentalDao dao = new DentalDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dentRemovalWithoutPaintingEng(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dentRemovalWithoutPaintingEng(request, response);
    }

    private void dentRemovalWithoutPaintingEng(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getText();
        setRequestToEnglish(request);
        goBackToPage(request, response);
    }

    private void goBackToPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Den/DenEnglish.jsp").forward(request, response);
    }

    private void setRequestToEnglish(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("list", list);
    }

    private void getText() {
        list = dao.getEng();
    }

    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        getSession(session, request, response);
    }

    /*
    Fill admin
    in list
    with the
    specific id
     **
    @param
    adminid
     */

    private void getFullAdminList(int adminid) {
        adminList = adminChecker.getAllInfoofAdmin(adminid);
    }

    /*
    get admin
    admin id
    by username
    from session
     *
             *
    @param
    request
     *
    @param
    response
     */

    private void getAdminInfo(HttpServletRequest request, HttpServletResponse response) {
        adminId = adminChecker.getAdminId(username);
        getFullAdminList(adminId);
    }

    /**
     * Session of uadmin if no session true send to login page else get the seesion key
     *
     * @param session
     * @param request
     * @param response
     * @throws IOException
     */
    private void getSession(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (checker.checkSession(request, response)) {
            username = checker.requestSessionofAdmin(session);
        } else {
            response.sendRedirect("/admin/SignIn.jsp");
        }
    }

}
