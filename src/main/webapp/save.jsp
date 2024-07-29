<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="hibernate.model.Employee" %>
<%@ page import="hibernate.dao.EmployeeDao" %>

<%
    int Eid = Integer.parseInt(request.getParameter("eid"));
    String Ename = request.getParameter("ename");
    double Basic = Double.parseDouble(request.getParameter("salary"));

    Employee employee = new Employee(Eid, Ename, Basic);
    EmployeeDao ob = new EmployeeDao();
    ob.saveRecord(employee);

    // Set the success message to be displayed
    String successMessage = "Data saved successfully!";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Save Success</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        /* Custom styles for modal */
        .modal {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background: #fff;
            padding: 2rem;
            border-radius: 0.5rem;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .modal-header {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>

<!-- Modal -->
<div id="successModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">Success</div>
        <p><%= successMessage %></p>
        <button id="closeModal" class="mt-4 px-4 py-2 bg-blue-600 text-white rounded-lg">OK</button>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const modal = document.getElementById('successModal');
        const closeModalButton = document.getElementById('closeModal');
        
        // Show the modal
        modal.style.display = 'flex';
        
        // Close the modal and redirect
        closeModalButton.addEventListener('click', () => {
            modal.style.display = 'none';
            window.location.href = 'NewEmployee.jsp'; // Redirect to the desired page after closing the modal
        });
    });
</script>

</body>
</html>
