package com.crowncrest.servlet;
import com.crowncrest.model.UserLogin;
import com.crowncrest.service.UserLoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserLoginService userLoginService = new UserLoginService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullname"); // match JSP
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("cnfrmpassword"); // match JSP

        if (password == null || !password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }

        UserLogin newUser = new UserLogin();
        newUser.setFullname(fullName);
        newUser.setEmail(email);
        newUser.setPassword(password);

        userLoginService.registerUser(newUser);
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("signup.jsp");
    }
}
