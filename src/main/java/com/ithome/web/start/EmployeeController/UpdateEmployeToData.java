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

@WebServlet("/UpdateEmployeToData")
public class UpdateEmployeToData extends HttpServlet {
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
    private String EmployeId =null;
    private int EmployeintId =0;

    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<Employee> employeeList = new ArrayList<>();
    private EmployeeDao employeeDao = new EmployeeDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateEmployeToData(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateEmployeToData(request,response);
    }

    private void updateEmployeToData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        ConvertIntId(EmployeId);
        UpdateEmployeDetail(CreateNewObject(),request,response);
    }

    private void UpdateEmployeDetail(int createNewObject, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(createNewObject == 0){
            String message = "Something went wrong try again";
            getEmployeeDetailById(EmployeintId);
            setRequestToPage(request);
            gotoPage(request, response, message);
        } else {
            String message = "Updated Successfully";
            getEmployeeDetailById(EmployeintId);
            setRequestToPage(request);
            gotoPage(request, response, message);
        }
    }

    private void gotoPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/Employee/UpdateEmployee.jsp").forward(request,response);
    }

    private void getEmployeeDetailById(int employeintId) {
        employeeList = employeeDao.getDetailById(employeintId);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("employeeList", employeeList);
    }

    private void ConvertIntId(String employeId) {
        EmployeintId =Integer.valueOf(employeId);
    }

    private int CreateNewObject() {
        return employeeDao.UpdateEmployee(getObjectsOfEmployee(),EmployeintId);
    }

    private Employee getObjectsOfEmployee() {
        return new Employee(FirstNameEng,FirstNameRus,LastNameEng,LastNameRus,SpecialtyEng,SpecialtyRus,date,Experience,PhoneNumber,email,AddressEng,AddressRus);
    }

    private void getParameters(HttpServletRequest request) {
        EmployeId = request.getParameter("EmployeeId");
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


