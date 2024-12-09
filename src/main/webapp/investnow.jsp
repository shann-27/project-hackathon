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

        <!-- Graph Section -->
        <div class="graph-section">
            <h2>Fund Performance</h2>
            <canvas id="fundPerformanceGraph"></canvas>
        </div>

        <!-- SIP Section -->
        <div class="sip-section">
            <h2>Systematic Investment Plan (SIP)</h2>
            <label for="sip-amount">Enter Monthly SIP Amount (₹):</label>
            <input type="number" id="sip-amount" name="sip-amount" placeholder="Enter amount" min="500">
            <button class="btn calculate-sip">Calculate SIP</button>
        </div>

        <!-- Investment Meter -->
        <div class="investment-meter">
            <h2>Investment Meter</h2>
            <input type="range" id="investment-range" min="1000" max="1000000" step="1000" value="50000" oninput="updateMeterValue(this.value)">
            <p>Investment Amount: ₹<span id="investment-value">50,000</span></p>
            <button class="btn invest-button">Invest Now</button>
        </div>
    </div>

    <script>
        // Chart.js Example - Replace this with dynamic data from the backend
        const ctx = document.getElementById('fundPerformanceGraph').getContext('2d');
        const fundChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                datasets: [{
                    label: 'Mutual Fund Performance',
                    data: [10, 15, 14, 20, 25, 30, 28, 35, 40, 42, 45, 50],
                    backgroundColor: 'rgba(29, 185, 84, 0.2)',
                    borderColor: '#1db954',
                    borderWidth: 2,
                    fill: true,
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: 'Months',
                            color: '#ffffff',
                            font: {
                                size: 14
                            }
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'NAV (₹)',
                            color: '#ffffff',
                            font: {
                                size: 14
                            }
                        }
                    }
                }
            }
        });

        // Update Investment Meter Value
        function updateMeterValue(value) {
            document.getElementById('investment-value').textContent = parseInt(value).toLocaleString('en-IN');
        }
    </script>
</body>
</html>
