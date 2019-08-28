package com.ithome.web.start.DaoController;


import com.ithome.web.start.Beans.ChangeРМ;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChangeРМDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() throws SQLException {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all ChangeРМ
     *
     * @return
     */
    public List<ChangeРМ> getAllChangePm() {
        ChangeРМ changeРМ = null;
        List<ChangeРМ> changeРМList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`changepm` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            changePmListing(changeРМList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return changeРМList;
    }

    /**
     * Set of ChangeРМ
     *
     * @param changeРМList
     * @param set
     * @throws SQLException
     */
    private void changePmListing(List<ChangeРМ> changeРМList, ResultSet set) throws SQLException {
        ChangeРМ changeРМ;
        while (set.next()) {
            changeРМ = new ChangeРМ();
            changeРМ.setId(set.getInt("id"));
            changeРМ.setChangeРМEng(set.getString("changepmeng"));
            changeРМ.setChangeРМRus(set.getString("changepmrus"));

            changeРМList.add(changeРМ);
        }
    }

    /**
     * get English ChangeРМ
     *
     * @return
     */
    public List<ChangeРМ> getChangeРМInEnglish() {
        ChangeРМ changeРМ = null;
        List<ChangeРМ> changeРМList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`changepm` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeРМEng(changeРМList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return changeРМList;
    }

    /* * get Russian ChangeРМ
     *
     * @return
     */
    public List<ChangeРМ> getChangeРМInRussian() {
        ChangeРМ changeРМ = null;
        List<ChangeРМ> changeРМList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`changepm` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ChangeРМRus(changeРМList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return changeРМList;
    }

    /**
     * Get Russian ChangeРМ
     *
     * @param changeРМList
     * @param set
     * @throws SQLException
     */
    private void ChangeРМRus(List<ChangeРМ> changeРМList, ResultSet set) throws SQLException {
        ChangeРМ aboutUs;
        while (set.next()) {
            aboutUs = new ChangeРМ();
            aboutUs.setId(set.getInt("id"));
            aboutUs.setChangeРМRus(set.getString("changepmrus"));
            changeРМList.add(aboutUs);
        }
    }

    /**
     * Get Russian about us
     *
     * @param changeРМList
     * @param set
     * @throws SQLException
     */
    private void ChangeРМEng(List<ChangeРМ> changeРМList, ResultSet set) throws SQLException {
        ChangeРМ changeРМ;
        while (set.next()) {
            changeРМ = new ChangeРМ();
            changeРМ.setId(set.getInt("id"));
            changeРМ.setChangeРМEng(set.getString("changepmeng"));
            changeРМList.add(changeРМ);
        }
    }

    /**
     * Update ChangeРМ in English
     *
     * @param ChangeРМ
     * @param changeРМId
     * @return
     */
    public int UpdateChangeРМEng(String ChangeРМ, int changeРМId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`changepm`  SET changepmeng=? WHERE id=" + changeРМId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, ChangeРМ);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * Update ChangeРМ in English
     *
     * @param ChangeРМ
     * @param changeРМId
     * @return
     */
    public int UpdateChangeРМRus(String ChangeРМ, int changeРМId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`changepm`  SET changepmrus=? WHERE id=" + changeРМId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, ChangeРМ);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }


    /**
     * Delete tips
     * @param changePmId
     * @return
     */
    public int DeleteById(int changePmId) {

        int rowsDeleted = 0;
        try {
            Connection connection = connectToData();

            String sql = "DELETE FROM `car_db`.`changepm` WHERE  id=" + changePmId;
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


}
