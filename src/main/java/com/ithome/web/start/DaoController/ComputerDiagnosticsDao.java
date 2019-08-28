package com.ithome.web.start.DaoController;


import com.ithome.web.start.Beans.ComputerDiagnostics;
import com.ithome.web.start.Beans.DiagnosticsRepair;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComputerDiagnosticsDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() throws SQLException {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get All Computer Diagnostics
     *
     * @return
     */
    public List<ComputerDiagnostics> getAllComputerDiagnosticsList() {
        ComputerDiagnostics computerDiagnostics = null;
        List<ComputerDiagnostics> computerDiagnosticsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`computerdiagnostics` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            DiagnosticsRepairList(computerDiagnosticsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return computerDiagnosticsList;
    }

    /**
     * Set of abouts
     *
     * @param computerDiagnosticsList
     * @param set
     * @throws SQLException
     */
    private void DiagnosticsRepairList(List<ComputerDiagnostics> computerDiagnosticsList, ResultSet set) throws SQLException {
        ComputerDiagnostics computerDiagnostics;
        while (set.next()) {
            computerDiagnostics = new ComputerDiagnostics();
            computerDiagnostics.setId(set.getInt("id"));
            computerDiagnostics.setComputerDiagnosticsRus(set.getString("computerdiagnosticsrus"));
            computerDiagnostics.setComputerDiagnosticsEng(set.getString("computerdiagnosticseng"));

            computerDiagnosticsList.add(computerDiagnostics);
        }
    }

    /**
     * get English computer Diagnostics
     *
     * @return
     */
    public List<ComputerDiagnostics> getComputerDiagnosticsInEnglish() {
        ComputerDiagnostics diagnostics = null;
        List<ComputerDiagnostics> diagnosticsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`computerdiagnostics` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ComputerDiagnosticsEng(diagnosticsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsList;
    }

    /**
     * get Russian computer Diagnostics
     *
     * @return
     */
    public List<ComputerDiagnostics> getComputerDiagnosticsInRussian() {
        ComputerDiagnostics diagnostics = null;
        List<ComputerDiagnostics> diagnosticsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`computerdiagnostics` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ComputerDiagnosticsRus(diagnosticsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return diagnosticsList;
    }

    /**
     * Get Russian computerDiagnostics
     *
     * @param computerDiagnosticsList
     * @param set
     * @throws SQLException
     */
    private void ComputerDiagnosticsRus(List<ComputerDiagnostics> computerDiagnosticsList, ResultSet set) throws SQLException {
        ComputerDiagnostics computerDiagnostics;
        while (set.next()) {
            computerDiagnostics = new ComputerDiagnostics();
            computerDiagnostics.setId(set.getInt("id"));
            computerDiagnostics.setComputerDiagnosticsRus(set.getString("computerdiagnosticsrus"));
            computerDiagnosticsList.add(computerDiagnostics);
        }
    }

    /**
     * Get English computerDiagnostics
     *
     * @param computerDiagnosticsList
     * @param set
     * @throws SQLException
     */
    private void ComputerDiagnosticsEng(List<ComputerDiagnostics> computerDiagnosticsList, ResultSet set) throws SQLException {
        ComputerDiagnostics computerDiagnostics;
        while (set.next()) {
            computerDiagnostics = new ComputerDiagnostics();
            computerDiagnostics.setId(set.getInt("id"));
            computerDiagnostics.setComputerDiagnosticsEng(set.getString("computerdiagnosticseng"));
            computerDiagnosticsList.add(computerDiagnostics);
        }
    }

    /**
     * Update computerDiagnostics in English
     *
     * @param ComputerDiagnostics
     * @param computerDiagnosticsId
     * @return
     */
    public int UpdateComputerDiagnosticsEng(String ComputerDiagnostics, int computerDiagnosticsId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`computerdiagnostics`  SET computerdiagnosticseng=? WHERE id=" + computerDiagnosticsId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, ComputerDiagnostics);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * Update computerDiagnostics in Russian
     *
     * @param ComputerDiagnostics
     * @param computerDiagnosticsId
     * @return
     */
    public int UpdateComputerDiagnosticsRus(String ComputerDiagnostics, int computerDiagnosticsId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`computerdiagnostics`  SET computerdiagnosticsrus=? WHERE id=" + computerDiagnosticsId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, ComputerDiagnostics);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * Delete computerDiagnosticsId
     * @param computerDiagnosticsId
     * @return
     */
    public int DeleteById(int computerDiagnosticsId) {

        int rowsDeleted = 0;
        try {
            Connection connection = connectToData();

            String sql = "DELETE FROM `car_db`.`computerdiagnostics` WHERE  id=" + computerDiagnosticsId;
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
     * Add new ComputerDiagnostics
     * @param computerDiagnostics
     * @return
     */
    public int addNewComputerDiagnostics(ComputerDiagnostics computerDiagnostics) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`computerdiagnostics`(`id`,`computerdiagnosticsrus`, `computerdiagnosticseng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, computerDiagnostics.getComputerDiagnosticsRus());
            statment.setString(2, computerDiagnostics.getComputerDiagnosticsEng());

            rowsAffected = statment.executeUpdate();

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsAffected;

    }



}
