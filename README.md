Employee Information System
Project Overview
The Employee Information System (EIS) is a full-stack Java application designed to efficiently track and manage employee data. This system allows administrators to perform CRUD (Create, Read, Update, Delete) operations on employee records, ensuring easy access and management of employee information.

Features
Add New Employees: Easily add new employee records.
View Employees: Display a list of all employees with detailed information.
Update Employee Information: Edit existing employee records.
Delete Employees: Remove employee records from the system.
Search Functionality: Quickly find employees by name or ID.
Responsive Design: User-friendly interface with responsive design for various devices.
Technologies Used
Frontend:

HTML
CSS (using Tailwind CSS)
JavaScript
Backend:

Java
JSP (JavaServer Pages)
Servlets
Database:

MySQL
ORM Framework:

Hibernate

Copy code
git clone https://github.com/SNEHIL1311/Employee-Information-System
cd employee-information-system
Configure the Database:

Create a MySQL database named employee_db.
Import the provided SQL script to create the necessary tables.
Update Database Configurations:

Update the database configurations in hibernate.cfg.xml with your MySQL credentials.
Build the Project:

bash
Copy code
mvn clean install
Deploy the Application:

Deploy the WAR file to your preferred servlet container (e.g., Apache Tomcat).
Run the Application:

Access the application at http://localhost:8080/employee-information-system.
Screenshots
Home Page
![Screenshot (229)](https://github.com/user-attachments/assets/97e5755c-0aa6-41a9-9031-ed8c51d95ed1)


Employee Registration Form
![Screenshot (229)](https://github.com/user-attachments/assets/771ba7cb-cc1b-4bb9-9717-c4d7e2412ba5)


Usage
Add Employee:

Navigate to the "Add Employee" page.
Fill out the employee form and submit.
View Employees:

Navigate to the "List Employees" page to view all employees.
Click on an employee name to view detailed information.
Edit Employee:

On the "List Employees" page, click the edit button next to an employee to update their information.
Delete Employee:

On the "List Employees" page, click the delete button next to an employee to remove their record.
Contribution
Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.
