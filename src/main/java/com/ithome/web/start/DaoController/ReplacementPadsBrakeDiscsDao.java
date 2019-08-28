package com.ithome.web.start.DaoController;


import com.ithome.web.start.Beans.ReplacementPadsBrakeDiscs;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReplacementPadsBrakeDiscsDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * getAllReplacementPadsBrakeDiscs
     *
     * @return
     */
    public List<ReplacementPadsBrakeDiscs> getAllReplacementPadsBrakeDiscs() {
        List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`replacementpadsbrakediscs` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ReplacementPadsBrakeDiscsList(replacementPadsBrakeDiscsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return replacementPadsBrakeDiscsList;
    }

    /**
     * UpdateReplacementPadsBrakeDiscsEng
     * @param replacementPadsBrakeDiscs
     * @param id
     * @return
     */
    public int UpdateReplacementPadsBrakeDiscsEng(ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`replacementpadsbrakediscs`  SET conditionerseng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, replacementPadsBrakeDiscs.getReplacementPadsBrakeDiscsEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateReplacementPadsBrakeDiscsRus
     * @param replacementPadsBrakeDiscs
     * @param id
     * @return
     */
    public int UpdateReplacementPadsBrakeDiscsRus(ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`replacementpadsbrakediscs`  SET conditionersrus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, replacementPadsBrakeDiscs.getReplacementPadsBrakeDiscsEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getReplacementPadsBrakeDiscsInRussian
     * @return
     */
    public List<ReplacementPadsBrakeDiscs> getReplacementPadsBrakeDiscsInRussian() {
        ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs = null;
        List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`replacementpadsbrakediscs` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ReplacementPadsBrakeDiscsRus(replacementPadsBrakeDiscsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return replacementPadsBrakeDiscsList;
    }

    /**
     * getReplacementPadsBrakeDiscsInEnglish
     * @return
     */
    public List<ReplacementPadsBrakeDiscs> getReplacementPadsBrakeDiscsInEnglish() {
        ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs = null;
        List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`replacementpadsbrakediscs` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ReplacementPadsBrakeDiscsEng(replacementPadsBrakeDiscsList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return replacementPadsBrakeDiscsList;
    }

    /**
     * ReplacementPadsBrakeDiscsRus
     * @param replacementPadsBrakeDiscsList
     * @param set
     * @throws SQLException
     */
    private void ReplacementPadsBrakeDiscsRus(List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList, ResultSet set) throws SQLException {
        ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs;
        while (set.next()) {
            replacementPadsBrakeDiscs = new ReplacementPadsBrakeDiscs();
            replacementPadsBrakeDiscs.setId(set.getInt("id"));
            replacementPadsBrakeDiscs.setReplacementPadsBrakeDiscsRus(set.getString("replacementpadsbrakediscsrus"));
            replacementPadsBrakeDiscsList.add(replacementPadsBrakeDiscs);
        }
    }

    /**
     * ReplacementPadsBrakeDiscsEng
     * @param replacementPadsBrakeDiscsList
     * @param set
     * @throws SQLException
     */
    private void ReplacementPadsBrakeDiscsEng(List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList, ResultSet set) throws SQLException {
        ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs;
        while (set.next()) {
            replacementPadsBrakeDiscs = new ReplacementPadsBrakeDiscs();
            replacementPadsBrakeDiscs.setId(set.getInt("id"));
            replacementPadsBrakeDiscs.setReplacementPadsBrakeDiscsEng(set.getString("replacementpadsbrakediscseng"));
            replacementPadsBrakeDiscsList.add(replacementPadsBrakeDiscs);
        }
    }

    /**
     * addNewReplacementPadsBrakeDiscs
     * @param replacementPadsBrakeDiscs
     * @return
     */
    public int addNewReplacementPadsBrakeDiscs(ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`replacementpadsbrakediscs`(`id`,`replacementpadsbrakediscsrus`, `replacementpadsbrakediscseng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, replacementPadsBrakeDiscs.getReplacementPadsBrakeDiscsRus());
            statment.setString(2, replacementPadsBrakeDiscs.getReplacementPadsBrakeDiscsEng());

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

            String sql = "DELETE FROM `car_db`.`replacementpadsbrakediscs` WHERE  id=" + id;
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
     * @param replacementPadsBrakeDiscsList
     * @param set
     * @throws SQLException
     */
    private void ReplacementPadsBrakeDiscsList(List<ReplacementPadsBrakeDiscs> replacementPadsBrakeDiscsList, ResultSet set) throws SQLException {
        ReplacementPadsBrakeDiscs replacementPadsBrakeDiscs;
        while (set.next()) {
            replacementPadsBrakeDiscs = new ReplacementPadsBrakeDiscs();
            replacementPadsBrakeDiscs.setId(set.getInt("id"));
            replacementPadsBrakeDiscs.setReplacementPadsBrakeDiscsRus(set.getString("replacementpadsbrakediscsrus"));
            replacementPadsBrakeDiscs.setReplacementPadsBrakeDiscsEng(set.getString("replacementpadsbrakediscseng"));

            replacementPadsBrakeDiscsList.add(replacementPadsBrakeDiscs);

        }
    }
}
