package com.crowncrest.servlet;

import com.crowncrest.model.VenueReservation;
import com.crowncrest.service.VenueReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/venueReservation")
public class VenueReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VenueReservationService VreservationService;

    @Override
    public void init() throws ServletException {
        VreservationService = new VenueReservationService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            List<VenueReservation> vreservations = VreservationService.getAllReservations();
            request.setAttribute("venueReservations", vreservations);
            request.getRequestDispatcher("account").forward(request, response);
        } else if (action.equals("create")) {
            request.getRequestDispatcher("reservation.jsp").forward(request, response);
        } else if (action.equals("view")) {
            int id = Integer.parseInt(request.getParameter("id"));
            VenueReservation vreservation = VreservationService.getReservation(id);
            request.setAttribute("venueReservation", vreservation);
            request.getRequestDispatcher("account").forward(request, response);
        } else if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            VenueReservation vreservation = VreservationService.getReservation(id);
            request.setAttribute("venueReservation", vreservation);
            request.getRequestDispatcher("updatevenue.jsp").forward(request, response);
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            VreservationService.deleteReservation(id);
            response.sendRedirect("account");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("create".equals(action)) {
            // Handle the creation of a new reservation
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contactno = request.getParameter("contactno");
            String eventtype = request.getParameter("eventType");
            String guestcount = request.getParameter("guestCount");

            VenueReservation vreservation = new VenueReservation();
            vreservation.setName(name);
            vreservation.setEmail(email);
            vreservation.setContactno(contactno);
            vreservation.setEventType(eventtype);
            vreservation.setGuestCount(guestcount);

            boolean success = VreservationService.createReservation(vreservation);

            if (success) {
                response.sendRedirect("account"); // Redirect to account after success
            } else {
                request.setAttribute("errorMessage", "Unable to create reservation.");
                request.getRequestDispatcher("reservation.jsp").forward(request, response); // Forward to reservation page on failure
            }
        } else if ("update".equals(action)) {
            // Handle updating an existing reservation
            int id = Integer.parseInt(request.getParameter("id"));
            VenueReservation vreservation = VreservationService.getReservation(id);

            if (vreservation != null) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String contactno = request.getParameter("contactno");
                String eventtype = request.getParameter("eventType");
                String guestcount = request.getParameter("guestCount");

                vreservation.setName(name);
                vreservation.setEmail(email);
                vreservation.setContactno(contactno);
                vreservation.setEventType(eventtype);
                vreservation.setGuestCount(guestcount);

                boolean success = VreservationService.updateReservation(vreservation);

                if (success) {
                    response.sendRedirect("account");
                } else {
                    request.setAttribute("errorMessage", "Unable to update reservation.");
                    request.getRequestDispatcher("updatevenue.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("errorMessage", "Reservation not found.");
                request.getRequestDispatcher("account").forward(request, response);
            }
        } else if ("delete".equals(action)) {
            // Handle deleting a reservation
            int id = Integer.parseInt(request.getParameter("id"));
            boolean success = VreservationService.deleteReservation(id);

            if (success) {
                response.sendRedirect("account");
            } else {
                request.setAttribute("errorMessage", "Unable to delete reservation.");
                request.getRequestDispatcher("account").forward(request, response);
            }
        }
    }
}
