package com.ithome.web.start.OilFilterChangeController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.OilFilterChange;
import com.ithome.web.start.DaoController.OilFilterChangeDao;
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

@WebServlet("/DeleteOilFilterEng")
public class DeleteOilFilterEng extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<OilFilterChange> oilFilterChangeList = new ArrayList<>();

    private int TipsId =0;
    private OilFilterChangeDao oilFilterChangeDao = new OilFilterChangeDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteOilFilterEng(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        deleteOilFilterEng(request,response);
    }

    private void deleteOilFilterEng(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
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
            getOilFilterEnglish();
            setRequestToPage(request);
            gotoPage(request,response,message);
        }else {
            String message = "";
            getOilFilterEnglish();
            setRequestToPage(request);
            gotoPage(request,response,message);
        }
    }

    private void gotoPage(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/OilFilterChangeEnglish.jsp").forward(request, response);
    }

    private void setRequestToPage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("OilFilterChangeList", oilFilterChangeList);
    }

    private void getOilFilterEnglish() {
        oilFilterChangeList = oilFilterChangeDao.getOilFilterChangeInEnglish();
    }

    private int deleteTipFromData(int tipsId) {
        return oilFilterChangeDao.DeleteById(tipsId);
    }

    private void getParameters(HttpServletRequest request) {
        TipsId = Integer.parseInt(request.getParameter("TipsId"));
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



