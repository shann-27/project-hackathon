<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp == null) {
    response.sendRedirect("empsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Investor Home</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        /* Table Container */
        .profile-table-container {
            display: flex;
            justify-content: center;
            margin: 40px 20px;
        }
        /* Table Styling */
        table {
            width: 70%; /* Adjust width to maintain balance */
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        /* Header Row Styling */
        .table-header {
            background-color: #1db954;
            color: #ffffff;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }
        .table-header td {
            padding: 20px 0; /* Center-align text vertically */
            border-bottom: 2px solid #ffffff;
        }
        /* Field and Details Columns */
        th, td {
            padding: 15px 30px; /* Increased padding for spaciousness */
            text-align: left;
            border-bottom: 1px solid #dddddd;
            font-size: 16px;
        }
        th {
            background-color: #1db954;
            color: #ffffff;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        td {
            color: #333;
        }
        tr:last-child td {
            border-bottom: none;
        }
        /* Highlight for Fields */
        .highlight {
            font-weight: bold;
            color: #1db954;
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %> <!-- Including the navigation bar -->

    <!-- Profile Details in Table -->
    <div class="profile-table-container">
        <table>
            <!-- Table Header Row -->
            <tr class="table-header">
                <td colspan="2">My Profile</td>
            </tr>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
            <tr>
                <td class="highlight">ID</td>
                <td><%= emp.getId() %></td>
            </tr>
            <tr>
                <td class="highlight">Name</td>
                <td><%= emp.getName() %></td>
            </tr>
            <tr>
                <td class="highlight">Gender</td>
                <td><%= emp.getGender() %></td>
            </tr>
            <tr>
                <td class="highlight">Date of Birth</td>
                <td><%= emp.getDateofbirth() %></td>
            </tr>
            <tr>
                <td class="highlight">Department</td>
                <td><%= emp.getDepartment() %></td>
            </tr>
            <tr>
                <td class="highlight">Salary</td>
                <td>₹<%= emp.getSalary() %></td>
            </tr>
            <tr>
                <td class="highlight">Location</td>
                <td><%= emp.getLocation() %></td>
            </tr>
            <tr>
                <td class="highlight">Email</td>
                <td><%= emp.getEmail() %></td>
            </tr>
            <tr>
                <td class="highlight">Contact</td>
                <td><%= emp.getContact() %></td>
            </tr>
            <tr>
                <td class="highlight">Status</td>
                <td><%= emp.getStatus() %></td>
            </tr>
        </table>
    </div>
</body>
</html>
