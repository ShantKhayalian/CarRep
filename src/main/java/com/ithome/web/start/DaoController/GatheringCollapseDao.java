package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.Conditioners;
import com.ithome.web.start.Beans.GatheringCollapse;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GatheringCollapseDao {

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * getAllGatheringCollapse
     *
     * @return
     */
    public List<GatheringCollapse> getAllGatheringCollapse() {
        List<GatheringCollapse> gatheringCollapseList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`gatheringcollapse` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            GatheringCollapseList(gatheringCollapseList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return gatheringCollapseList;
    }

    /**
     * UpdateGatheringCollapseEng
     * @param gatheringCollapse
     * @param id
     * @return
     */
    public int UpdateGatheringCollapseEng(GatheringCollapse gatheringCollapse, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`gatheringcollapse`  SET gatheringcollapseeng=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, gatheringCollapse.getGatheringCollapseEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * UpdateGatheringCollapseRus
     * @param gatheringCollapse
     * @param id
     * @return
     */
    public int UpdateGatheringCollapseRus(GatheringCollapse gatheringCollapse, int id) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`gatheringcollapse`  SET gatheringcollapserus=? WHERE id=" + id;
            PreparedStatement statment = connection.prepareStatement(sql);
            statment.setString(1, gatheringCollapse.getGatheringCollapseEng());
            rowsUpdated = statment.executeUpdate();
            if (rowsUpdated > 0) {
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }

    /**
     * getGatheringCollapseInRussian
     * @return
     */
    public List<GatheringCollapse> getGatheringCollapseInRussian() {
        GatheringCollapse gatheringCollapse = null;
        List<GatheringCollapse> gatheringCollapseList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`gatheringcollapse` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            GatheringCollapseRus(gatheringCollapseList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return gatheringCollapseList;
    }


    /**
     * getGatheringCollapseInEnglish
     * @return
     */
    public List<GatheringCollapse> getGatheringCollapseInEnglish() {
        GatheringCollapse gatheringCollapse = null;
        List<GatheringCollapse> gatheringCollapseList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`gatheringcollapse` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            GatheringCollapseEng(gatheringCollapseList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return gatheringCollapseList;
    }

    /**
     * GatheringCollapseRus
     * @param gatheringCollapseList
     * @param set
     * @throws SQLException
     */
    private void GatheringCollapseRus(List<GatheringCollapse> gatheringCollapseList, ResultSet set) throws SQLException {
        GatheringCollapse gatheringCollapse;
        while (set.next()) {
            gatheringCollapse = new GatheringCollapse();
            gatheringCollapse.setId(set.getInt("id"));
            gatheringCollapse.setGatheringCollapseRus(set.getString("gatheringcollapserus"));
            gatheringCollapseList.add(gatheringCollapse);
        }
    }

    /**
     * GatheringCollapseEng
     * @param gatheringCollapseList
     * @param set
     * @throws SQLException
     */
    private void GatheringCollapseEng(List<GatheringCollapse> gatheringCollapseList, ResultSet set) throws SQLException {
        GatheringCollapse gatheringCollapse;
        while (set.next()) {
            gatheringCollapse = new GatheringCollapse();
            gatheringCollapse.setId(set.getInt("id"));
            gatheringCollapse.setGatheringCollapseEng(set.getString("gatheringcollapseeng"));
            gatheringCollapseList.add(gatheringCollapse);
        }
    }


    /**
     * addNewGatheringCollapse
     * @param gatheringCollapse
     * @return
     */
    public int addNewGatheringCollapse(GatheringCollapse gatheringCollapse) {
        int rowsAffected = 0;
        try {
            Connection connection = connectToData();
            String insertQuery = "INSERT INTO `car_db`.`gatheringcollapse`(`id`,`gatheringcollapserus`, `gatheringcollapseeng`) values(Default,?,?)";
            PreparedStatement statment = connection.prepareStatement(insertQuery);
            statment.setString(1, gatheringCollapse.getGatheringCollapseRus());
            statment.setString(2, gatheringCollapse.getGatheringCollapseEng());

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

            String sql = "DELETE FROM `car_db`.`gatheringcollapse` WHERE  id=" + id;
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
     * GatheringCollapseList
     * @param gatheringCollapseList
     * @param set
     * @throws SQLException
     */
    private void GatheringCollapseList(List<GatheringCollapse> gatheringCollapseList, ResultSet set) throws SQLException {
        GatheringCollapse gatheringCollapse;
        while (set.next()) {
            gatheringCollapse = new GatheringCollapse();
            gatheringCollapse.setId(set.getInt("id"));
            gatheringCollapse.setGatheringCollapseRus(set.getString("gatheringcollapserus"));
            gatheringCollapse.setGatheringCollapseEng(set.getString("gatheringcollapseeng"));

            gatheringCollapseList.add(gatheringCollapse);

        }
    }


    public List<GatheringCollapse> getGCInRussianById(int id) {
        GatheringCollapse gatheringCollapse = null;
        List<GatheringCollapse> gatheringCollapseList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`gatheringcollapse` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            GatheringCollapseRus(gatheringCollapseList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return gatheringCollapseList;
    }

    public List<GatheringCollapse> getGCInEnglishById(int id) {
        GatheringCollapse gatheringCollapse = null;
        List<GatheringCollapse> gatheringCollapseList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`gatheringcollapse` WHERE `id`=" + id;
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            GatheringCollapseEng(gatheringCollapseList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return gatheringCollapseList;
    }
}
