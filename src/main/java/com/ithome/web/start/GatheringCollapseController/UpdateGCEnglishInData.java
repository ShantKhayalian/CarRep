package com.ithome.web.start.GatheringCollapseController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.Electrician;
import com.ithome.web.start.Beans.GatheringCollapse;
import com.ithome.web.start.DaoController.ElectricianDao;
import com.ithome.web.start.DaoController.GatheringCollapseDao;
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

@WebServlet("/UpdateGCEnglishInData")
public class UpdateGCEnglishInData extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<GatheringCollapse> gatheringCollapseslist= new ArrayList<>();
    private GatheringCollapseDao gatheringCollapseDao = new GatheringCollapseDao();
    private int id =0;
    private String fullText =null;
    private String CRussian=null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateCEnglishInData(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateCEnglishInData(request,response);
    }

    private void updateCEnglishInData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        getRussianText(id);
        UpdateTextInDataEng(CreateNewTextInData(id),request,response);
    }

    private void getRussianText(int id) {
        gatheringCollapseslist = gatheringCollapseDao.getGCInRussianById(id);
        for (int i = 0; i <gatheringCollapseslist.size() ; i++) {
            CRussian  = gatheringCollapseslist.get(i).getGatheringCollapseRus();
        }

    }

    private void UpdateTextInDataEng(int createNewTextInData, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(createNewTextInData ==0){
            String message = "Something went Wring try again later";
            getEnglishC();
            setRequestToCUpdatePage(request);
            gotoNextPage(request,response,message);
        }else{
            String message = "Successfully Updated! ";
            getEnglishC();
            setRequestToCUpdatePage(request);
            gotoNextPage(request,response,message);
        }
    }

    private void gotoNextPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/GC/BKEnglish.jsp").forward(request, response);
    }

    private void setRequestToCUpdatePage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("GatheringCollapseslist", gatheringCollapseslist);
    }

    private void getEnglishC() {
        gatheringCollapseslist = gatheringCollapseDao.getGatheringCollapseInEnglish();
    }


    private int CreateNewTextInData(int id) {
        return gatheringCollapseDao.UpdateGatheringCollapseEng(CreateObjectOfText(),id);
    }

    private GatheringCollapse CreateObjectOfText() {
        return new GatheringCollapse(fullText,CRussian);
    }

    private void getParameters(HttpServletRequest request) {
        id= Integer.parseInt(request.getParameter("TipsId"));
        fullText  = request.getParameter("TextArea");
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

