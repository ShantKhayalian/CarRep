package com.ithome.web.start.Helpers;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.DaoController.AdminDao;

import java.util.List;

public class AdminChecker {
    private AdminDao adminDaoController = new AdminDao();

    public int getAdminId(String username) {
        System.out.println("passed getAdminId ");
        return adminDaoController.getAdminIdByUserName(username);
    }

    public List<Admin> getAllInfoofAdmin(int adminId) {
        System.out.println("passed getAllInfoofAdmin ");
        return adminDaoController.getAllAdminInfo(adminId);
    }

}
