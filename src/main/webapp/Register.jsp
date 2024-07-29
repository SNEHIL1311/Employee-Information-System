<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="hibernate.dao.EmployeeDao" %>
<%@ page import="hibernate.model.Employee" %>
<%@ page import="java.util.List" %>

<%
    EmployeeDao obj = new EmployeeDao();
    List<Employee> arr = obj.getAllRecords();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Data</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to bottom right, #2d3748, #1a202c);
        }
        .header {
            background: rgba(0, 0, 0, 0.8);
        }
        .table-container {
            background: rgba(0, 0, 0, 0.9);
            border-radius: 0.5rem;
        }
        .table-header {
            background: #4a5568; /* Darker shade for header */
        }
        .table-footer {
            background: #4a5568;
            color: #e2e8f0;
        }
        .table-footer p {
            margin: 0;
        }
        .update-icon {
            color: #f6e05e; /* Light yellow color */
        }
        .delete-icon {
            color: #fc8181; /* Light red color */
        }
    </style>
</head>
<body class="text-white">

    <!-- Header -->
    <header class="header py-4">
        <div class="container mx-auto flex justify-between items-center px-6">
            <a href="index.jsp" class="text-2xl font-bold text-white">Employee Management System</a>
            <nav class="flex space-x-4">
                <a href="NewEmployee.jsp" class="bg-blue-600 hover:bg-blue-700 py-2 px-4 rounded-lg">Add New Employee</a>
                <a href="Register.jsp" class="bg-green-600 hover:bg-green-700 py-2 px-4 rounded-lg">View Employee List</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex items-center justify-center h-screen p-4">
        <div class="table-container p-6 shadow-lg w-full max-w-4xl">
            <h1 class="text-3xl font-bold mb-4 text-center">Employee List</h1>
            <table class="w-full bg-gray-800 rounded-lg overflow-hidden">
                <thead>
                    <tr class="table-header text-white">
                        <th class="py-4 px-6 text-left">EmpId</th>
                        <th class="py-4 px-6 text-left">Name</th>
                        <th class="py-4 px-6 text-left">Salary</th>
                        <th class="py-4 px-6 text-left">Update</th>
                        <th class="py-4 px-6 text-left">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Employee e : arr) {
                    %>
                    <tr class="hover:bg-gray-700">
                        <td class="py-4 px-6"><%= e.getEid() %></td>
                        <td class="py-4 px-6"><%= e.getEname() %></td>
                        <td class="py-4 px-6"><%= e.getBasic() %></td>
                        <td class="py-4 px-6 text-center">
                            <a href="update.jsp?id=<%= e.getEid() %>" class="update-icon" onclick="return confirm('Are you sure you want to update this record?');">
                                <i class="fas fa-pencil-alt" style="font-size:20px;"></i>
                            </a>
                        </td>
                        <td class="py-4 px-6 text-center">
                            <a href="delete.jsp?id=<%= e.getEid() %>" class="delete-icon" onclick="return confirm('Are you sure you want to delete this record?');">
                                <i class="fas fa-trash" style="font-size:20px;"></i>
                            </a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
                <tfoot>
                    <tr class="table-footer">
                        <td colspan="5" class="py-4 px-6 text-center">
                            <p>&copy; 2024 Employee Management System. All rights reserved.</p>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </main>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            console.log('Employee list page loaded.');
        });
    </script>

</body>
</html>
