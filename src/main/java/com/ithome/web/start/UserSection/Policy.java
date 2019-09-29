package com.ithome.web.start.UserSection;

import com.ithome.web.start.Beans.AboutUs;
import com.ithome.web.start.Beans.Policyies;
import com.ithome.web.start.DaoController.AboutUsDao;
import com.ithome.web.start.DaoController.PolyciesDao;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Policy")
public class Policy extends HttpServlet {
    private CheckLanguageAndCurrency checkLanguageAndCurrency = new CheckLanguageAndCurrency();
    private String language = null;
    private String Pagelanguage = null;
    private String pageName = null;
    private String pageLanguageName = null;
    private SessionChecker checker = new SessionChecker();
    private String sessionId = null;
    private LanguageHelper languageHelper = new LanguageHelper();
    private PageNameHelper pageNameHelper = new PageNameHelper();
    private PolyciesDao aboutUsDao = new PolyciesDao();
    private List<Policyies> aboutUsList = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        policy(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        policy(request,response);
    }

    private void policy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        sessionControlling(request,response);
        getLanguagesFromPage(request);
        getPageName(request);
        getPageLanguage(language);
        getPageLabguageName(language);
        getAboutUS();
        setRequestes(request);
        gotoAboutUsPage(request,response);
    }
    private void gotoAboutUsPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Policy.jsp").forward(request, response);
    }

    private void setRequestes(HttpServletRequest request) {
        request.setAttribute("PageLanguage", Pagelanguage);
        request.setAttribute("PageName", pageName);
        request.setAttribute("pageLanguageName", pageLanguageName);
        request.setAttribute("sessionId", sessionId);
        request.setAttribute("aboutUsList", aboutUsList);

    }

    private void getAboutUS() {
        aboutUsList = aboutUsDao.getAll();
    }

    private void getPageLanguage(String language) {
        Pagelanguage = checkLanguageAndCurrency.checkLanguage(language);

    }

    private void getPageLabguageName(String language) {
        pageLanguageName = checkLanguageAndCurrency.checkLanguageName(language);
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

    private String getLanguagesFromPage(HttpServletRequest request) {
        if (request.getParameter("PageLanguage") == null) {
            language = languageHelper.Pagelanguage(request, Pagelanguage);
        } else {
            language = languageHelper.Pagelanguage(request, request.getParameter("PageLanguage"));
        }
        return language;
    }

    private void getPageName(HttpServletRequest request) {
        pageName = pageNameHelper.pageName(request);
        System.out.println(pageName);
    }


}
