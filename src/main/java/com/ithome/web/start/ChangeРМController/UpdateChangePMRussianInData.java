package com.ithome.web.start.ChangeРМController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.ChangeРМ;
import com.ithome.web.start.DaoController.ChangeРМDao;
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

@WebServlet("/UpdateChangePMRussianInData")
public class UpdateChangePMRussianInData extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<ChangeРМ> changeРМList = new ArrayList<>();
    private ChangeРМDao changeРМDao = new ChangeРМDao();
    private int id =0;
    private String fullText =null;
    private String changePMEnglish =null;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateChangePMRussianInData(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateChangePMRussianInData(request,response);
    }

    private void updateChangePMRussianInData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        getEnglishText(id);
        UpdateTextInDataRus(CreateNewTextInData(id),request,response);
    }

    private void UpdateTextInDataRus(int createNewTextInData, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(createNewTextInData ==0){
            String message = "Something went Wring try again later";
            getRussianChangePM();
            setRequestToChangePMUpdatePage(request);
            gotoNextPage(request,response,message);
        }else{
            String message = "Successfully Updated! ";
            getRussianChangePM();
            setRequestToChangePMUpdatePage(request);
            gotoNextPage(request,response,message);
        }
    }

    private void gotoNextPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/ChangePM/ChangePMChangeRussian.jsp").forward(request, response);
    }

    private void setRequestToChangePMUpdatePage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("ChangeРМList", changeРМList);
    }

    private void getRussianChangePM() {
        changeРМList = changeРМDao.getChangeРМInRussian();
    }

    private int CreateNewTextInData(int id) {
        return changeРМDao.UpdateChangeРМRus(CreateObjectOfText(),id);
    }

    private ChangeРМ CreateObjectOfText() {
        return new ChangeРМ(changePMEnglish,fullText);
    }

    private void getEnglishText(int id) {
        changeРМList = changeРМDao.getChangePMInEnglishById(id);
        for (int i = 0; i <changeРМList.size() ; i++) {
            changePMEnglish  = changeРМList.get(i).getChangeРМEng();
        }

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


