package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Admin;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {

    /**
     * Method will check if Admin exist or not
     *
     * @param username
     * @param password
     * @return
     */
    public boolean validateAdminUsers(String username, String password) {
        return validatePass(username, password);
    }

    /**
     * Connect to data
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * Validate admin
     * @param username
     * @param password
     * @return
     */
    private boolean validatePass(String username, String password) {
        boolean isValidAdminUser = false;
        try {
            Connection connection = connectToData();
            String sql = "SELECT *  FROM  `car_db`.`admincontroller` WHERE username=? AND  password=?";
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, username);
            statment.setString(2, password);
            ResultSet set = statment.executeQuery();
            while (set.next()) {
                isValidAdminUser = true;
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("SQLException exception message : " + exception);
        }
        return isValidAdminUser;
    }

    /**
     * Method will return AdminId using Username
     *
     * @param username
     * @return
     */
    public int getAdminIdByUserName(String username) {
        int adminId = 0;
        try {
            Connection connection = connectToData();
            String sql = "SELECT *  FROM  `car_db`.`admincontroller` WHERE username=?";
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, username);
            ResultSet set = statment.executeQuery();
            while (set.next()) {
                adminId = set.getInt("admin_id");
            }

        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("SQLException exception message : " + exception);
        }
        return adminId;
    }

    /**
     * get all admin info by adminId
     *
     * @param adminId
     * @return
     */
    public List<Admin> getAllAdminInfo(int adminId) {
        Admin admin = null;
        List<Admin> adminList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`admincontroller` where admin_id =" + adminId;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            while (set.next()) {

                admin = new Admin();
                admin.setId(set.getInt("admin_id"));
                admin.setUsername(set.getString("username"));
                admin.setPassword(set.getString("password"));

                adminList.add(admin);
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return adminList;
    }

    /**
     * Update Admin info
     * @param prepaireAdminInfoForData
     * @param adminId
     * @return
     */
    public int updateAdminInfo(Admin prepaireAdminInfoForData, int adminId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`admincontroller`  SET username=?,password=? WHERE admin_id=" + adminId;

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, prepaireAdminInfoForData.getUsername());
            statement.setString(2, prepaireAdminInfoForData.getPassword());

            rowsUpdated = statement.executeUpdate();

            if (rowsUpdated > 0) {
                System.out.println("An existing CATEGORY NAME was updated successfully!");
            }
        } catch (SQLException exception) {
            System.out.println("sqlException in Application in CATEGORY NAME UPDATE Section  : " + exception);
            exception.printStackTrace();
        }
        return rowsUpdated;
    }
}
