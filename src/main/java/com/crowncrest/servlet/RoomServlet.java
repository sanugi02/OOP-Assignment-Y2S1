package com.crowncrest.servlet;

import com.crowncrest.model.Room;
import com.crowncrest.service.RoomService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@WebServlet("/roomvenue")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
        maxFileSize = 1024 * 1024 * 10,                // 10MB
        maxRequestSize = 1024 * 1024 * 50)             // 50MB
public class RoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RoomService roomService;

    @Override
    public void init() throws ServletException {
        roomService = new RoomService();
    }

    private String handleImageUpload(Part filePart, String uploadDirectory) throws IOException {
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadPath = getServletContext().getRealPath("") + File.separator + uploadDirectory;

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);
            return fileName;  // Return filename to store in the database
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if (action == null || action.equals("list")) {
                List<Room> rooms = roomService.getAllRooms(); // ✅ Fetch all rooms
                request.setAttribute("rooms", rooms);
                request.getRequestDispatcher("/roomvenue.jsp").forward(request, response); // ✅ Your JSP page

            } else if (action.equals("create")) {
                request.getRequestDispatcher("/createnewroom.jsp").forward(request, response);

            } else if (action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Room room = roomService.getRoom(id);
                request.setAttribute("room", room);
                request.getRequestDispatcher("/editroom.jsp").forward(request, response);

            } else if (action.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                roomService.deleteRoom(id);
                response.sendRedirect("roomvenue?action=list");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Something went wrong.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            String roomName = request.getParameter("roomName");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            String status = request.getParameter("status");
            Part imagePart = request.getPart("image");

            // If there's a new image uploaded, handle the image upload
            String image = handleImageUpload(imagePart, "images");

            Room room = new Room();
            room.setRoomName(roomName);
            room.setDescription(description);
            room.setPrice(price);
            room.setStatus(status);
            room.setImage(image);

            if (action.equals("create")) {
                if (roomService.createRoom(room)) {
                    response.sendRedirect("roomvenue?action=list");
                } else {
                    request.setAttribute("error", "Failed to create room.");
                    request.getRequestDispatcher("/createnewroom.jsp").forward(request, response);
                }
            } else if (action.equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                room.setId(id);

                if (roomService.updateRoom(room)) {
                    System.out.println("Update successful!");
                    response.sendRedirect("roomvenue?action=list");
                } else {
                    System.out.println("Update failed.");
                    request.setAttribute("error", "Failed to update room.");
                    request.setAttribute("room", room); // Ensure form repopulation
                    request.getRequestDispatcher("/editroom.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Something went wrong.");
            request.getRequestDispatcher("/roomvenue.jsp").forward(request, response);
        }
    }
}
