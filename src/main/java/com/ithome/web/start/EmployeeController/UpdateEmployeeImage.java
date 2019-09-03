package com.ithome.web.start.EmployeeController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.Employee;
import com.ithome.web.start.DaoController.EmployeeDao;
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

@WebServlet("/UpdateEmployeeImage")
public class UpdateEmployeeImage extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();

    private EmployeeDao employeeDao = new EmployeeDao();
    private List<Employee> employeeList = new ArrayList<>();

    private String EmployeId =null;
    private int EmployeintId =0;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateEmployeeImage(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateEmployeeImage(request,response);
    }

    private void updateEmployeeImage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        ConvertIntId(EmployeId);
        getEmployeeDetailById(EmployeintId);
        setRequestToPage(request);
        gotoPage(request,response);

    }

    private void getEmployeeDetailById(int employeintId) {
        employeeList = employeeDao.getDetailById(employeintId);
    }

    private void gotoPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/Employee/UpdateEmployeeImage.jsp").forward(request,response);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("EmpolyeeId", EmployeintId);
        request.setAttribute("employeeList", employeeList);
    }


    private void ConvertIntId(String employeId) {
        EmployeintId =Integer.valueOf(employeId);
    }


    private void getParameters(HttpServletRequest request) {
        EmployeId = request.getParameter("EmployeeId");
    }

    /**
     * Controlling the session for admin using helper classes
     *
     * @param request
     * @param response
     * @throws IOException
     */
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

