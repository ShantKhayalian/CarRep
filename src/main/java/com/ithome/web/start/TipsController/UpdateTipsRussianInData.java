package com.ithome.web.start.TipsController;

import com.ithome.web.start.Beans.AboutUs;
import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Beans.VehicleTips;
import com.ithome.web.start.DaoController.TipsDao;
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

@WebServlet("/UpdateTipsRussianInData")
public class UpdateTipsRussianInData extends HttpServlet {
    private SessionChecker checker = new SessionChecker();
    private String username = null;
    private AdminChecker adminChecker = new AdminChecker();
    private int adminId = 0;
    private List<Admin> adminList = new ArrayList<>();
    private List<VehicleTips> vehicleTipsList = new ArrayList<>();
    private TipsDao tipsDao = new TipsDao();
    private int id =0;
    private String fullText =null;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateTipsRussianInData(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateTipsRussianInData(request,response);
    }

    private void updateTipsRussianInData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getAdminInfo(request, response);
        getParameters(request);
        UpdateTextInDataRus(CreateNewTextInData(id),request,response);
    }

    private void UpdateTextInDataRus(int createNewTextInData, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(createNewTextInData ==0){
            String message = "Something went Wring try again later";
            getRussianTips();
            setRequestToTipsUpdatePage(request);
            gotoNextPage(request,response,message);
        }else{
            String message = "Successfully Updated! ";
            getRussianTips();
            setRequestToTipsUpdatePage(request);
            gotoNextPage(request,response,message);
        }
    }

    private void gotoNextPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/TipsRussian.jsp").forward(request, response);
    }

    private void setRequestToTipsUpdatePage(HttpServletRequest request) {
        request.setAttribute("username", username);
        request.setAttribute("adminId", adminId);
        request.setAttribute("adminFullInfo", adminList);
        request.setAttribute("vehicleTipsList", vehicleTipsList);
    }

    private void getRussianTips() {
        vehicleTipsList = tipsDao.getTipsInRussian();
    }

    private int CreateNewTextInData(int id) {
       return tipsDao.UpdateTipsRus(CreateObjectOfText(),id);
    }

    private VehicleTips CreateObjectOfText() {
        return new VehicleTips(fullText,true);
    }

    private void getParameters(HttpServletRequest request) {
        id= Integer.parseInt(request.getParameter("TipsId"));
        fullText  = request.getParameter("TipsText");
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

