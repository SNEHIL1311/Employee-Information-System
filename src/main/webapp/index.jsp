<!DOCTYPE html>
<html lang="en">
<head>
  <title>Employee Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #1a202c;
    }
    .overlay {
      background: rgba(0, 0, 0, 0.7);
      min-height: 100vh;
    }
    .main-content {
      min-height: calc(100vh - 128px); /* Adjust based on header and footer height */
    }
    .card img {
      height: 150px;
      width: 100%;
    }
  </style>
</head>
<body class="text-white">

<div class="overlay">

  <!-- Header -->
  <header class="bg-gray-900">
    <div class="container mx-auto flex justify-between items-center py-4 px-6">
      <!-- Logo -->
      <div class="text-xl font-bold">
        <a href="index.jsp">Employee Management System</a>
      </div>
      <!-- Navigation Links -->
      <div class="flex space-x-4">
        <a href="NewEmployee.jsp" class="flex items-center bg-blue-600 hover:bg-blue-700 py-2 px-4 rounded-lg">
          <img src="https://img.icons8.com/ios-filled/50/ffffff/add-user-male.png" alt="New Employee" class="mr-2" width="20" height="20"> New Employee
        </a>
        <a href="Register.jsp" class="flex items-center bg-purple-600 hover:bg-purple-700 py-2 px-4 rounded-lg">
          <img src="https://img.icons8.com/ios-filled/50/ffffff/list.png" alt="View Employee List" class="mr-2" width="20" height="20"> View Employee List
        </a>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <main class="main-content container mx-auto py-16 px-6">
    <div class="text-center mb-12">
      <h1 class="text-4xl font-bold mb-6">Welcome to the Employee Management System</h1>
      <p class="text-lg mb-6">Efficiently manage your employee records with our comprehensive system.</p>
      <div class="flex justify-center space-x-4">
        <button id="addEmployeeBtn" class="flex items-center bg-blue-600 hover:bg-blue-700 py-2 px-4 rounded-lg">
          <img src="https://img.icons8.com/ios-filled/50/ffffff/add-user-male.png" alt="Add Employee" class="mr-2" width="20" height="20"> Add New Employee
        </button>
        <a href="Register.jsp" class="flex items-center bg-purple-600 hover:bg-purple-700 py-2 px-4 rounded-lg">
          <img src="https://img.icons8.com/ios-filled/50/ffffff/list.png" alt="View Employee List" class="mr-2" width="20" height="20"> View Employee List
        </a>
      </div>
    </div>

    <!-- Additional Content -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
        <img src="https://images.pexels.com/photos/3184298/pexels-photo-3184298.jpeg" alt="Employee Profiles" class="w-full object-cover mb-4 rounded">
        <h2 class="text-2xl font-bold mb-2">Employee Profiles</h2>
        <p class="text-gray-300">Maintain detailed profiles of each employee, including contact information, job title, and department.</p>
      </div>
      <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
        <img src="https://images.pexels.com/photos/3184405/pexels-photo-3184405.jpeg" alt="Performance Tracking" class="w-full object-cover mb-4 rounded">
        <h2 class="text-2xl font-bold mb-2">Performance Tracking</h2>
        <p class="text-gray-300">Track employee performance over time to help with appraisals and identify areas for improvement.</p>
      </div>
      <div class="bg-gray-800 p-6 rounded-lg shadow-lg card">
        <img src="https://images.pexels.com/photos/3184636/pexels-photo-3184636.jpeg" alt="Payroll Management" class="w-full object-cover mb-4 rounded">
        <h2 class="text-2xl font-bold mb-2">Payroll Management</h2>
        <p class="text-gray-300">Handle payroll efficiently with our integrated payroll management system, ensuring accurate and timely payments.</p>
      </div>
    </div>
  </main>

  <!-- Footer -->
  <footer class="bg-gray-900 py-4">
    <div class="container mx-auto text-center">
      <p class="text-sm">&copy; 2024 Employee Management System. All rights reserved.</p>
    </div>
  </footer>

</div>

<!-- Add Employee Modal -->
<div id="addEmployeeModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center hidden">
  <div class="bg-white text-gray-900 p-8 rounded-lg w-full max-w-md">
    <h2 class="text-xl font-bold mb-4"><a href="NewEmployee.jsp">Add New Employee</a></h2>
    <form action="NewEmployee.jsp" method="get">
      
      <div class="flex justify-end space-x-4">
        <button type="button" id="cancelBtn" class="bg-gray-600 hover:bg-gray-700 py-2 px-4 rounded-lg text-white">Cancel</button>
        <button type="submit" class="bg-blue-600 hover:bg-blue-700 py-2 px-4 rounded-lg text-white">Add Employee</button>
      </div>
    </form>
  </div>
</div>

<script>
  document.getElementById('addEmployeeBtn').addEventListener('click', function() {
    document.getElementById('addEmployeeModal').classList.remove('hidden');
  });

  document.getElementById('cancelBtn').addEventListener('click', function() {
    document.getElementById('addEmployeeModal').classList.add('hidden');
  });
</script>

</body>
</html>
