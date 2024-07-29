<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="hibernate.model.Employee" %>
<%@ page import="hibernate.dao.EmployeeDao" %>

<%
    int eid = Integer.parseInt(request.getParameter("eid"));
    String name = request.getParameter("ename");
    double basic = Double.parseDouble(request.getParameter("salary"));

    Employee e = new Employee(eid, name, basic);
    EmployeeDao obj = new EmployeeDao();
    obj.updateRecord(e);
    response.sendRedirect("Register.jsp");
%>
