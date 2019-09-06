package com.ithome.web.start.AdminController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.DaoController.AdminDao;
import com.ithome.web.start.Helpers.LoginHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/AdminSignInCheck")
public class AdminSignInCheck extends HttpServlet {
    private String username = null;
    private String password = null;
    private int adminId = 0;

    private List<Admin> adminFullInfo = new ArrayList<>();

    private LoginHelper AdminLoginhelper = new LoginHelper();
    private AdminDao adminDao = new AdminDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        adminSignInCheck(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        adminSignInCheck(request, response);
    }

    private void adminSignInCheck(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        getParameters(request);
        if (checkLoginPassword()) {
            getAdminId(username);
            getSession(request);
            getAdminFullInfoInList(adminId);
            checkLoginPassword();
            setAttributesForPage(request);
            gotoMasterAdminPage(request, response);
        }else{
            String message = "Your username or the password is wrong, try again";
            sendToLoginPage(request, response, message);
        }
    }

    private void sendToLoginPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/admin/SignIn.jsp").forward(request, response);
    }

    private void gotoMasterAdminPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/AdminApp.jsp").forward(request, response);
    }

    private void setAttributesForPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminFullInfo);
    }

    private void getAdminFullInfoInList(int adminId) {
        adminFullInfo = adminDao.getAllAdminInfo(adminId);
    }

    private void getAdminId(String username) {
        adminId = adminDao.getAdminIdByUserName(username);
    }

    private void getSession(HttpServletRequest request) {
        String AdminSession;
        HttpSession session = request.getSession();
        session.setAttribute("admins", username);
        AdminSession = (String) session.getAttribute("admins");
        System.out.println(AdminSession);
    }

    private void getParameters(HttpServletRequest request) {
        username = request.getParameter("username");
        password = request.getParameter("password");
    }

    private boolean checkLoginPassword() {
        return AdminLoginhelper.getStarted(username, password);

    }
}
