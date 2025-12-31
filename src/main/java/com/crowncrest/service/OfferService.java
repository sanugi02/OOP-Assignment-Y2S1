package com.crowncrest.service;

import com.crowncrest.model.Offer;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OfferService {

    public boolean createOffer(Offer offer) {
        String query = "INSERT INTO offers (OfferName, OfferTablesType, StartDate, EndDate, DiscountPercentage) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, offer.getOfferName());
            stmt.setString(2, offer.getOfferTablesType());
            stmt.setString(3, offer.getStartDate());
            stmt.setString(4, offer.getEndDate());
            stmt.setInt(5, offer.getDiscountPercentage());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Offer getOffer(int id) {
        String query = "SELECT * FROM offers WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Offer offer = new Offer();
                offer.setId(rs.getInt("id"));
                offer.setOfferName(rs.getString("OfferName"));
                offer.setOfferTablesType(rs.getString("OfferTablesType"));
                offer.setStartDate(rs.getString("StartDate"));
                offer.setEndDate(rs.getString("EndDate"));
                offer.setDiscountPercentage(rs.getInt("DiscountPercentage"));
                return offer;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Offer> getAllOffers() {
        List<Offer> offers = new ArrayList<>();
        String query = "SELECT * FROM offers";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Offer offer = new Offer();
                offer.setId(rs.getInt("id"));
                offer.setOfferName(rs.getString("OfferName"));
                offer.setOfferTablesType(rs.getString("OfferTablesType"));
                offer.setStartDate(rs.getString("StartDate"));
                offer.setEndDate(rs.getString("EndDate"));
                offer.setDiscountPercentage(rs.getInt("DiscountPercentage"));
                offers.add(offer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return offers;
    }

    public boolean updateOffer(Offer offer) {
        String query = "UPDATE offers SET OfferName = ?, OfferTablesType = ?, StartDate = ?, EndDate = ?, DiscountPercentage = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, offer.getOfferName());
            stmt.setString(2, offer.getOfferTablesType());
            stmt.setString(3, offer.getStartDate());
            stmt.setString(4, offer.getEndDate());
            stmt.setInt(5, offer.getDiscountPercentage());
            stmt.setInt(6, offer.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteOffer(int id) {
        String query = "DELETE FROM offers WHERE id = ?";
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
