package com.crowncrest.servlet;

import com.crowncrest.model.Employee;
import com.crowncrest.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewStaff")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeService employeeService;

    @Override
    public void init() throws ServletException {
    	employeeService = new EmployeeService(); // ✅ Corrected variable name
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if (action == null || action.equals("list")) {
                List<Employee> employees = employeeService.getAllEmployees(); // ✅ Fetch all employee
                request.setAttribute("employees", employees);
                request.getRequestDispatcher("/viewStaff.jsp").forward(request, response); // ✅ Your JSP page

            } else if (action.equals("create")) {
                request.getRequestDispatcher("/createStaff.jsp").forward(request, response);

            } else if (action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Employee employee = employeeService.getEmployee(id);
                request.setAttribute("employee", employee);
                request.getRequestDispatcher("/updateEmpDetails.jsp").forward(request, response);

            } else if (action.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                employeeService.deleteEmployee(id);
                response.sendRedirect("viewStaff?action=list");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Something went wrong.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        try {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String occupation = request.getParameter("occupation");

            Employee employee = new Employee();
            employee.setName(name);
            employee.setPassword(password);
            employee.setEmail(email);
            employee.setOccupation(occupation);

            if (action.equals("create")) {
                if (employeeService.creatEmployee(employee)) {
                    response.sendRedirect("viewStaff?action=list");
                } else {
                    request.setAttribute("error", "Failed to create employee.");
                    request.getRequestDispatcher("/createStaff.jsp").forward(request, response);
                }

            } else if (action.equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                employee.setId(id);

                if (employeeService.updateEmployee(employee)) {
                    response.sendRedirect("viewStaff?action=list");
                } else {
                    request.setAttribute("error", "Failed to update employee.");
                    request.getRequestDispatcher("/updateEmpDetails.jsp").forward(request, response);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Something went wrong.");
            request.getRequestDispatcher("/viewStaff.jsp").forward(request, response);
        }
    }
}
