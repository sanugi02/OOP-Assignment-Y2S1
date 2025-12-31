package com.crowncrest.service;

import com.crowncrest.model.Employee;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeService {

    // Create Employee
    public boolean creatEmployee(Employee employee) {
        String query = "INSERT INTO employee (name, password, email, occupation) VALUES (?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, employee.getName());
            stmt.setString(2, employee.getPassword());
            stmt.setString(3, employee.getEmail());
            stmt.setString(4, employee.getOccupation());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get Employee by ID
    public Employee getEmployee(int id) {
        String query = "SELECT * FROM employee WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Employee employee = new Employee();
                employee.setId(rs.getInt("id"));
                employee.setName(rs.getString("name"));
                employee.setPassword(rs.getString("password"));
                employee.setEmail(rs.getString("email"));
                employee.setOccupation(rs.getString("occupation"));
                return employee;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get All Employee
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT * FROM employee";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setId(rs.getInt("id"));
                employee.setName(rs.getString("name"));
                employee.setPassword(rs.getString("password"));
                employee.setEmail(rs.getString("email"));
                employee.setOccupation(rs.getString("occupation"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Update Employee
    public boolean updateEmployee(Employee employee) {
        String query = "UPDATE employee SET name = ?, password = ?, email = ?, occupation = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, employee.getName());
            stmt.setString(2, employee.getPassword());
            stmt.setString(3, employee.getEmail());
            stmt.setString(4, employee.getOccupation());
            stmt.setInt(5, employee.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete Employee
    public boolean deleteEmployee(int id) {
        String query = "DELETE FROM employee WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
