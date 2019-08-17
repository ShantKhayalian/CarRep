package com.ithome.web.start.Helpers;

import javax.servlet.http.HttpServletRequest;

public class PageNameHelper {
    public String pageName(HttpServletRequest request){
        String uri = request.getRequestURI();
        return uri.substring(uri.lastIndexOf("/") + 1);
    }
}
