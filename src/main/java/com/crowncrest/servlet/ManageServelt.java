package com.crowncrest.servlet;

import com.crowncrest.model.Offer;
import com.crowncrest.service.OfferService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/offer")
public class ManageServelt extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OfferService offerService;

    @Override
    public void init() throws ServletException {
        offerService = new OfferService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if (action == null) {
                List<Offer> offers = offerService.getAllOffers();
                request.setAttribute("offers", offers);
                request.getRequestDispatcher("table.jsp").forward(request, response);
            } else if (action.equals("create")) {
                request.getRequestDispatcher("createForm.jsp").forward(request, response);
            } else if (action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Offer offer = offerService.getOffer(id);
                request.setAttribute("offer", offer);
                request.getRequestDispatcher("editForm.jsp").forward(request, response);
            } else if (action.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                offerService.deleteOffer(id);
                response.sendRedirect("offer");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            Offer offers = new Offer();
            offers.setOfferName(request.getParameter("offerName"));
            offers.setOfferTablesType(request.getParameter("offerTablesType"));
            offers.setStartDate(request.getParameter("startDate"));
            offers.setEndDate(request.getParameter("endDate"));
            offers.setDiscountPercentage(Integer.parseInt(request.getParameter("discountPercentage")));

            if (action.equals("create")) {
                offerService.createOffer(offers);
            } else if (action.equals("update")) {
                offers.setId(Integer.parseInt(request.getParameter("id")));
                offerService.updateOffer(offers);
            }
            response.sendRedirect("offer");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
