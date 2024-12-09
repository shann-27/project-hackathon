<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Investor</title>
    <style>
  body {
    font-family: sans-serif;
    margin: 0;
    background-color: #f4f4f4; /* Light background color */
  }

  /* Navbar styles (If you have a navbar) */
  .navbar {
    background-color: #333;
    overflow: hidden;
  }
  .navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  .navbar a:hover {
    background-color: #ddd;
    color: #333;
  }

  h3 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
  }

  .form-container {
    max-width: 400px;
    margin: 20px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
  }

 table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}
  /* Style table cells and inputs */
  td {
    padding: 10px 0;
  }
  label {
    display: block;
    margin-bottom: 5px;
  }
  input[type="text"],
  input[type="password"] {
    width: calc(100% - 12px); /* Adjust width for padding */
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
  }


  .button-container {
    text-align: center;
    margin-top: 20px;
  }
  input[type="submit"],
  input[type="reset"] {
    background-color: #337ab7; 
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    margin: 0 5px; /* Add some space between buttons */
  }
  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #23527c;
  }
</style>
</head>
<body>
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Employee</u></h3>
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
            <th>ACTION</th>
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
           
           <td>
             <a href='<c:url value="delete?id=${emp.id}"></c:url>'>Delete</a>
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
