package com.crowncrest.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/onlinehotelreservation";
    private static final String USER = "root";
    private static final String PASSWORD = "sanu@2002";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Required in older JDKs, safe to keep
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("✅ Database connection established");
        } catch (Exception e) {
            System.out.println("❌ DB Connection failed: " + e.getMessage());
            e.printStackTrace();
        }
        return conn;
    }
}
