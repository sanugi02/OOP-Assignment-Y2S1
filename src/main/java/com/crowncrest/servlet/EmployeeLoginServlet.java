package com.crowncrest.servlet;

import com.crowncrest.model.EmployeeLogin;
import com.crowncrest.service.EmployeeLoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/employeelogin")
public class EmployeeLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final EmployeeLoginService employeeLoginService = new EmployeeLoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("employee") != null) {
            response.sendRedirect(request.getContextPath() + "/home.jsp");
            return;
        }

        EmployeeLogin employee = authenticateEmployee(email, password);

        if (employee != null) {
            session = request.getSession(true);
            session.setAttribute("employee", employee);
            session.setAttribute("email", employee.getEmail());
            session.setMaxInactiveInterval(30 * 60); // 30 minutes

            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("/employeeLogin.jsp").forward(request, response);
        }
    }

    private EmployeeLogin authenticateEmployee(String email, String password) {
        for (EmployeeLogin emp : employeeLoginService.getAllEmployees()) {
            if (emp.getEmail().equalsIgnoreCase(email) && emp.getPassword().equals(password)) {
                return emp;
            }
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("employee") != null) {
            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            request.getRequestDispatcher("/employeeLogin.jsp").forward(request, response);
        }
    }
}
