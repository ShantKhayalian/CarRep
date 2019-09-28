package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.PreSale;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PreSaleDao {

    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    public List<PreSale> getAll() {
        PreSale body = null;
        List<PreSale> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`presale` ";
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
    private void changePmListing(List<PreSale> list, ResultSet set) throws SQLException {
        PreSale details;
        while (set.next()) {
            details = new PreSale();
            details.setId(set.getInt("id"));
            details.setEng(set.getString("eng"));
            details.setRus(set.getString("rus"));

            list.add(details);
        }
    }

    public List<PreSale> getEng() {
        PreSale body = null;
        List<PreSale> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`presale` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeEng(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }

    public List<PreSale> getRus() {
        PreSale body = null;
        List<PreSale> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`presale` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeRus(list, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return list;
    }


    private void ChangeRus(List<PreSale> list, ResultSet set) throws SQLException {
        PreSale body;
        while (set.next()) {
            body = new PreSale();
            body.setId(set.getInt("id"));
            body.setRus(set.getString("rus"));
            list.add(body);
        }
    }


    private void ChangeEng(List<PreSale> list, ResultSet set) throws SQLException {
        PreSale body;
        while (set.next()) {
            body = new PreSale();
            body.setId(set.getInt("id"));
            body.setEng(set.getString("eng"));
            list.add(body);
        }
    }


    public int UpdateEng(PreSale body, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`presale`  SET eng=? WHERE id=" + id;
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
    public int UpdateRus(PreSale body, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`presale`  SET rus=? WHERE id=" + id;
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

            String sql = "DELETE FROM `car_db`.`presale` WHERE  id=" + id;
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
    public int addNewChangeРМ(PreSale body) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`presale`(`id`,`rus`, `eng`) values(Default,?,?)";
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
    public List<PreSale> getRusId(int id) {
        PreSale body = null;
        List<PreSale> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`presale` WHERE `id`=" + id;
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
    public List<PreSale> getEngId(int id) {
        PreSale body = null;
        List<PreSale> list = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`presale` WHERE `id`=" + id;
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


