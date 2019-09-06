package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Conditioners;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConditionersDao {

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
    public List<Conditioners> getAllConditioners() {
        List<Conditioners> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`conditioners` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ConditionersList(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }

    /**
     * UpdateConditionersEng
     * @param conditioners
     * @param id
     * @return
     */
    public int UpdateConditionersEng(Conditioners conditioners, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`conditioners`  SET conditionerseng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, conditioners.getConditionersEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateConditionersRus
     * @param conditioners
     * @param id
     * @return
     */
    public int UpdateConditionersRus(Conditioners conditioners, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`conditioners`  SET conditionersrus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, conditioners.getConditionersRus());
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
    public List<Conditioners> getConditionersInRussian() {
        Conditioners conditioners = null;
        List<Conditioners> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`conditioners` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ConditionersRus(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }

    /**
     * getConditionersInEnglish
     * @return
     */
    public List<Conditioners> getConditionersInEnglish() {
        Conditioners conditioners = null;
        List<Conditioners> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`conditioners` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ConditionersEng(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }

    /**
     * ConditionersRus
     * @param conditionersList
     * @param set
     * @throws SQLException
     */
    private void ConditionersRus(List<Conditioners> conditionersList, ResultSet set) throws SQLException {
        Conditioners conditioners;
        while (set.next()) {
            conditioners = new Conditioners();
            conditioners.setId(set.getInt("id"));
            conditioners.setConditionersRus(set.getString("conditionersrus"));
            conditionersList.add(conditioners);
        }
    }

    /**
     * ConditionersEng
     * @param conditionersList
     * @param set
     * @throws SQLException
     */
    private void ConditionersEng(List<Conditioners> conditionersList, ResultSet set) throws SQLException {
        Conditioners conditioners;
        while (set.next()) {
            conditioners = new Conditioners();
            conditioners.setId(set.getInt("id"));
            conditioners.setConditionersEng(set.getString("conditionerseng"));
            conditionersList.add(conditioners);
        }
    }

    /**
     * Add new conditioners
     * @param conditioners
     * @return
     */
    public int addNewConditioners(Conditioners conditioners) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`conditioners`(`id`,`conditionersrus`, `conditionerseng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, conditioners.getConditionersRus());
            statment.setString(2, conditioners.getConditionersEng());

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

            String sql = "DELETE FROM `car_db`.`conditioners` WHERE  id=" + id;
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
     * @param conditionersList
     * @param set
     * @throws SQLException
     */
    private void ConditionersList(List<Conditioners> conditionersList, ResultSet set) throws SQLException {
        Conditioners conditioners;
        while (set.next()) {
            conditioners = new Conditioners();
            conditioners.setId(set.getInt("id"));
            conditioners.setConditionersRus(set.getString("conditionersrus"));
            conditioners.setConditionersEng(set.getString("conditionerseng"));

            conditionersList.add(conditioners);

        }
    }

    public List<Conditioners> getCInRussianById(int id) {
        Conditioners conditioners = null;
        List<Conditioners> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`conditioners` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ConditionersRus(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }

    public List<Conditioners> getCInEnglishById(int id) {
        Conditioners conditioners = null;
        List<Conditioners> conditionersList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`conditioners` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            ConditionersEng(conditionersList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return conditionersList;
    }
}
