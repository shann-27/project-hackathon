<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invest Now</title>
    <link rel="stylesheet" type="text/css" href="investnow.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <%@include file="empnavbar.jsp" %>
    <div class="container">
        <h1></h1>

        <!-- Fund Performance Section -->
        <div class="graph-section">
            <h2>Fund Performance</h2>
            <canvas id="fundPerformanceGraph"></canvas>
            <canvas id="topFundsChart"></canvas> <!-- Added Top Performing Funds Chart -->
        </div>

        <!-- Investment Growth Over Time Section -->
        <div class="growth-section">
            <h2>Investment Growth Over Time</h2>
            <canvas id="growthChart"></canvas>
        </div>

        <!-- SIP Section -->
        <div class="sip-section">
            <h2>Systematic Investment Plan (SIP)</h2>
            <label for="sip-amount">Enter Monthly SIP Amount (₹):</label>
            <input type="number" id="sip-amount" name="sip-amount" placeholder="Enter amount" min="500">
            <button class="btn calculate-sip">Calculate SIP</button>
        </div>

        <!-- Sector Allocation Section -->
        <div class="sector-section">
            <h2>Sector Allocation</h2>
            <canvas id="sectorAllocationChart"></canvas>
        </div>

        <!-- Mutual Fund Comparison Section -->
        <div class="comparison-section">
            <h2>Mutual Fund Comparison</h2>
            <canvas id="fundComparisonChart"></canvas>
        </div>

        <!-- Investment Meter Section -->
        <div class="investment-meter">
            <h2>Investment Meter</h2>
            <input type="range" id="investment-range" min="1000" max="1000000" step="1000" value="50000" oninput="updateMeterValue(this.value)">
            <p>Investment Amount: ₹<span id="investment-value">50,000</span></p>
            <button class="btn invest-button">Invest Now</button>
        </div>

        <!-- SIP Contribution vs Returns Section -->
        <div class="sip-returns-section">
            <h2>Monthly SIP Contribution vs Returns</h2>
            <canvas id="sipReturnsChart"></canvas>
        </div>
    </div>

    <script>
        // Fund Performance Chart
        const ctx = document.getElementById('fundPerformanceGraph').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Mutual Fund Performance',
                    data: [10, 15, 14, 20, 25, 30, 28, 35, 40, 42, 45, 50],
                    backgroundColor: 'rgba(29, 185, 84, 0.2)',
                    borderColor: '#1db954',
                    borderWidth: 2,
                    fill: true
                }]
            },
            options: { responsive: true }
        });

        // Top Performing Mutual Funds Chart
        const topFundsCtx = document.getElementById('topFundsChart').getContext('2d');
        new Chart(topFundsCtx, {
            type: 'bar',
            data: { labels: ['Fund A', 'Fund B', 'Fund C', 'Fund D', 'Fund E'], datasets: [{ label: 'Annual Return (%)', data: [15, 12, 10, 8, 7], backgroundColor: ['#1db954', '#36A2EB', '#FFCE56', '#FF6384', '#4BC0C0'] }] },
            options: { responsive: true }
        });

        // Investment Growth Chart
        const growthCtx = document.getElementById('growthChart').getContext('2d');
        new Chart(growthCtx, {
            type: 'line',
            data: { labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], datasets: [{ label: 'Fund Value (₹)', data: [1000, 1200, 1400, 1600, 1800, 2000, 2300, 2600, 2900, 3200, 3500, 4000], borderColor: '#1db954', backgroundColor: 'rgba(29, 185, 84, 0.2)', tension: 0.4, fill: true }] },
            options: { responsive: true }
        });

        // Sector Allocation Chart
        const sectorCtx = document.getElementById('sectorAllocationChart').getContext('2d');
        new Chart(sectorCtx, {
            type: 'doughnut',
            data: { labels: ['Technology', 'Healthcare', 'Finance', 'Energy', 'Others'], datasets: [{ data: [30, 25, 20, 15, 10], backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF'] }] },
            options: { responsive: true }
        });

        // Fund Comparison Chart
        const comparisonCtx = document.getElementById('fundComparisonChart').getContext('2d');
        new Chart(comparisonCtx, {
            type: 'radar',
            data: { labels: ['Risk', 'Return', 'Expense Ratio', 'Liquidity', 'Diversification'], datasets: [{ label: 'Fund X', data: [8, 7, 6, 5, 9], borderColor: '#1db954', backgroundColor: 'rgba(29, 185, 84, 0.2)' }, { label: 'Fund Y', data: [6, 8, 5, 7, 8], borderColor: '#FF6384', backgroundColor: 'rgba(255, 99, 132, 0.2)' }] },
            options: { responsive: true }
        });

        // SIP Returns Chart
        const sipCtx = document.getElementById('sipReturnsChart').getContext('2d');
        new Chart(sipCtx, {
            type: 'bar',
            data: { labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], datasets: [{ label: 'SIP Contribution (₹)', data: [1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000], backgroundColor: '#36A2EB' }, { label: 'Returns (₹)', data: [1020, 1045, 1080, 1120, 1165, 1220, 1285, 1350, 1430, 1515, 1600, 1700], backgroundColor: '#1db954' }] },
            options: { responsive: true }
        });

        // Update Investment Meter Value
        function updateMeterValue(value) {
            document.getElementById('investment-value').textContent = parseInt(value).toLocaleString('en-IN');
        }
    </script>
</body>
</html>
