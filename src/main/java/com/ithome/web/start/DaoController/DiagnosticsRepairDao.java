package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.DiagnosticsRepair;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DiagnosticsRepairDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * diagnosticsrepair
     *
     * @return
     */
    public List<DiagnosticsRepair> diagnosticsrepair() {
        List<DiagnosticsRepair> diagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`diagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairList(diagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsRepairList;
    }

    /**
     * UpdateDiagnosticsRepairEng
     * @param diagnosticsRepair
     * @param id
     * @return
     */
    public int UpdateDiagnosticsRepairEng(DiagnosticsRepair diagnosticsRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`diagnosticsrepair`  SET diagnosticsrepaireng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, diagnosticsRepair.getDiagnosticsRepairEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }


    /**
     * UpdateDiagnosticsRepairRus
     * @param diagnosticsRepair
     * @param id
     * @return
     */
    public int UpdateDiagnosticsRepairRus(DiagnosticsRepair diagnosticsRepair, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`diagnosticsrepair`  SET diagnosticsrepairrus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, diagnosticsRepair.getDiagnosticsRepairRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getDiagnosticsRepairInRussian
     * @return
     */
    public List<DiagnosticsRepair> getDiagnosticsRepairInRussian() {
        DiagnosticsRepair diagnosticsRepair = null;
        List<DiagnosticsRepair> diagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`diagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairRus(diagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsRepairList;
    }

    /**
     * getDiagnosticsRepairInEnglish
     * @return
     */
    public List<DiagnosticsRepair> getDiagnosticsRepairInEnglish() {
        DiagnosticsRepair diagnosticsRepair = null;
        List<DiagnosticsRepair> diagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`diagnosticsrepair` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairEng(diagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsRepairList;
    }

    /**
     * DiagnosticsRepairRus
     * @param diagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void DiagnosticsRepairRus(List<DiagnosticsRepair> diagnosticsRepairList, ResultSet set) throws SQLException {
        DiagnosticsRepair diagnosticsRepair;
        while (set.next()) {
            diagnosticsRepair = new DiagnosticsRepair();
            diagnosticsRepair.setId(set.getInt("id"));
            diagnosticsRepair.setDiagnosticsRepairRus(set.getString("diagnosticsrepairrus"));
            diagnosticsRepairList.add(diagnosticsRepair);
        }
    }

    /**
     * DiagnosticsRepairEng
     * @param diagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void DiagnosticsRepairEng(List<DiagnosticsRepair> diagnosticsRepairList, ResultSet set) throws SQLException {
        DiagnosticsRepair diagnosticsRepair;
        while (set.next()) {
            diagnosticsRepair = new DiagnosticsRepair();
            diagnosticsRepair.setId(set.getInt("id"));
            diagnosticsRepair.setDiagnosticsRepairEng(set.getString("diagnosticsrepaireng"));
            diagnosticsRepairList.add(diagnosticsRepair);
        }
    }

    /**
     * addNewDiagnosticsRepair
     * @param diagnosticsRepair
     * @return
     */
    public int addNewDiagnosticsRepair(DiagnosticsRepair diagnosticsRepair) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`diagnosticsrepair`(`id`,`diagnosticsrepairrus`, `diagnosticsrepaireng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, diagnosticsRepair.getDiagnosticsRepairRus());
            statment.setString(2, diagnosticsRepair.getDiagnosticsRepairEng());

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

            String sql = "DELETE FROM `car_db`.`diagnosticsrepair` WHERE  id=" + id;
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
     * @param diagnosticsRepairList
     * @param set
     * @throws SQLException
     */
    private void DiagnosticsRepairList(List<DiagnosticsRepair> diagnosticsRepairList, ResultSet set) throws SQLException {
        DiagnosticsRepair diagnosticsRepair;
        while (set.next()) {
            diagnosticsRepair = new DiagnosticsRepair();
            diagnosticsRepair.setId(set.getInt("id"));
            diagnosticsRepair.setDiagnosticsRepairRus(set.getString("diagnosticsrepairrus"));
            diagnosticsRepair.setDiagnosticsRepairEng(set.getString("diagnosticsrepaireng"));

            diagnosticsRepairList.add(diagnosticsRepair);

        }
    }

    public List<DiagnosticsRepair> getDRCInRussianById(int id) {
        DiagnosticsRepair diagnosticsRepair = null;
        List<DiagnosticsRepair> diagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`diagnosticsrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairRus(diagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsRepairList;
    }

    public List<DiagnosticsRepair> getDRCInEnglishById(int id) {
        DiagnosticsRepair diagnosticsRepair = null;
        List<DiagnosticsRepair> diagnosticsRepairList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`diagnosticsrepair` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairEng(diagnosticsRepairList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsRepairList;
    }
}
