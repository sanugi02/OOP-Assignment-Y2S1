package com.crowncrest.servlet; // <-- Change this to match your servlet package

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crowncrest.model.RoomReservation; // <-- Change to actual model package
import com.crowncrest.model.VenueReservation;


import com.crowncrest.service.RoomReservationService; // <-- Change to actual service package
import com.crowncrest.service.VenueReservationService;


@WebServlet("/account")
public class AccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Use instance of RoomReservationService instead of static call
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Create service instances (non-static)
        RoomReservationService roomService = new RoomReservationService();
        List<RoomReservation> roomList = roomService.getAllReservations();   
        
        VenueReservationService venueService = new VenueReservationService();
        List<VenueReservation> venueList = venueService.getAllReservations();
        // Fetch all room reservations (using the instance method)
        // Call on instance

        // Fetch all venue reservations
         // Assuming similar method in VenueReservationService

        // Set data into request
        request.setAttribute("reservations", roomList);
        request.setAttribute("venueReservations", venueList);

        // Forward to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("myAcc.jsp");
        dispatcher.forward(request, response);
    }
   
        
    }


