package com.ithome.web.start.DaoController;

import com.ithome.web.start.Beans.AboutUs;
import com.ithome.web.start.Beans.Employee;
import com.ithome.web.start.Connection.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    /**
     * Add new agriculture credit
     * @param employee
     * @return
     * @throws SQLException
     */
    public int AddNewEmployee(Employee employee) throws SQLException {
        int rowsAffected = 0;

        Connection connection = connectToData();
        String insertQuery = "INSERT INTO `oferta_datat_controller`.`employee`" +
                "(`employee_id`, `firstName`, `lastName`, `perfession`,`dateOfBirth`,`ExperianceYears`,`phoneNumber`,`email`,`address`," +
                "`lastNameRu`,`firstNameRu`, `perfessionRu`, `addressRu`) "
                + "VALUES (Default,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement statment = connection.prepareStatement(insertQuery);
        setStatment(employee, statment);
        rowsAffected = statment.executeUpdate();

        return rowsAffected;

    }

    /**
     * Setting statments
     * @param employee
     * @param statement
     * @throws SQLException
     */
    private void setStatment(Employee employee, PreparedStatement statement) throws SQLException {
        statement.setString(1, employee.getFirstName());
        statement.setString(2,employee.getFirstNamRue());
        statement.setString(3, employee.getLastName());
        statement.setString(4,employee.getLastNameRu());
        statement.setString(5,employee.getPerfession());
        statement.setDate(6,employee.getDateOfBirth());
        statement.setString(7,employee.getExperianceYears());
        statement.setString(8,employee.getPhoneNumber());
        statement.setString(9,employee.getEmail());
        statement.setString(10,employee.getAddress());
        statement.setString(11,employee.getAddressRu());
    }

    /**
     * Connect to data
     *
     * @return
     */
    private Connection connectToData() {
        return DBConnection.getConnectionToDatabase();
    }

    /**
     * get all About us
     *
     * @return
     */
    public List<Employee> getAllEmployee() {
        Employee employee = null;
        List<Employee> employeeArrayList = new ArrayList<>();
        try {
            Connection connection = connectToData();
            String sql = "SELECT * FROM `car_db`.`employee` ";
            Statement statment = connection.createStatement();
            ResultSet set = statment.executeQuery(sql);
            EmployeeList(employeeArrayList, set);
        } catch (SQLException exception) {
            exception.printStackTrace();
            System.out.println("sqlException in Application in Admin Section  : " + exception);
        }
        return employeeArrayList;
    }


    /**
     * Set of abouts
     *
     * @param aboutList
     * @param set
     * @throws SQLException
     */
    private void EmployeeList(List<Employee> aboutList, ResultSet set) throws SQLException {
        Employee employee;
        while (set.next()) {
            employee = new Employee();
            employee.setId(set.getInt("id"));
            employee.setFirstName(set.getString("firstName"));
            employee.setLastName(set.getString("lastName"));
            employee.setPerfession(set.getString("perfession"));
            employee.setPhoneNumber(set.getString("phoneNumber"));
            employee.setAddress(set.getString("address"));
            employee.setEmail(set.getString("email"));
            employee.setExperianceYears(set.getString("ExperianceYears"));
            employee.setDateOfBirth(set.getDate("dateOfBirth"));
            employee.setFirstNamRue(set.getString("firstNameRu"));
            employee.setLastNameRu(set.getString("lastNameRu"));
            employee.setAddressRu(set.getString("addressRu"));

            aboutList.add(employee);
        }
    }

    /**
     * Update Employee in English
     *
     * @param employee
     * @param employeeId
     * @return
     */
    public int UpdateEmployee(Employee employee, int employeeId) {
        int rowsUpdated = 0;
        try {
            Connection connection = connectToData();

            String sql = "UPDATE `car_db`.`employee`  SET firstName=?,firstNameRu=?, lastName=?, lastNameRu=?, " +
                    "perfession=?,dateOfBirth=?,ExperianceYears=?," +
                    "phoneNumber=?,email=?,address=?,addressRu=? WHERE employee_id=" + employeeId;
            PreparedStatement statement = connection.prepareStatement(sql);
            setStatment(employee, statement);
            rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {

            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return rowsUpdated;
    }


}