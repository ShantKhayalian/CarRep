package com.ithome.web.start.EmailController;

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

@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
    private CheckLanguageAndCurrency checkLanguageAndCurrency = new CheckLanguageAndCurrency();
    private String language = null;
    private String Pagelanguage = null;
    private String pageName = null;
    private String pageLanguageName = null;
    private SessionChecker checker = new SessionChecker();
    private String sessionId = null;
    private LanguageHelper languageHelper = new LanguageHelper();
    private String pageCurrancy = null;
    private String pageCurrancyFromPage = null;
    private String city = null;
    private PageNameHelper pageNameHelper = new PageNameHelper();
    private String message = null;
    private String sendName = null;
    private String senderPhoneNumber = null;
    private String senderEmailAddress = null;
    private String menu =null;



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        sendEmail(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        sendEmail(request,response);
    }

    private void sendEmail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request,response);
        getLanguagesFromPage(request);
        getPageName(request);
        getPageLanguage(language);
        choosePageLanguageToPage();
        getParameters(request);
        checkEmail(sendEmailWithMessage(),response,request);
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

    private void getPageName(HttpServletRequest request) {
        pageName = pageNameHelper.pageName(request);
    }

    /**
     * response of the servlet sendName the page
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void gotoToContactUsPage(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
        request.setAttribute("messageSuccess",  message);
        System.out.println("messageError " + message);
        request.getRequestDispatcher("/ContactUs.jsp").forward(request, response);
    }

    private void gotoToContactUsPageError(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
        request.setAttribute("messageError",  message);
        System.out.println("messageError " + message);
        request.getRequestDispatcher("/ContactUs.jsp").forward(request, response);
    }

    private void sessionControlling(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        getUserSession(session, request, response );
    }

    private void getUserSession(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        if(checker.checkSessionUser(request, response)) {
            sessionId = checker.requestSessionofUser(session);
        }else{
            sessionId = session.getId();
        }
    }

    private void getParameters(HttpServletRequest request) {
        sendName = request.getParameter("to").trim();
        senderPhoneNumber = request.getParameter("senderPhoneNumber").trim();
        senderEmailAddress = request.getParameter("senderEmailAddress").trim();
        menu = request.getParameter("menu");
        message = request.getParameter("senderMessage");


    }

    private boolean sendEmailWithMessage() {
        return SendMail.send(sendName, senderPhoneNumber, senderEmailAddress, message,menu);
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

    private void getCurancyFromPage(HttpServletRequest request) {
        if (request.getParameter("Currancy") == null) {
            pageCurrancy = checkLanguageAndCurrency.checkCurrency(pageCurrancyFromPage);
        } else {
            pageCurrancy = checkLanguageAndCurrency.checkCurrency(request.getParameter("Currancy"));
        }
    }


    private void getPageLanguage(String language) {
        Pagelanguage = checkLanguageAndCurrency.checkLanguage(language);
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
