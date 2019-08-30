package com.ithome.web.start.ComputerDiagnosticController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.ChangeРМ;
import com.ithome.web.start.Beans.ComputerDiagnostics;
import com.ithome.web.start.DaoController.ChangeРМDao;
import com.ithome.web.start.DaoController.ComputerDiagnosticsDao;
import com.ithome.web.start.Helpers.AdminChecker;
import com.ithome.web.start.Helpers.SessionChecker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/UpdateCDInEnglish")
public class UpdateCDInEnglish extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<ComputerDiagnostics> computerDiagnosticsList = new ArrayList<>();

    private ComputerDiagnosticsDao computerDiagnosticsDao = new ComputerDiagnosticsDao();

    private int id = 0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateOilFilterInEnglish(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateOilFilterInEnglish(request,response);
    }

    private void updateOilFilterInEnglish(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        getCDEnglishById(id);
        setRequestToCDEnglish(request);
        goBackToPage(request,response);
    }

    private void goBackToPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/CD/CDEnglishWithId.jsp").forward(request, response);
    }

    private void setRequestToCDEnglish(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("ComputerDiagnosticsList", computerDiagnosticsList);
    }

    private void getCDEnglishById(int id) {
        computerDiagnosticsList = computerDiagnosticsDao.getCDInEnglishById(id);
    }


    private void getParameters(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("Id"));
    }

    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        getSession(session, request, response);
    }

    /**
     * Fill admin in list with the specific id
     *
     * @param adminid
     */
    private void getFullAdminList(int adminid) {
        adminList = adminChecker.getAllInfoofAdmin(adminid);
    }

    /**
     * get admin admin id by username from session
     *
     * @param request
     * @param response
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





