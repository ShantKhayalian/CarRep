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

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@WebServlet("/AddEmployeToData")
public class AddEmployeToData extends HttpServlet {

    private String FirstNameEng = null;
    private String FirstNameRus = null;
    private String LastNameEng = null;
    private String LastNameRus = null;
    private String SpecialtyEng = null;
    private String SpecialtyRus = null;
    private String Experience = null;
    private String PhoneNumber = null;
    private String email = null;
    private String AddressEng = null;
    private String AddressRus = null;

    private String date =null;

    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();

    private EmployeeDao employeeDao = new EmployeeDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            addEmployeToData(request, response);
        } catch (SQLException | ParseException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            addEmployeToData(request, response);
        } catch (SQLException | ParseException e) {
            e.printStackTrace();
        }
    }

    private void addEmployeToData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException, ParseException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        addEmployeDetailToData(CreateNewObject(),request,response);
        goBackToPage(request,response);
    }

    private int CreateNewObject() throws SQLException, ParseException {
        return employeeDao.AddNewEmployee(getObjectsOfEmployee());
    }

    private Employee getObjectsOfEmployee() throws ParseException {
        return new Employee(FirstNameEng,FirstNameRus,LastNameEng,LastNameRus,SpecialtyEng,SpecialtyRus, date ,Experience,PhoneNumber,email,AddressEng,AddressRus);
    }

    private void addEmployeDetailToData(int i, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(i == 0){
            String message = "Something went wrong try again";
            setRequestToPage(request);
            goBackToPage(request, response, message);
        } else {
            getEmployeId();
            setRequestToPage(request);
            gotoNextStepPage(request, response);
        }
    }

    private void gotoNextStepPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/AddEmployeeImage.jsp").forward(request, response);
    }

    private void goBackToPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/AddNewEmployee.jsp").forward(request, response);
    }

    private void getEmployeId() {
        List<Employee> employees = employeeDao.getAllEmployee();
        int employId = employees.get(employees.size()-1).getId();
        System.out.println(employId);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
    }

    private void goBackToPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/AddEmployeImage.jsp").forward(request, response);
    }

    private void getParameters(HttpServletRequest request) throws ParseException {
        FirstNameEng = request.getParameter("FirstNameEng");
        FirstNameRus = request.getParameter("FirstNameRus");
        LastNameEng = request.getParameter("LastNameEng");
        LastNameRus = request.getParameter("LastNameRus");
        SpecialtyEng = request.getParameter("SpecialtyEng");
        SpecialtyRus = request.getParameter("SpecialtyRus");

        date = request.getParameter("Date");

        Experience = request.getParameter("Experience");
        PhoneNumber = request.getParameter("PhoneNumber");
        email = request.getParameter("email");
        AddressEng = request.getParameter("AddressEng");
        AddressRus = request.getParameter("AddressRus");
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
