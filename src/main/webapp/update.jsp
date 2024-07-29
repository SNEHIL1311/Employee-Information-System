<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ page import="hibernate.model.Employee" %>
    <%@ page import="hibernate.dao.EmployeeDao" %>
<%
    String errorMessage = null;
    try {
        int Eid = Integer.parseInt(request.getParameter("eid"));
        String Ename = request.getParameter("ename");

        double Basic = 0.0;
        String salaryParam = request.getParameter("salary");
        if (salaryParam != null && !salaryParam.isEmpty()) {
            Basic = Double.parseDouble(salaryParam);
        } else {
            throw new IllegalArgumentException("Salary parameter is missing or empty.");
        }

        Employee e1 = new Employee(Eid, Ename, Basic);
        EmployeeDao ob = new EmployeeDao();
        ob.updateRecord(e1);
        request.setAttribute("updateSuccess", true);
    } catch (NumberFormatException e) {
        errorMessage = "Error: Invalid number format for salary";
    } catch (IllegalArgumentException e) {
        errorMessage = "Error: " + e.getMessage();
    } catch (Exception e) {
        e.printStackTrace();
        errorMessage = "Error: " + e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Form</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex items-center justify-center h-screen bg-gradient-to-r from-gray-800 via-gray-900 to-black">
    <div class="bg-gray-700 p-8 rounded-lg shadow-lg w-full max-w-md text-center">
        <h1 class="mb-6 text-2xl font-bold text-white">Edit Employee Form</h1>
        <form method="post" action="updateData.jsp">
            <div class="mb-4">
                <label for="eid" class="block mb-2 text-sm font-bold text-gray-300">Employee Id:</label>
                <input type="text" id="eid" name="eid" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 bg-gray-700 text-white">
            </div>
            
            <div class="mb-4">
                <label for="ename" class="block mb-2 text-sm font-bold text-gray-300">Employee Name:</label>
                <input type="text" id="ename" name="ename" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 bg-gray-700 text-white">
            </div>
            
            <div class="mb-6">
                <label for="salary" class="block mb-2 text-sm font-bold text-gray-300">Salary:</label>
                <input type="number" id="salary" name="salary" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 bg-gray-700 text-white">
            </div>
            
            <input type="submit" value="Update" class="w-full py-3 text-white bg-indigo-600 rounded-lg hover:bg-indigo-700 cursor-pointer">
        </form>
    </div>
</body>
</html>
