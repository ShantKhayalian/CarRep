package com.ithome.web.start.DaoController;


import com.ithome.web.start.Beans.Conditioners;
import com.ithome.web.start.Beans.EngineDiagnosticsRepair;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EngineDiagnosticsRepairDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * getAllEngineDiagnosticsRepair
     *
     * @return
     */
    public List<EngineDiagnosticsRepair> getAllEngineDiagnosticsRepair() {
        List<EngineDiagnosticsRepair> engineDiagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`enginediagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EngineDiagnosticsRepairList(engineDiagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return engineDiagnosticsRepairList;
    }

    /**
     * UpdateEngineDiagnosticsRepairEng
     * @param engineDiagnosticsRepair
     * @param id
     * @return
     */
    public int UpdateEngineDiagnosticsRepairEng(EngineDiagnosticsRepair engineDiagnosticsRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`enginediagnosticsrepair`  SET `enginediagnosticsrepaireng`=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, engineDiagnosticsRepair.getEngineDiagnosticsRepairEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateEngineDiagnosticsRepairRus
     * @param engineDiagnosticsRepair
     * @param id
     * @return
     */
    public int UpdateEngineDiagnosticsRepairRus(EngineDiagnosticsRepair engineDiagnosticsRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`enginediagnosticsrepair`  SET `enginediagnosticsrepairrus`=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, engineDiagnosticsRepair.getEngineDiagnosticsRepairRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getEngineDiagnosticsRepairInRussian
     * @return
     */
    public List<EngineDiagnosticsRepair> getEngineDiagnosticsRepairInRussian() {
        EngineDiagnosticsRepair engineDiagnosticsRepair = null;
        List<EngineDiagnosticsRepair> engineDiagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`enginediagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EngineDiagnosticsRepairRus(engineDiagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return engineDiagnosticsRepairList;
    }

    /**
     * getEngineDiagnosticsRepairInEnglish
     * @return
     */
    public List<EngineDiagnosticsRepair> getEngineDiagnosticsRepairInEnglish() {
        EngineDiagnosticsRepair engineDiagnosticsRepair = null;
        List<EngineDiagnosticsRepair> engineDiagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`enginediagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EngineDiagnosticsRepairEng(engineDiagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return engineDiagnosticsRepairList;
    }

    /**
     * EngineDiagnosticsRepairRus
     * @param engineDiagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void EngineDiagnosticsRepairRus(List<EngineDiagnosticsRepair> engineDiagnosticsRepairList, ResultSet set) throws SQLException {
        EngineDiagnosticsRepair engineDiagnosticsRepair;
        while (set.next()) {
            engineDiagnosticsRepair = new EngineDiagnosticsRepair();
            engineDiagnosticsRepair.setId(set.getInt("id"));
            engineDiagnosticsRepair.setEngineDiagnosticsRepairRus(set.getString("enginediagnosticsrepairrus"));
            engineDiagnosticsRepairList.add(engineDiagnosticsRepair);
        }
    }

    /**
     * EngineDiagnosticsRepairEng
     * @param engineDiagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void EngineDiagnosticsRepairEng(List<EngineDiagnosticsRepair> engineDiagnosticsRepairList, ResultSet set) throws SQLException {
        EngineDiagnosticsRepair engineDiagnosticsRepair;
        while (set.next()) {
            engineDiagnosticsRepair = new EngineDiagnosticsRepair();
            engineDiagnosticsRepair.setId(set.getInt("id"));
            engineDiagnosticsRepair.setEngineDiagnosticsRepairEng(set.getString("enginediagnosticsrepaireng"));
            engineDiagnosticsRepairList.add(engineDiagnosticsRepair);
        }
    }

    /**
     * addNewEngineDiagnosticsRepair
     * @param engineDiagnosticsRepair
     * @return
     */
    public int addNewEngineDiagnosticsRepair(EngineDiagnosticsRepair engineDiagnosticsRepair) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`enginediagnosticsrepair`(`id`,`enginediagnosticsrepairrus`, `enginediagnosticsrepaireng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, engineDiagnosticsRepair.getEngineDiagnosticsRepairRus());
            statment.setString(2, engineDiagnosticsRepair.getEngineDiagnosticsRepairEng());

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

            String sql = "DELETE FROM `car_db`.`enginediagnosticsrepair` WHERE  id=" + id;
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
     * ConditionersList
     * @param engineDiagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void EngineDiagnosticsRepairList(List<EngineDiagnosticsRepair> engineDiagnosticsRepairList, ResultSet set) throws SQLException {
        EngineDiagnosticsRepair engineDiagnosticsRepair;
        while (set.next()) {
            engineDiagnosticsRepair = new EngineDiagnosticsRepair();
            engineDiagnosticsRepair.setId(set.getInt("id"));
            engineDiagnosticsRepair.setEngineDiagnosticsRepairRus(set.getString("enginediagnosticsrepairrus"));
            engineDiagnosticsRepair.setEngineDiagnosticsRepairEng(set.getString("enginediagnosticsrepaireng"));

            engineDiagnosticsRepairList.add(engineDiagnosticsRepair);

        }
    }


    public List<EngineDiagnosticsRepair> getDRCInRussianById(int id) {
        EngineDiagnosticsRepair engineDiagnosticsRepair = null;
        List<EngineDiagnosticsRepair> engineDiagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`enginediagnosticsrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EngineDiagnosticsRepairRus(engineDiagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return engineDiagnosticsRepairList;
    }

    public List<EngineDiagnosticsRepair> getDRCInEnglishById(int id) {
        EngineDiagnosticsRepair engineDiagnosticsRepair = null;
        List<EngineDiagnosticsRepair> engineDiagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`enginediagnosticsrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EngineDiagnosticsRepairEng(engineDiagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return engineDiagnosticsRepairList;
    }
}
