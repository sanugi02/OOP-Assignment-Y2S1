package com.crowncrest.service;

import com.crowncrest.model.Room;
import com.crowncrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomService {

    // Create Room
    public boolean createRoom(Room room) {
        String query = "INSERT INTO roommanage (roomName, image, description, price, status) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, room.getRoomName());
            stmt.setString(2, room.getImage());
            stmt.setString(3, room.getDescription());
            stmt.setDouble(4, room.getPrice());
            stmt.setString(5, room.getStatus());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get Room by ID
    public Room getRoom(int id) {
        String query = "SELECT * FROM roommanage WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Room room = new Room();
                room.setId(rs.getInt("id"));
                room.setRoomName(rs.getString("roomName"));
                room.setImage(rs.getString("image") != null ? rs.getString("image") : "default.jpg");
                room.setDescription(rs.getString("description"));
                room.setPrice(rs.getDouble("price"));
                room.setStatus(rs.getString("status"));
                return room;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get All Rooms
    public List<Room> getAllRooms() {
        List<Room> rooms = new ArrayList<>();
        String query = "SELECT * FROM roommanage";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Room room = new Room();
                room.setId(rs.getInt("id"));
                room.setRoomName(rs.getString("roomName"));
                room.setImage(rs.getString("image") != null ? rs.getString("image") : "default.jpg");
                room.setDescription(rs.getString("description"));
                room.setPrice(rs.getDouble("price"));
                room.setStatus(rs.getString("status"));
                rooms.add(room);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rooms;
    }

    // Update Room
    public boolean updateRoom(Room room) {
        String query = "UPDATE roommanage SET roomName = ?, image = ?, description = ?, price = ?, status = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, room.getRoomName());
            stmt.setString(2, room.getImage());
            stmt.setString(3, room.getDescription());
            stmt.setDouble(4, room.getPrice());
            stmt.setString(5, room.getStatus());
            stmt.setInt(6, room.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete Room
    public boolean deleteRoom(int id) {
        String query = "DELETE FROM roommanage WHERE id = ?";
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
