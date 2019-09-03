package com.ithome.web.start.DaoController;


import com.ithome.web.start.Beans.SuspensionRepair;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SuspensionRepairDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * getAllSuspensionRepair
     *
     * @return
     */
    public List<SuspensionRepair> getAllSuspensionRepair() {
        List<SuspensionRepair> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`suspensionrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            SuspensionRepairList(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }

    /**
     * UpdateConditionersEng
     * @param suspensionRepair
     * @param id
     * @return
     */
    public int UpdateSuspensionRepairEng(SuspensionRepair suspensionRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`suspensionrepair`  SET suspensionrepaireng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, suspensionRepair.getSuspensionRepairEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateSuspensionRepairRus
     * @param suspensionRepair
     * @param id
     * @return
     */
    public int UpdateSuspensionRepairRus(SuspensionRepair suspensionRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`suspensionrepair`  SET suspensionrepairrus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, suspensionRepair.getSuspensionRepairRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getSuspensionRepairInRussian
     * @return
     */
    public List<SuspensionRepair> getSuspensionRepairInRussian() {
        SuspensionRepair suspensionRepair = null;
        List<SuspensionRepair> suspensionRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`suspensionrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            SuspensionRepairRus(suspensionRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return suspensionRepairList;
    }

    /**
     * getSuspensionRepairInEnglish
     * @return
     */
    public List<SuspensionRepair> getSuspensionRepairInEnglish() {
        SuspensionRepair suspensionRepair = null;
        List<SuspensionRepair> suspensionRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`suspensionrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            SuspensionRepairEng(suspensionRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return suspensionRepairList;
    }

    /**
     * SuspensionRepairRus
     * @param suspensionRepairList
     * @param set
     * @throws SQLException
     */
    private void SuspensionRepairRus(List<SuspensionRepair> suspensionRepairList, ResultSet set) throws SQLException {
        SuspensionRepair suspensionRepair;
        while (set.next()) {
            suspensionRepair = new SuspensionRepair();
            suspensionRepair.setId(set.getInt("id"));
            suspensionRepair.setSuspensionRepairRus(set.getString("suspensionrepairrus"));
            suspensionRepairList.add(suspensionRepair);
        }
    }

    /**
     * SuspensionRepairEng
     * @param suspensionRepairList
     * @param set
     * @throws SQLException
     */
    private void SuspensionRepairEng(List<SuspensionRepair> suspensionRepairList, ResultSet set) throws SQLException {
        SuspensionRepair suspensionRepair;
        while (set.next()) {
            suspensionRepair = new SuspensionRepair();
            suspensionRepair.setId(set.getInt("id"));
            suspensionRepair.setSuspensionRepairEng(set.getString("suspensionrepaireng"));
            suspensionRepairList.add(suspensionRepair);
        }
    }


    /**
     * addNewSuspensionRepair
     * @param suspensionRepair
     * @return
     */
    public int addNewSuspensionRepair(SuspensionRepair suspensionRepair) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`suspensionrepair`(`id`,`suspensionrepairrus`, `suspensionrepaireng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, suspensionRepair.getSuspensionRepairRus());
            statment.setString(2, suspensionRepair.getSuspensionRepairEng());

            rowsAffected = statment.executeUpdate();

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsAffected;

    }
    /**
     * DeleteById
     * @param id
     * @return
     */
    public int DeleteById(int id) {

        int rowsDeleted = 0;
        try {
            Connection connection = connectToData();

            String sql = "DELETE FROM `car_db`.`suspensionrepair` WHERE  id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            rowsDeleted = statment.executeUpdate();
            if (rowsDeleted > 0) {
                System.out.println("A Message was deleted successfully!");
            }

        } catch (SQLException exception) {
            System.out.println("sqlException in Application in CATEGORY DELETE  Section  : " + exception);
            exception.printStackTrace();
        }
        return rowsDeleted;
    }

    /**
     * SuspensionRepairList
     * @param suspensionRepairList
     * @param set
     * @throws SQLException
     */
    private void SuspensionRepairList(List<SuspensionRepair> suspensionRepairList, ResultSet set) throws SQLException {
        SuspensionRepair suspensionRepair;
        while (set.next()) {
            suspensionRepair = new SuspensionRepair();
            suspensionRepair.setId(set.getInt("id"));
            suspensionRepair.setSuspensionRepairRus(set.getString("suspensionrepaireus"));
            suspensionRepair.setSuspensionRepairEng(set.getString("suspensionrepaireng"));

            suspensionRepairList.add(suspensionRepair);

        }
    }


    public List<SuspensionRepair> getSRInRussianById(int id) {
        SuspensionRepair suspensionRepair = null;
        List<SuspensionRepair> suspensionRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`suspensionrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            SuspensionRepairRus(suspensionRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return suspensionRepairList;
    }

    public List<SuspensionRepair> getSRInEnglishById(int id) {
        SuspensionRepair suspensionRepair = null;
        List<SuspensionRepair> suspensionRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`suspensionrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            SuspensionRepairEng(suspensionRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return suspensionRepairList;
    }
}
