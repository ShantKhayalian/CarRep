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

@WebServlet("/DeleteCDRus")
public class DeleteCDRus extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<ComputerDiagnostics> computerDiagnosticsList = new ArrayList<>();

    private int TipsId =0;
    private ComputerDiagnosticsDao computerDiagnosticsDao = new ComputerDiagnosticsDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteCDRus(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteCDRus(request,response);
    }

    private void deleteCDRus(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        deleteFromData(TipsId,request,response);
    }

    private void deleteFromData(int tipsId, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int delete = deleteTipFromData(tipsId);
        if(delete > 0) {
            String message = "Something went wrong";
            getCDRussian();
            setRequestToPage(request);
            gotoPage(request,response,message);
        }else {
            String message = "";
            getCDRussian();
            setRequestToPage(request);
            gotoPage(request,response,message);
        }
    }

    private int deleteTipFromData(int tipsId) {
        return computerDiagnosticsDao.DeleteById(tipsId);
    }

    private void gotoPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/CD/CDRussian.jsp").forward(request, response);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("ComputerDiagnosticsList", computerDiagnosticsList);
    }

    private void getCDRussian() {
        computerDiagnosticsList = computerDiagnosticsDao.getComputerDiagnosticsInRussian();
    }

    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        getSession(session, request, response);
    }


    private void getParameters(HttpServletRequest request) {
        TipsId = Integer.parseInt(request.getParameter("TipsId"));
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




