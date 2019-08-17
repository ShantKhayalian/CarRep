package com.ithome.web.start.Helpers;

import com.ithome.web.start.DaoController.AdminDao;

public class LoginHelper {
    private AdminDao adminDao = new AdminDao();
    private CheckLogin checkLogin = new CheckLogin();

    public boolean getStarted(String username, String password) {
        return  checkLogin.validateAdmin(username,password);
    }

    private class CheckLogin {

        private boolean validateAdmin(String username, String password) {
            return adminDao.validateAdminUsers(username, password);
        }

    }
}
