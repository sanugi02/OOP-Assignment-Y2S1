package com.crowncrest.service;

import com.crowncrest.model.Venue;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VenueService {

    // Create Venue
    public boolean createVenue(Venue venue) {
        String query = "INSERT INTO venuemanage (venueName, image, description, details, status) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, venue.getVenueName());
            stmt.setString(2, venue.getImage());
            stmt.setString(3, venue.getDescription());
            stmt.setString(4, venue.getDetails());
            stmt.setString(5, venue.getStatus());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get Venue by ID
    public Venue getVenue(int id) {
        String query = "SELECT * FROM venuemanage WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Venue venue = new Venue();
                venue.setId(rs.getInt("id"));
                venue.setVenueName(rs.getString("venueName"));
                venue.setImage(rs.getString("image") != null ? rs.getString("image") : "default.jpg");
                venue.setDescription(rs.getString("description"));
                venue.setDetails(rs.getString("details"));
                venue.setStatus(rs.getString("status"));
                return venue;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get All Venues
    public List<Venue> getAllVenues() {
        List<Venue> venues = new ArrayList<>();
        String query = "SELECT * FROM venuemanage";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Venue venue = new Venue();
                venue.setId(rs.getInt("id"));
                venue.setVenueName(rs.getString("venueName"));
                venue.setImage(rs.getString("image") != null ? rs.getString("image") : "default.jpg");
                venue.setDescription(rs.getString("description"));
                venue.setDetails(rs.getString("details"));
                venue.setStatus(rs.getString("status"));
                venues.add(venue);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return venues;
    }

    // Update Venue
    public boolean updateVenue(Venue venue) {
        String query = "UPDATE venuemanage SET venueName = ?, image = ?, description = ?, details = ?, status = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, venue.getVenueName());
            stmt.setString(2, venue.getImage());
            stmt.setString(3, venue.getDescription());
            stmt.setString(4, venue.getDetails());
            stmt.setString(5, venue.getStatus());
            stmt.setInt(6, venue.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete Venue
    public boolean deleteVenue(int id) {
        String query = "DELETE FROM venuemanage WHERE id = ?";
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
