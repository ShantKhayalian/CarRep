package com.ithome.web.start.ReplacementPadsBrakeDiscs;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddRPBDiscs")
public class AddRPBDiscs extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        replacementPadsBrakeDiscs(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        replacementPadsBrakeDiscs(request,response);
    }

    private void replacementPadsBrakeDiscs(HttpServletRequest request, HttpServletResponse response) {

    }
}
