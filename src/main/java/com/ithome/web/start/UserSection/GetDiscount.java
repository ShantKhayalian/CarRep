package com.ithome.web.start.UserSection;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.EmailController.SendMail;
import com.ithome.web.start.Helpers.AdminChecker;
import com.ithome.web.start.Helpers.LanguageHelper;
import com.ithome.web.start.Helpers.PageNameHelper;
import com.ithome.web.start.Helpers.SessionChecker;
import com.ithome.web.start.Localization.CheckLanguageAndCurrency;

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

@WebServlet("/GetDiscount")
public class GetDiscount extends HttpServlet {
    private CheckLanguageAndCurrency checkLanguageAndCurrency = new CheckLanguageAndCurrency();
    private String language = null;
    private String Pagelanguage = null;
    private String pageName = null;
    private String pageLanguageName = null;
    private SessionChecker checker = new SessionChecker();
    private String sessionId = null;
    private LanguageHelper languageHelper = new LanguageHelper();
    private String pageCurrancy = null;
    private String city = null;
    private PageNameHelper pageNameHelper = new PageNameHelper();

    private String menu = null;
    private String Name = null;
    private String Email = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getDiscount(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getDiscount(request, response);
    }

    private void getDiscount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request, response);
        getLanguagesFromPage(request);
        getPageName(request);
        getPageLanguage(language);
        getParameters(request);
        choosePageLanguageToPage();
        checkEmail(sendEmailWithMessage(),response,request);
    }

    private boolean sendEmailWithMessage() {
        return SendMail.sendDiscount(Name, "No Phone number", Email, "from Get Discount",menu);
    }

    private void checkEmail(boolean sendEmailWithMessage, HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        if(sendEmailWithMessage){
            String message = "Your email is in our inbox, Thank you";
            createRequestes(request);
            gotoToContactUsPage(request, response,message);
        }else{
            String message = "Something went wrong please contact us by phone";
            createRequestes(request);
            gotoToContactUsPageError(request, response,message);

        }
    }

    private void gotoToContactUsPageError(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
        request.setAttribute("messageError",  message);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void gotoToContactUsPage(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
        request.setAttribute("messageSuccess",  message);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void createRequestes(HttpServletRequest request) {
        request.setAttribute("Pagelanguage", Pagelanguage);
        request.setAttribute("pageLanguageName", pageLanguageName);
        request.setAttribute("sessionId", sessionId);
        request.setAttribute("PageCurrancy", pageCurrancy);
        request.setAttribute("PageName", pageName);
        request.setAttribute("city", city);
    }

    private void choosePageLanguageToPage() {
        pageLanguageName = checkLanguageAndCurrency.checkLanguageName(language);
    }

    private void getParameters(HttpServletRequest request) {
        Name = request.getParameter("Name");
        Email = request.getParameter("Email");
        menu = request.getParameter("menu");
    }

    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        getUserSession(session, request, response );
    }

    private void getPageLanguage(String language) {
        Pagelanguage = checkLanguageAndCurrency.checkLanguage(language);
    }

    private void getPageName(HttpServletRequest request) {
        pageName = pageNameHelper.pageName(request);
    }
    private void getUserSession(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        if(checker.checkSessionUser(request, response)) {
            sessionId = checker.requestSessionofUser(session);
        }else{
            sessionId = session.getId();
        }
    }

    private String getLanguagesFromPage(HttpServletRequest request) {
        if (request.getParameter("Pagelanguage") == null) {
            language = languageHelper.Pagelanguage(request, Pagelanguage);
        } else {
            language = languageHelper.Pagelanguage(request, request.getParameter("Pagelanguage"));
        }
        return language;
    }

}