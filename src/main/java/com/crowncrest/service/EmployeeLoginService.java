package com.crowncrest.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.crowncrest.model.EmployeeLogin;
import com.crowncrest.util.DBConnection;

public class EmployeeLoginService {

    // Create EmployeeLogin
    public boolean createEmployee(EmployeeLogin employee) {
        String query = "INSERT INTO employee_login (occupation, email, full_name, password) VALUES (?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
                PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, employee.getOccupation());
            stmt.setString(2, employee.getEmail());
            stmt.setString(3, employee.getFullName());
            stmt.setString(4, employee.getPassword());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get EmployeeLogin by ID
    public EmployeeLogin getEmployee(int id) {
        String query = "SELECT * FROM employee_login WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                EmployeeLogin user = new EmployeeLogin();
                user.setId(rs.getInt("id"));
                user.setOccupation(rs.getString("occupation"));
                user.setEmail(rs.getString("email"));
                user.setFullName(rs.getString("full_name"));
                user.setPassword(rs.getString("password"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get All Employees
    public List<EmployeeLogin> getAllEmployees() {
        List<EmployeeLogin> users = new ArrayList<>();
        String query = "SELECT * FROM employee_login";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                EmployeeLogin user = new EmployeeLogin();
                user.setId(rs.getInt("id"));
                user.setOccupation(rs.getString("occupation"));
                user.setEmail(rs.getString("email"));
                user.setFullName(rs.getString("full_name"));
                user.setPassword(rs.getString("password"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    // Update EmployeeLogin
    public boolean updateEmployee(EmployeeLogin user) {
        String query = "UPDATE employee_login SET occupation = ?, email = ?, full_name = ?, password = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, user.getOccupation());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getFullName());
            stmt.setString(4, user.getPassword());
            stmt.setInt(5, user.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete EmployeeLogin
    public boolean deleteEmployee(int id) {
        String query = "DELETE FROM employee_login WHERE id = ?";
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

