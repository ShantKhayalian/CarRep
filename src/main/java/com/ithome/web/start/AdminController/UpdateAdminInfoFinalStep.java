package com.ithome.web.start.AdminController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.DaoController.AdminDao;
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

@WebServlet("/UpdateAdminInfoFinalStep")
public class UpdateAdminInfoFinalStep extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private int pinCode =0;
    private String adminUsername = null;
    private String adminPassword = null;
    private Admin admin ;
    private AdminDao adminDaoController = new AdminDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateAdminInfoFinalStep(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateAdminInfoFinalStep(request,response);
    }

    /**
     * Main Controller
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    private void updateAdminInfoFinalStep(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        sessionControlling(request,response);
        getParameters(request);
        getAdminInfo(request,response);
        updateAdminInfoInData(prepaireAdminInfoForData(),request,response,adminId);
    }

    /**
     * Admin adding database logic controller
     * @param prepaireAdminInfoForData
     * @param request
     * @param response
     * @param adminId
     * @throws ServletException
     * @throws IOException
     */
    private void updateAdminInfoInData(Admin prepaireAdminInfoForData, HttpServletRequest request, HttpServletResponse response, int adminId) throws ServletException, IOException {
        int row = adminDaoController.updateAdminInfo(prepaireAdminInfoForData,adminId);
        if(row ==0){
            String message = "Something went wrong ";
            setRequestToPage(request);
            getFullAdminList(adminId);
            gotoPage(request,response, message);

        }else{
            String message = "Successfully updated the admin details";
            setRequestToPage(request);
            getFullAdminList(adminId);
            gotoPage(request,response, message);
        }
    }

    /**
     * got ot page
     * @param request
     * @param response
     * @param message
     * @throws ServletException
     * @throws IOException
     */
    private void gotoPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/updateAdmin.jsp").forward(request, response);
    }

    /**
     * Request attributes to page
     * @param request
     */
    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
    }


    /**
     * Create the object of the admin
     * @return
     */
    private Admin prepaireAdminInfoForData() {
        return new Admin(adminUsername,adminPassword);
    }

    /**
     * Controlling the session for admin using helper classes
     * @param request
     * @param response
     * @throws IOException
     */
    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        getSession(session, request, response );
    }

    /**
     * get admin admin id by username from session
     * @param request
     * @param response
     */
    private void getAdminInfo(HttpServletRequest request, HttpServletResponse response) {
        adminId = adminChecker.getAdminId(username);
        getFullAdminList(adminId);
    }

    /**
     * Fill admin in list with the specific id
     * @param adminid
     */
    private void getFullAdminList(int adminid) {
        adminList = adminChecker.getAllInfoofAdmin(adminid);
    }

    /**
     * getparameters
     * @param request
     */
    private void getParameters(HttpServletRequest request) {
        adminUsername = request.getParameter("adminUsername");
        adminPassword = request.getParameter("adminPassword");
        adminId = Integer.parseInt(request.getParameter("adminid"));

    }

    /**
     * Session of uadmin if no session true send to login page else get the seesion key
     * @param session
     * @param request
     * @param response
     * @throws IOException
     */
    private void getSession(HttpSession session , HttpServletRequest request, HttpServletResponse response) throws IOException {
        if(checker.checkSession(request, response)){
            username = checker.requestSessionofAdmin(session);
        }else{
            response.sendRedirect("/admin/SignIn.jsp");
        }
    }
}
