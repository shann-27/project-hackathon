<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Mutual Funds Platform</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
        }
        .container {
            width: 85%;
            margin: 20px auto;
        }
        .stats {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 30px;
        }
        .card {
            flex: 1;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .card h2 {
            color: #333;
            font-size: 22px;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 18px;
            color: #555;
        }
        .modules {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }
        .module-link {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .module-link:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .module-link img {
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }
        .module-link span {
            font-size: 18px;
            color: #007bff;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header">
        Admin Dashboard - Mutual Funds Platform
    </div>
    <%@include file="adminnavbar.jsp" %>
    <div class="container">
        <!-- Quick Stats -->
        <div class="stats">
            <div class="card">
                <h2>Total Users</h2>
                <p><c:out value="${userCount}"/></p>
            </div>
            <div class="card">
                <h2>Total Investors</h2>
                <p><c:out value="${empcount}"/></p>
            </div>
            <div class="card">
                <h2>Active Mutual Funds</h2>
                <p><c:out value="${activeFundsCount}"/></p>
            </div>
        </div>

        <!-- Admin Modules -->
        <div class="modules">
            <a href="manageUsers.jsp" class="module-link">
                <img src="https://img.icons8.com/color/96/admin-settings-male.png" alt="Manage Users">
                <span>Manage Users</span>
            </a>
            <a href="manageFunds.jsp" class="module-link">
                <img src="https://img.icons8.com/color/96/money-bag.png" alt="Manage Funds">
                <span>Manage Mutual Funds</span>
            </a>
            <a href="investmentTracking.jsp" class="module-link">
                <img src="https://img.icons8.com/color/96/line-chart.png" alt="Investment Tracking">
                <span>Investment Tracking</span>
            </a>
            <a href="reports.jsp" class="module-link">
                <img src="https://img.icons8.com/color/96/report-card.png" alt="View Reports">
                <span>View Reports</span>
            </a>
        </div>
    </div>
</body>
</html>