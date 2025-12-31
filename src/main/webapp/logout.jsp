<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Invalidate the current session
    session.invalidate();

    // Redirect to login page (you can change this to HomePage.jsp if needed)
    response.sendRedirect("home.jsp");
%>
    