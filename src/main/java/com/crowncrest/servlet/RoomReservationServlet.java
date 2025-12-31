package com.crowncrest.servlet;

import com.crowncrest.model.RoomReservation;
import com.crowncrest.service.RoomReservationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet("/reservation")
public class RoomReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RoomReservationService reservationService;

    @Override
    public void init() throws ServletException {
        reservationService = new RoomReservationService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        
        if (action == null) {
            List<RoomReservation> reservations = reservationService.getAllReservations();
            request.setAttribute("reservations", reservations);
            request.getRequestDispatcher("account").forward(request, response);
        } else if (action.equals("create")) {
        	
            request.getRequestDispatcher("reservation.jsp").forward(request, response);
        } else if (action.equals("view")) {
            int id = Integer.parseInt(request.getParameter("id"));
            RoomReservation reservation = reservationService.getReservation(id);
            request.setAttribute("reservation", reservation);
            request.getRequestDispatcher("account").forward(request, response);
        } else if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            RoomReservation reservation = reservationService.getReservation(id);
            request.setAttribute("reservation", reservation);
            request.getRequestDispatcher("updateroom.jsp").forward(request, response);
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            reservationService.deleteReservation(id);
            response.sendRedirect("reservation");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contactno = request.getParameter("contactno");
        Date checkin = Date.valueOf(request.getParameter("checkin"));
        Date checkout = Date.valueOf(request.getParameter("checkout"));
        int adults = Integer.parseInt(request.getParameter("adults"));
        int children = Integer.parseInt(request.getParameter("children"));
        int noofrooms = Integer.parseInt(request.getParameter("rooms"));


        RoomReservation reservation = new RoomReservation();
        reservation.setName(name);
        reservation.setEmail(email);
        reservation.setContactno(contactno);
        reservation.setCheckin(checkin);
        reservation.setCheckout(checkout);
        reservation.setAdults(adults);
        reservation.setChildren(children);
        reservation.setNoofrooms(noofrooms);


        if (action.equals("create")) {
            if (reservationService.createReservation(reservation)) {
            	request.setAttribute("reservation", reservation);
                request.getRequestDispatcher("paymentDetails.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            reservation.setId(id);

            if (reservationService.updateReservation(reservation)) {
                response.sendRedirect("account");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            if (reservationService.deleteReservation(id)) {
                response.sendRedirect("account");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        }
    }
}
