package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.VehicleTips;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TipsDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() throws SQLException {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all About us
     *
     * @return
     */
    public List<VehicleTips> getAllTips() {
        VehicleTips vehicleTips = null;
        List<VehicleTips> vehicleTipsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`tips` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            VehicletList(vehicleTipsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return vehicleTipsList;
    }


    public int UpdateTipsEng(String tips, int tips_id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`tips`  SET tips_eng=? WHERE tips_id=" + tips_id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, tips);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    public int UpdateTipsRus(String tips, int tips_id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`tips`  SET tips_rus=? WHERE tips_id=" + tips_id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, tips);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    public List<VehicleTips> getTipsInRussian() {
        VehicleTips vehicleTips = null;
        List<VehicleTips> vehicleTipsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`tips` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            TipsRus(vehicleTipsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return vehicleTipsList;
    }
    public List<VehicleTips> getTipsInEnglish() {
        VehicleTips vehicleTips = null;
        List<VehicleTips> vehicleTipsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`tips` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            TipsEng(vehicleTipsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return vehicleTipsList;
    }

    private void TipsRus(List<VehicleTips> vehicleTipsList, ResultSet set) throws SQLException {
        VehicleTips vehicleTips;
        while (set.next()) {
            vehicleTips = new VehicleTips();
            vehicleTips.setId(set.getInt("tips_id"));
            vehicleTips.setVehicleTipsRus(set.getString("tips_rus"));
            vehicleTipsList.add(vehicleTips);
        }
    }

    private void TipsEng(List<VehicleTips> vehicleTipsList, ResultSet set) throws SQLException {
        VehicleTips vehicleTips;
        while (set.next()) {
            vehicleTips = new VehicleTips();
            vehicleTips.setId(set.getInt("tips_id"));
            vehicleTips.setVehicleTipsEng(set.getString("tips_eng"));
            vehicleTipsList.add(vehicleTips);
        }
    }

    private void VehicletList(List<VehicleTips> vehicleTipsList, ResultSet set) throws SQLException {
            VehicleTips vehicleTips;
            while (set.next()) {
                vehicleTips = new VehicleTips();
                vehicleTips.setId(set.getInt("tips_id"));
                vehicleTips.setVehicleTipsRus(set.getString("tips_rus"));
                vehicleTips.setVehicleTipsEng(set.getString("tips_eng"));

                vehicleTipsList.add(vehicleTips);

        }
    }

    public List<VehicleTips> getTipsInEnglishById(int id) {
        VehicleTips vehicleTips = null;
        List<VehicleTips> vehicleTipsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`tips` WHERE `tips_id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            TipsEng(vehicleTipsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return vehicleTipsList;
    }

    public List<VehicleTips> getTipsInRussianById(int id) {
        VehicleTips vehicleTips = null;
        List<VehicleTips> vehicleTipsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`tips` WHERE `tips_id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            TipsRus(vehicleTipsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return vehicleTipsList;
    }
}
