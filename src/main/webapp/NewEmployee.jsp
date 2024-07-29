<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Management System - Employee Form</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: url('https://images.pexels.com/photos/3184298/pexels-photo-3184298.jpeg') no-repeat center center fixed;
            background-size: cover;
        }
        .header {
            background: rgba(0, 0, 0, 0.7);
        }
        .form-container {
            background: rgba(0, 0, 0, 0.7);
        }
        .form-header img {
            height: 80px;
            width: auto;
            margin-bottom: 1rem;
        }
        .heading {
            font-family: 'Arial', sans-serif;
            color: #e2e8f0;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }
        .heading-container {
            margin-bottom: 2rem;
        }
        .nav-icon {
            margin-right: 0.5rem;
        }
    </style>
</head>
<body class="text-white">

    <!-- Header -->
    <header class="header py-4">
        <div class="container mx-auto flex justify-between items-center px-6">
            <a href="index.jsp" class="text-2xl font-bold text-white">Employee Management System</a>
            <nav class="flex space-x-4">
                <a href="NewEmployee.jsp" class="bg-blue-600 hover:bg-blue-700 py-2 px-4 rounded-lg flex items-center">
                    <i class="fas fa-user-plus nav-icon"></i> Add New Employee
                </a>
                <a href="Register.jsp" class="bg-purple-600 hover:bg-purple-700 py-2 px-4 rounded-lg flex items-center">
                    <i class="fas fa-list nav-icon"></i> View Employee List
                </a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex items-center justify-center h-screen">
        <div class="form-container p-8 rounded-lg shadow-lg w-full max-w-md text-center">
            <div class="form-header heading-container">
                <img src="https://images.pexels.com/photos/3183187/pexels-photo-3183187.jpeg" alt="Employee Form">
                <h1 class="heading text-3xl font-semibold">
                    Employee Registration Form
                </h1>
            </div>
            <form method="post" action="save.jsp">
                <div class="mb-4">
                    <label for="eid" class="block mb-2 text-sm font-bold text-gray-300">Employee ID:</label>
                    <input type="text" id="eid" name="eid" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 bg-gray-800 text-white">
                </div>
                
                <div class="mb-4">
                    <label for="ename" class="block mb-2 text-sm font-bold text-gray-300">Employee Name:</label>
                    <input type="text" id="ename" name="ename" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 bg-gray-800 text-white">
                </div>
                
                <div class="mb-6">
                    <label for="salary" class="block mb-2 text-sm font-bold text-gray-300">Salary:</label>
                    <input type="number" id="salary" name="salary" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 bg-gray-800 text-white">
                </div>
                
                <input type="submit" value="Save" class="w-full py-3 text-white bg-blue-600 rounded-lg hover:bg-blue-700 cursor-pointer">
            </form>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 py-4 text-center">
        <div class="container mx-auto">
            <p class="text-sm text-gray-300">&copy; 2024 Employee Management System. All rights reserved.</p>
        </div>
    </footer>

    <script>
        // Example JavaScript to enhance functionality
        document.addEventListener('DOMContentLoaded', () => {
            console.log('Employee form page loaded.');
        });
    </script>

</body>
</html>
