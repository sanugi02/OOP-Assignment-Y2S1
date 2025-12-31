package com.crowncrest.service;

import com.crowncrest.model.RoomReservation;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomReservationService {

    // Create a new reservation
    public boolean createReservation(RoomReservation reservation) {
        String query = "INSERT INTO roomreservations (name, email, contactno, checkin, checkout, adults,children, noofrooms) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, reservation.getName());
            stmt.setString(2, reservation.getEmail());
            stmt.setString(3, reservation.getContactno());
            stmt.setDate(4, reservation.getCheckin());
            stmt.setDate(5, reservation.getCheckout());
            stmt.setInt(6, reservation.getAdults());
            stmt.setInt(7, reservation.getChildren());
            stmt.setInt(8, reservation.getNoofrooms());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get reservation by ID
    public RoomReservation getReservation(int id) {
        String query = "SELECT * FROM roomreservations WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                RoomReservation reservation = new RoomReservation();
                reservation.setId(rs.getInt("id"));
                reservation.setName(rs.getString("name"));
                reservation.setEmail(rs.getString("email"));
                reservation.setContactno(rs.getString("contactno"));
                reservation.setCheckin(rs.getDate("checkin"));
                reservation.setCheckout(rs.getDate("checkout"));
                reservation.setAdults(rs.getInt("adults"));
                reservation.setChildren(rs.getInt("children"));
                reservation.setNoofrooms(rs.getInt("noofrooms"));
                return reservation;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get all reservations
    public List<RoomReservation> getAllReservations() {
        List<RoomReservation> reservations = new ArrayList<>();
        String query = "SELECT * FROM roomreservations";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                RoomReservation reservation = new RoomReservation();
                reservation.setId(rs.getInt("id"));
                reservation.setName(rs.getString("name"));
                reservation.setEmail(rs.getString("email"));
                reservation.setContactno(rs.getString("contactno"));
                reservation.setCheckin(rs.getDate("checkin"));
                reservation.setCheckout(rs.getDate("checkout"));
                reservation.setAdults(rs.getInt("adults"));
                reservation.setChildren(rs.getInt("children"));
                reservation.setNoofrooms(rs.getInt("noofrooms"));
                reservations.add(reservation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservations;
    }

    // Update reservation
    public boolean updateReservation(RoomReservation reservation) {
        String query = "UPDATE roomreservations SET name = ?, email = ?, contactno = ?, checkin = ?, checkout = ?, adults = ?, children = ?, noofrooms = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, reservation.getName());
            stmt.setString(2, reservation.getEmail());
            stmt.setString(3, reservation.getContactno());
            stmt.setDate(4, reservation.getCheckin());
            stmt.setDate(5, reservation.getCheckout());
            stmt.setInt(6, reservation.getAdults());
            stmt.setInt(7, reservation.getChildren());
            stmt.setInt(8, reservation.getNoofrooms());
            stmt.setInt(9, reservation.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete reservation
    public boolean deleteReservation(int id) {
        String query = "DELETE FROM roomreservations WHERE id = ?";
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
