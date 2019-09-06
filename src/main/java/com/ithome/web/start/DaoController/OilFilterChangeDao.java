package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Conditioners;
import com.ithome.web.start.Beans.OilFilterChange;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OilFilterChangeDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all conditioners
     *
     * @return
     */
    public List<OilFilterChange> getAllOilFilterChange() {
        List<OilFilterChange> oilFilterChangeList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`oilfilterchange` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            OilFilterChangeList(oilFilterChangeList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return oilFilterChangeList;
    }

    /**
     * UpdateConditionersEng
     * @param oilFilterChange
     * @param id
     * @return
     */
    public int UpdateOilFilterChangeEng(OilFilterChange oilFilterChange, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`oilfilterchange`  SET oilfilterchangeeng=?, oilfilterchangerus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, oilFilterChange.getOilFilterChangeEng());
            statment.setString(2, oilFilterChange.getOilFilterChangeRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateOilFilterChangeRus
     * @param oilFilterChange
     * @param id
     * @return
     */
    public int UpdateOilFilterChangeRus(OilFilterChange oilFilterChange, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`oilfilterchange`  SET oilfilterchangerus=?,oilfilterchangeeng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, oilFilterChange.getOilFilterChangeRus());
            statment.setString(2, oilFilterChange.getOilFilterChangeEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getConditionersInRussian
     * @return
     */
    public List<OilFilterChange> getOilFilterChangeInRussian() {
        OilFilterChange oilFilterChange = null;
        List<OilFilterChange> oilFilterChangeList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`oilfilterchange` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            OilFilterChangeRus(oilFilterChangeList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return oilFilterChangeList;
    }

    /**
     * getOilFilterChangeInEnglish
     * @return
     */
    public List<OilFilterChange> getOilFilterChangeInEnglish() {
        OilFilterChange oilFilterChange = null;
        List<OilFilterChange> oilFilterChangeList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`oilfilterchange` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            OilFilterChangeEng(oilFilterChangeList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return oilFilterChangeList;
    }

    /**
     * OilFilterChangeRus
     * @param oilFilterChangeList
     * @param set
     * @throws SQLException
     */
    private void OilFilterChangeRus(List<OilFilterChange> oilFilterChangeList, ResultSet set) throws SQLException {
        OilFilterChange oilFilterChange;
        while (set.next()) {
            oilFilterChange = new OilFilterChange();
            oilFilterChange.setId(set.getInt("id"));
            oilFilterChange.setOilFilterChangeRus(set.getString("oilfilterchangerus"));
            oilFilterChangeList.add(oilFilterChange);
        }
    }

    /**
     * OilFilterChangeEng
     * @param oilFilterChangeList
     * @param set
     * @throws SQLException
     */
    private void OilFilterChangeEng(List<OilFilterChange> oilFilterChangeList, ResultSet set) throws SQLException {
        OilFilterChange oilFilterChange;
        while (set.next()) {
            oilFilterChange = new OilFilterChange();
            oilFilterChange.setId(set.getInt("id"));
            oilFilterChange.setOilFilterChangeEng(set.getString("oilfilterchangeeng"));
            oilFilterChangeList.add(oilFilterChange);
        }
    }

    /**
     * addOilFilterChange
     * @param oilFilterChange
     * @return
     */
    public int addOilFilterChange(OilFilterChange oilFilterChange) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`oilfilterchange`(`id`,`oilfilterchangerus`, `oilfilterchangeeng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, oilFilterChange.getOilFilterChangeRus());
            statment.setString(2, oilFilterChange.getOilFilterChangeEng());

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

            String sql = "DELETE FROM `car_db`.`oilfilterchange` WHERE  id=" + id;
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
     * @param oilFilterChangeList
     * @param set
     * @throws SQLException
     */
    private void OilFilterChangeList(List<OilFilterChange> oilFilterChangeList, ResultSet set) throws SQLException {
        OilFilterChange oilFilterChange;
        while (set.next()) {
            oilFilterChange = new OilFilterChange();
            oilFilterChange.setId(set.getInt("id"));
            oilFilterChange.setOilFilterChangeRus(set.getString("oilfilterchangerus"));
            oilFilterChange.setOilFilterChangeEng(set.getString("oilfilterchangerus"));

            oilFilterChangeList.add(oilFilterChange);

        }
    }

    /**
     * getOilFilterInEnglishById
     * @param id
     * @return
     */
    public List<OilFilterChange> getOilFilterInEnglishById(int id) {
        OilFilterChange oilFilterChange = null;
        List<OilFilterChange> oilFilterChangeList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`oilfilterchange` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            OilFilterChangeEng(oilFilterChangeList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return oilFilterChangeList;

    }


    /**
     * getOilFilterInRussianById
     * @param id
     * @return
     */
    public List<OilFilterChange> getOilFilterInRussianById(int id) {
        OilFilterChange oilFilterChange = null;
        List<OilFilterChange> oilFilterChangeList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`oilfilterchange` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            OilFilterChangeRus(oilFilterChangeList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return oilFilterChangeList;

    }
}
