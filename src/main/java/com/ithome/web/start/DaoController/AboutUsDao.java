package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.AboutUs;
import com.ithome.web.start.Beans.Employee;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AboutUsDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() throws SQLException {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all About us
     *
     * @return
     */
    public List<AboutUs> getAllAboutUs() {
        AboutUs aboutUs = null;
        List<AboutUs> aboutList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`aboutus` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            aboutList(aboutList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return aboutList;
    }

    /**
     * Set of abouts
     *
     * @param aboutList
     * @param set
     * @throws SQLException
     */
    private void aboutList(List<AboutUs> aboutList, ResultSet set) throws SQLException {
        AboutUs aboutUs;
        while (set.next()) {
            aboutUs = new AboutUs();
            aboutUs.setId(set.getInt("about_id"));
            aboutUs.setAboutUs_Rus(set.getString("about_rus"));
            aboutUs.setAboutUs_Eng(set.getString("about_eng"));

            aboutList.add(aboutUs);
        }
    }

    /**
     * get English about us
     *
     * @return
     */
    public List<AboutUs> getAboutUsInEnglish() {
        AboutUs aboutUs = null;
        List<AboutUs> aboutusList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`aboutus` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            aboutUsEng(aboutusList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return aboutusList;
    }

    /**
     * get Russian about us
     *
     * @return
     */
    public List<AboutUs> getAboutUsInRussian() {
        AboutUs aboutUs = null;
        List<AboutUs> aboutusList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`aboutus` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            aboutUsRus(aboutusList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return aboutusList;
    }

    /**
     * Get English about us
     *
     * @param aboutUsList
     * @param set
     * @throws SQLException
     */
    private void aboutUsRus(List<AboutUs> aboutUsList, ResultSet set) throws SQLException {
        AboutUs aboutUs;
        while (set.next()) {
            aboutUs = new AboutUs();
            aboutUs.setId(set.getInt("about_id"));
            aboutUs.setAboutUs_Rus(set.getString("about_rus"));
            aboutUsList.add(aboutUs);
        }
    }

    /**
     * Get English about us
     *
     * @param aboutUsList
     * @param set
     * @throws SQLException
     */
    private void aboutUsEng(List<AboutUs> aboutUsList, ResultSet set) throws SQLException {
        AboutUs aboutUs;
        while (set.next()) {
            aboutUs = new AboutUs();
            aboutUs.setId(set.getInt("about_id"));
            aboutUs.setAboutUs_Eng(set.getString("about_eng"));
            aboutUsList.add(aboutUs);
        }
    }

    /**
     * Update Aboutus in English
     *
     * @param aboutUs
     * @param aboutUsId
     * @return
     */
    public int UpdateAboutusEng(String aboutUs, int aboutUsId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`aboutus`  SET about_eng=? WHERE about_id=" + aboutUsId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, aboutUs);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * Update Aboutus in Russian
     *
     * @param aboutUs
     * @param aboutUsId
     * @return
     */
    public int UpdateAboutusRus(String aboutUs, int aboutUsId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`aboutus`  SET about_rus=? WHERE about_id=" + aboutUsId;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, aboutUs);
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }


}
