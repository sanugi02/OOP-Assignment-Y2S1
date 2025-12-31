package com.crowncrest.servlet;

import com.crowncrest.model.Venue;
import com.crowncrest.service.VenueService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@WebServlet("/venue")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
        maxFileSize = 1024 * 1024 * 10,                // 10MB
        maxRequestSize = 1024 * 1024 * 50)             // 50MB
public class VenueServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VenueService venueService;

    @Override
    public void init() throws ServletException {
        venueService = new VenueService();
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
            return fileName;
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if (action == null || action.equals("list")) {
                List<Venue> venues = venueService.getAllVenues();
                request.setAttribute("venues", venues);
                request.getRequestDispatcher("/venue1.jsp").forward(request, response);

            } else if (action.equals("create")) {
                request.getRequestDispatcher("/createvenue.jsp").forward(request, response);

            } else if (action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Venue venue = venueService.getVenue(id);
                request.setAttribute("venue", venue);
                request.getRequestDispatcher("/editvenue.jsp").forward(request, response);
                response.sendRedirect("venue?action=list");

            } else if (action.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                venueService.deleteVenue(id);
                response.sendRedirect("venue?action=list");
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
            String venueName = request.getParameter("venueName");
            String description = request.getParameter("description");
            String details = request.getParameter("details");
            String status = request.getParameter("status");
            Part imagePart = request.getPart("image");

            String image = handleImageUpload(imagePart, "images");

            Venue venue = new Venue();
            venue.setVenueName(venueName);
            venue.setDescription(description);
            venue.setDetails(details);
            venue.setStatus(status);
            venue.setImage(image);

            if (action.equals("create")) {
                if (venueService.createVenue(venue)) {
                    response.sendRedirect("venue?action=list");
                } else {
                    request.setAttribute("error", "Failed to create venue.");
                    request.getRequestDispatcher("/createvenue.jsp").forward(request, response);
                }
            } else if (action.equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                venue.setId(id);

                if (venueService.updateVenue(venue)) {
                	System.out.println("Update successful!");
                	response.sendRedirect("venue?action=list");
                } else {
                	System.out.println("Update failed.");
                    request.setAttribute("error", "Failed to update venue.");
                    request.setAttribute("venue", venue);
                    request.getRequestDispatcher("/editvenue.jsp").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Something went wrong.");
            request.getRequestDispatcher("/venue1.jsp").forward(request, response);
        }
    }
}
