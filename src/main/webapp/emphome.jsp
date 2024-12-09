<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popular Funds</title>
    <link rel="stylesheet" type="text/css" href="emphome.css">
</head>
<body>
 <%@ include file="empnavbar.jsp" %>
<div class="welcome-message">
    Welcome <%= emp.getName() %>,
</div>




    <!-- Popular Funds Section -->
    <section class="popular-funds">
        <h2>Popular Funds</h2>
        <div class="funds-container">
            <div class="fund-card">
                <h3>Motilal Oswal Midcap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 36.9%</p>
                    <p><strong>Benchmark:</strong> 35.2%</p>
                    <p><strong>NAV:</strong> ₹42.87</p>
                    <p><strong>Risk:</strong> High</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>

            <div class="fund-card">
                <h3>Parag Parikh Flexi Cap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 18.0%</p>
                    <p><strong>Benchmark:</strong> 17.4%</p>
                    <p><strong>NAV:</strong> ₹55.34</p>
                    <p><strong>Risk:</strong> Moderate</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow1.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>

            <div class="fund-card">
                <h3>Quant Small Cap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 29.9%</p>
                    <p><strong>Benchmark:</strong> 28.5%</p>
                    <p><strong>NAV:</strong> ₹21.19</p>
                    <p><strong>Risk:</strong> High</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow2.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>

            <div class="fund-card">
                <h3>Nippon India Large Cap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 22.7%</p>
                    <p><strong>Benchmark:</strong> 21.6%</p>
                    <p><strong>NAV:</strong> ₹32.47</p>
                    <p><strong>Risk:</strong> Moderate</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow3.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>
            
            <div class="fund-card">
                <h3>Nippon India Large Cap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 22.7%</p>
                    <p><strong>Benchmark:</strong> 21.6%</p>
                    <p><strong>NAV:</strong> ₹32.47</p>
                    <p><strong>Risk:</strong> Moderate</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow4.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>
            
            <div class="fund-card">
                <h3>Nippon India Large Cap Fund</h3>
                <div class="fund-stats">
                    <p><strong>CAGR:</strong> 22.7%</p>
                    <p><strong>Benchmark:</strong> 21.6%</p>
                    <p><strong>NAV:</strong> ₹32.47</p>
                    <p><strong>Risk:</strong> Moderate</p>
                </div>
                <div class="fund-actions">
                    <button class="btn know-more">Know More</button>
                    <a href="investnow5.jsp">
    <button class="btn invest-now">Invest Now</button>
</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
