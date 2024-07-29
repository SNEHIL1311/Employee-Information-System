<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="hibernate.model.Employee" %>
<%@ page import="hibernate.dao.EmployeeDao" %>
<%
    int eid = Integer.parseInt(request.getParameter("id"));
    EmployeeDao ob = new EmployeeDao();
    ob.deleteRecord(eid);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Deleting Record</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
</head>
<body>
    <script>
        // Function to show a confirmation message
        function showSuccessMessage() {
            alert("Record deleted successfully.");
            // Redirect to the employee list page after the alert
            window.location.href = "Register.jsp";
        }

        // Call the function to show the message
        window.onload = showSuccessMessage;
    </script>
</body>
</html>
