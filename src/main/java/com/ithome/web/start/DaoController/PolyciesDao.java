package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Policyies;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PolyciesDao {

    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    public List<Policyies> getAll() {
        Policyies body = null;
        List<Policyies> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`policy` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            changePmListing(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }
    /**
     * Set of ChangeРМ
     *
     * @param list
     * @param set
     * @throws SQLException
     */
    private void changePmListing(List<Policyies> list, ResultSet set) throws SQLException {
        Policyies details;
        while (set.next()) {
            details = new Policyies();
            details.setId(set.getInt("id"));
            details.setEng(set.getString("eng"));
            details.setRus(set.getString("rus"));

            list.add(details);
        }
    }

    public List<Policyies> getEng() {
        Policyies body = null;
        List<Policyies> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`policy` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeEng(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }

    public List<Policyies> getRus() {
        Policyies body = null;
        List<Policyies> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`policy` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeRus(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }


    private void ChangeRus(List<Policyies> list, ResultSet set) throws SQLException {
        Policyies body;
        while (set.next()) {
            body = new Policyies();
            body.setId(set.getInt("id"));
            body.setRus(set.getString("rus"));
            list.add(body);
        }
    }


    private void ChangeEng(List<Policyies> list, ResultSet set) throws SQLException {
        Policyies body;
        while (set.next()) {
            body = new Policyies();
            body.setId(set.getInt("id"));
            body.setEng(set.getString("eng"));
            list.add(body);
        }
    }


    public int UpdateEng(Policyies body, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`policy`  SET eng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, body.getEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     *
     * @param body
     * @param id
     * @return
     */
    public int UpdateRus(Policyies body, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`policy`  SET rus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, body.getRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    public int DeleteById(int id) {

        int rowsDeleted = 0;
        try {
            Connection connection = connectToData();

            String sql = "DELETE FROM `car_db`.`policy` WHERE  id=" + id;
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
     *
     * @param body
     * @return
     */
    public int addNewChangeРМ(Policyies body) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`policy`(`id`,`rus`, `eng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, body.getRus());
            statment.setString(2, body.getEng());

            rowsAffected = statment.executeUpdate();

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsAffected;

    }

    /**
     * getOilFilterInRussianById
     * @param id
     * @return
     */
    public List<Policyies> getRusId(int id) {
        Policyies body = null;
        List<Policyies> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`policy` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeRus(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }

    /**
     * getOilFilterInEnglishById
     * @param id
     * @return
     */
    public List<Policyies> getEngId(int id) {
        Policyies body = null;
        List<Policyies> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`policy` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeEng(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }
}



