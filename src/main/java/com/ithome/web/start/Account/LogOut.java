package com.ithome.web.start.Account;

import com.ithome.web.start.Helpers.SessionChecker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
    private SessionChecker checker = new SessionChecker();

    private String username = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logOut(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logOut(request, response);
    }

    private void logOut(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        username = (String) session.getAttribute("admins");
        getSession(session, request, response);
        logout(request,response,session);

    }

    private void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        session.removeAttribute("admins");
        response.sendRedirect("/admin/SignIn.jsp");
    }

    private void getSession(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (checker.checkSession(request, response)) {
            username = checker.requestSessionofAdmin(session);
        } else {
            response.sendRedirect("/admin/SignIn.jsp");
        }
    }
}
