package com.crowncrest.servlet;

import com.crowncrest.model.EmployeeLogin;
import com.crowncrest.service.EmployeeLoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/employeesignup")
public class EmployeeSignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EmployeeLoginService employeeLoginService = new EmployeeLoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullname");       // from JSP
        String email = request.getParameter("email");             // from JSP
        String occupation = request.getParameter("occupation");   // make sure this exists in JSP
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("cnfrmpassword");

        if (password == null || !password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match");
            request.getRequestDispatcher("/employeeSignup.jsp").forward(request, response);
            return;
        }

        EmployeeLogin newEmployee = new EmployeeLogin();
        newEmployee.setFullName(fullName);
        newEmployee.setEmail(email);
        newEmployee.setOccupation(occupation);
        newEmployee.setPassword(password);

        boolean success = employeeLoginService.createEmployee(newEmployee);

        if (success) {
            response.sendRedirect("employeeLogin.jsp"); // or a success page
        } else {
            request.setAttribute("error", "Signup failed. Try again.");
            request.getRequestDispatcher("/employeeSignup.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("employeeSignup.jsp");
    }
}

