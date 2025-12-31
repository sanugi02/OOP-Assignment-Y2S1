package com.crowncrest.servlet;

import com.crowncrest.model.UserLogin;
import com.crowncrest.service.UserLoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/userlogin")
public class UserLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final UserLoginService userLoginService = new UserLoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            response.sendRedirect(request.getContextPath() + "/home.jsp");
            return;
        }

        UserLogin user = authenticateUser(email, password);

        if (user != null) {
            session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("email", user.getEmail());
            session.setMaxInactiveInterval(30 * 60); // 30 minutes

            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    private UserLogin authenticateUser(String email, String password) {
        for (UserLogin user : userLoginService.getAllUsers()) {
            if (user.getEmail().equalsIgnoreCase(email) && user.getPassword().equals(password)) {
                return user;
            }
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
