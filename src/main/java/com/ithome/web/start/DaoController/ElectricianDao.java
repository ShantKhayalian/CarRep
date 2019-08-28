package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Conditioners;
import com.ithome.web.start.Beans.Electrician;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ElectricianDao {
    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all Electrician
     *
     * @return
     */
    public List<Electrician> getAllElectrician() {
        List<Electrician> electricianList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`electrician` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ElectricianList(electricianList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return electricianList;
    }

    /**
     * UpdateElectricianEng
     * @param electrician
     * @param id
     * @return
     */
    public int UpdateElectricianEng(Electrician electrician, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`electrician`  SET electricianeng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, electrician.getElectricianEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateElectricianRus
     * @param electrician
     * @param id
     * @return
     */
    public int UpdateElectricianRus(Electrician electrician, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`electrician`  SET electricianrus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, electrician.getElectricianRus());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getElectricianInRussian
     * @return
     */
    public List<Electrician> getElectricianInRussian() {
        Electrician electrician = null;
        List<Electrician> electricianList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`electrician` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ElectricianRus(electricianList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return electricianList;
    }

    /**
     * getElectricianInEnglish
     * @return
     */
    public List<Electrician> getElectricianInEnglish() {
        Electrician electrician = null;
        List<Electrician> electricianList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`electrician` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ElectricianEng(electricianList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return electricianList;
    }

    /**
     * ElectricianRus
     * @param electricianList
     * @param set
     * @throws SQLException
     */
    private void ElectricianRus(List<Electrician> electricianList, ResultSet set) throws SQLException {
        Electrician electrician;
        while (set.next()) {
            electrician = new Electrician();
            electrician.setId(set.getInt("id"));
            electrician.setElectricianRus(set.getString("electricianrus"));
            electricianList.add(electrician);
        }
    }

    /**
     * ElectricianEng
     * @param electricianList
     * @param set
     * @throws SQLException
     */
    private void ElectricianEng(List<Electrician> electricianList, ResultSet set) throws SQLException {
        Electrician electrician;
        while (set.next()) {
            electrician = new Electrician();
            electrician.setId(set.getInt("id"));
            electrician.setElectricianEng(set.getString("electricianeng"));
            electricianList.add(electrician);
        }
    }

    /**
     * addNewElectrician
     * @param electrician
     * @return
     */
    public int addNewElectrician(Electrician electrician) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`electrician`(`id`,`electricianrus`, `electricianeng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, electrician.getElectricianRus());
            statment.setString(2, electrician.getElectricianEng());

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

            String sql = "DELETE FROM `car_db`.`electrician` WHERE  id=" + id;
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
     * @param electricianList
     * @param set
     * @throws SQLException
     */
    private void ElectricianList(List<Electrician> electricianList, ResultSet set) throws SQLException {
        Electrician electrician;
        while (set.next()) {
            electrician = new Electrician();
            electrician.setId(set.getInt("id"));
            electrician.setElectricianRus(set.getString("electricianrus"));
            electrician.setElectricianEng(set.getString("electricianeng"));

            electricianList.add(electrician);

        }
    }
}
