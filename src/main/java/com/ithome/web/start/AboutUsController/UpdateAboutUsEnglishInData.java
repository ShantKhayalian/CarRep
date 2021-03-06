package com.ithome.web.start.AboutUsController;

import com.ithome.web.start.Beans.AboutUs;
import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.DaoController.AboutUsDao;
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

@WebServlet("/UpdateAboutUsEnglishInData")
public class UpdateAboutUsEnglishInData extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<AboutUs> aboutUsList = new ArrayList<>();
    private String fullText = null;
    private AboutUsDao aboutUsDao = new AboutUsDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateAboutUsEnglishInData(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateAboutUsEnglishInData(request,response);
    }

    private void updateAboutUsEnglishInData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        UpdateTextInDataEnh(CreateNewTextInData(1),request,response,1);
    }

    private void UpdateTextInDataEnh(int createNewTextInData, HttpServletRequest request, HttpServletResponse response, int i) throws ServletException, IOException {
        if(createNewTextInData ==0){
            String message = "Something went Wring try again later";
            getEnglishText();
            setRequestToAboutUsUpdatePage(request);
            gotoNextPage(request,response,message);
        }else{
            String message = "Successfully Updated! ";
            getEnglishText();
            setRequestToAboutUsUpdatePage(request);
            gotoNextPage(request,response,message);
        }
    }

    /**
     * get To Write Page
     * @param request
     * @param response
     * @param message
     */
    private void gotoNextPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/AboutUsEnglish.jsp").forward(request, response);
    }

    /**
     * Request to page
     * @param request
     */
    private void setRequestToAboutUsUpdatePage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("aboutUsList", aboutUsList);
    }

    /**
     * Get English from data
     */
    private void getEnglishText() {
        aboutUsList = aboutUsDao.getAboutUsInEnglish();
    }

    /**
     * New OIbject of the text
     * @param id
     * @return
     */
    private int CreateNewTextInData(int id){
        return aboutUsDao.UpdateAboutusEng(fullText,id);
    }

    /**
     * get Parameters from web site
     * @param request
     */
    private void getParameters(HttpServletRequest request) {
        fullText  = request.getParameter("AboutUsText");
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
