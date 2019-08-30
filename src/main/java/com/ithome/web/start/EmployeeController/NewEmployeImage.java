package com.ithome.web.start.EmployeeController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.Employee;
import com.ithome.web.start.DaoController.EmployeeDao;
import com.ithome.web.start.Helpers.AdminChecker;
import com.ithome.web.start.Helpers.SessionChecker;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/NewEmployeImage")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class NewEmployeImage extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private int EmpolyeeId = 0;
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIRECTORY = "images";

    private EmployeeDao employeeDao = new EmployeeDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        newEmployeImage(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        newEmployeImage(request, response);
    }

    private void newEmployeImage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        UploadImageToServer(request, response);
    }

    private void UploadImageToServer(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // gets absolute path of the web application
        String appPath = request.getServletContext().getRealPath("");
        System.out.println("appPath +" + appPath);
        // constructs path of the directory to save uploaded file
        String savePath = appPath + File.separator + UPLOAD_DIRECTORY;
        System.out.println("savePath +" + savePath);

        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        for (Part part : request.getParts()) {
            String fileName = extractFileName(part);
            System.out.println("fileName +" + fileName);
            // refines the fileName in case it is an absolute path
            fileName = new File(fileName).getName();
            String filepat = UPLOAD_DIRECTORY + File.separator + fileName;
            System.out.println("filepat +" + filepat);
            part.write(savePath + File.separator + fileName);

            AddToData(request, response, filepat, EmpolyeeId);
        }
    }

    private void AddToData(HttpServletRequest request, HttpServletResponse response, String filepat, int empolyeeId) throws ServletException, IOException {
        Employee employee = new Employee(filepat);
        int UpdateImageInData = employeeDao.UpdateEmployeeImage(employee, empolyeeId);
        if (UpdateImageInData == 0) {
            String message = "Something went wrong";
            setRequestToPage(request);
            goBackToSamePage(request, response, message);

        } else {
            String message = "Successfully uploaded ";
            setRequestToPage(request);
            goBackToSamePage(request, response, message);


        }
    }

    private void goBackToSamePage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message",message);
        request.getRequestDispatcher("/WEB-INF/Employee/AddEmployeeImage.jsp").forward(request, response);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
    }

    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }


    private void getParameters(HttpServletRequest request) {
        EmpolyeeId = Integer.parseInt(request.getParameter("EmpolyeeId"));
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

