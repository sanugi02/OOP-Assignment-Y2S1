package com.crowncrest.service;

import com.crowncrest.model.VenueReservation;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VenueReservationService {

    // Create a new reservation
    public boolean createReservation(VenueReservation vreservation) {
        String query = "INSERT INTO venuereservation (name, email, contactno, eventtype, guestcount) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, vreservation.getName());
            stmt.setString(2, vreservation.getEmail());
            stmt.setString(3, vreservation.getContactno());
            stmt.setString(4, vreservation.getEventType());
            stmt.setString(5, vreservation.getGuestCount());
            
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get a reservation by ID
    public VenueReservation getReservation(int id) {
        String query = "SELECT * FROM venuereservation WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                VenueReservation vreservation = new VenueReservation();
                vreservation.setId(rs.getInt("id"));
                vreservation.setName(rs.getString("name"));
                vreservation.setEmail(rs.getString("email"));
                vreservation.setContactno(rs.getString("contactno"));
                vreservation.setEventType(rs.getString("eventtype"));
                vreservation.setGuestCount(rs.getString("guestcount"));

                return vreservation;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get all reservations
    public List<VenueReservation> getAllReservations() {
        List<VenueReservation> vreservations = new ArrayList<>();
        String query = "SELECT * FROM venuereservation";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                VenueReservation vreservation = new VenueReservation();
                vreservation.setId(rs.getInt("id"));
                vreservation.setName(rs.getString("name"));
                vreservation.setEmail(rs.getString("email"));
                vreservation.setContactno(rs.getString("contactno"));
                vreservation.setEventType(rs.getString("eventtype"));
                vreservation.setGuestCount(rs.getString("guestcount"));
   
                vreservations.add(vreservation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vreservations;
    }

    // Update reservation
    public boolean updateReservation(VenueReservation vreservation) {
        String query = "UPDATE venuereservation SET name = ?, email = ?, contactno = ?, eventtype = ?, guestcount = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, vreservation.getName());
            stmt.setString(2, vreservation.getEmail());
            stmt.setString(3, vreservation.getContactno());
            stmt.setString(4, vreservation.getEventType());
            stmt.setString(5, vreservation.getGuestCount());
            stmt.setInt(6, vreservation.getId());
 
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete reservation
    public boolean deleteReservation(int id) {
        String query = "DELETE FROM venuereservation WHERE id = ?";
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
