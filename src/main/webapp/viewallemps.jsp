<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Investor</title>
    <style>
           /* Styling for the table */
table {
    width: 100%;
    max-width: 1200px;
    margin: 40px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
}

/* Table borders */
table, th, td {
    border: 1px solid #ddd; /* Light gray borders for a clean look */
}

/* Table header */
th {
    padding: 15px;
    background-color: #3a7bd5; /* Blue header to match the theme */
    color: white;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
}

/* Table cells */
td {
    padding: 12px;
    text-align: center;
    word-wrap: break-word;
    font-size: 14px;
    color: #333;
}

/* Alternating row colors */
tr:nth-child(even) {
    background-color: #f9f9f9; /* Light gray for even rows */
}

tr:nth-child(odd) {
    background-color: #fff; /* White for odd rows */
}

/* Hover effect for table rows */
tr:hover {
    background-color: #f1f1f1; /* Light hover effect for better interactivity */
}

/* Responsive design */
@media (max-width: 768px) {
    table, th, td {
        font-size: 12px;
    }
    
    th, td {
        padding: 10px;
    }
}

    </style>
</head>
<body>
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Employees</u></h3>
    <br>
    Total Employees = <c:out value ="${empcount}"></c:out>
    <br>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
