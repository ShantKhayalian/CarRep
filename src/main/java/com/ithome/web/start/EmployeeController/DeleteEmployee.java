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
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/DeleteEmployee")
public class DeleteEmployee extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();

    private EmployeeDao employeeDao = new EmployeeDao();
    private List<Employee> employeeList = new ArrayList<>();

    private String EmployeId = null;
    private int EmployeintId = 0;
    private int deleteEmployee =0;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteEmployee(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteEmployee(request, response);
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        ConvertIntId(EmployeId);
        DeleteEmployeById(EmployeintId,request,response);
    }

    private void DeleteEmployeById(int employeintId,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteEmployee = employeeDao.deleteImployeeById(EmployeintId);
        if(deleteEmployee > 0) {
            getEmployeeDetail();
            setRequestToPage(request);
            gotoPage(request,response);
        }else {
            getEmployeeDetail();
            setRequestToPage(request);
            gotoPage(request,response);
        }
    }

    private void gotoPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ShowAllEmployee.jsp").forward(request, response);
    }

    private void getEmployeeDetail() {
        employeeList = employeeDao.getAllEmployee();
    }

    private void ConvertIntId(String employeId) {
        EmployeintId = Integer.valueOf(employeId);
    }

    private void getParameters(HttpServletRequest request) {
        EmployeId = request.getParameter("EmployeeId");
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("employeeList", employeeList);
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
    private void getSession(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws
            IOException {
        if (checker.checkSession(request, response)) {
            username = checker.requestSessionofAdmin(session);
        } else {
            response.sendRedirect("/admin/SignIn.jsp");
        }
    }
}


