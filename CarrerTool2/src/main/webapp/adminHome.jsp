<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <!-- Bootstrap CSS for layout and design -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Chart.js for visualizations -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin-top: 30px;
        }

        .card {
            margin-bottom: 30px;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
        }

        canvas {
            max-width: 100%;
        }

        .chart-container {
            margin-bottom: 30px;
        }

        .chart-container h6 {
            margin-bottom: 15px;
        }

        .row {
            margin-top: 20px;
        }

        .col-lg-6 {
            margin-bottom: 30px;
        }
    </style>
</head>

<body>

    <%@ include file="adminNavBar.jsp" %>

    <!-- Main Content Area -->
    <div class="container mt-5">
        <h1 class="text-center mb-4">Welcome to the Admin Home Page</h1>
        
        <!-- Councillor Count Section -->
        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title">Councillor Count</h5>
                <c:if test="${not empty councillorCount}">
                    <p class="font-weight-bold">Total Councillors: ${councillorCount}</p>
                </c:if>
                <c:if test="${empty councillorCount}">
                    <p class="text-muted">No data available for councillor count.</p>
                </c:if>
            </div>
        </div>

        <!-- User Count Section -->
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">User Count</h5>
                <c:if test="${not empty userCount}">
                    <p class="font-weight-bold">Total Users: ${userCount}</p>
                </c:if>
                <c:if test="${empty userCount}">
                    <p class="text-muted">No data available for user count.</p>
                </c:if>
            </div>
        </div>

        <!-- Data Visualization Section -->
        <div class="row">
            <!-- Pie Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Councillor and User Distribution (Pie Chart)</h6>
                <canvas id="pieChart" width="400" height="200"></canvas>
            </div>

            <!-- Bar Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Councillor vs User Count (Bar Chart)</h6>
                <canvas id="barChart" width="400" height="200"></canvas>
            </div>
        </div>

        <div class="row">
            <!-- Line Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Growth of Councillors and Users Over Time</h6>
                <canvas id="lineChart" width="400" height="200"></canvas>
            </div>

            <!-- Radar Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Councillor Categories Comparison</h6>
                <canvas id="radarChart" width="400" height="200"></canvas>
            </div>
        </div>

        <div class="row">
            <!-- Doughnut Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Councillor and User Distribution (Doughnut Chart)</h6>
                <canvas id="doughnutChart" width="400" height="200"></canvas>
            </div>

            <!-- Horizontal Bar Chart -->
            <div class="col-lg-6 chart-container">
                <h6 class="text-center">Councillor vs User Count (Horizontal Bar Chart)</h6>
                <canvas id="horizontalBarChart" width="400" height="200"></canvas>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 SAAHAS. All rights reserved.</p>
    </footer>

    <!-- JavaScript libraries -->
    <script>
        // Pie Chart for Councillor and User Distribution
        var ctxPie = document.getElementById('pieChart').getContext('2d');
        var pieChart = new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: ['Councillors', 'Users'],
                datasets: [{
                    label: 'Distribution',
                    data: [${councillorCount}, ${userCount}],
                    backgroundColor: ['#36A2EB', '#FF6384'],
                    borderColor: ['#36A2EB', '#FF6384'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw;
                            }
                        }
                    }
                }
            }
        });

        // Bar Chart for Councillor vs User Count
        var ctxBar = document.getElementById('barChart').getContext('2d');
        var barChart = new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: ['Councillors', 'Users'],
                datasets: [{
                    label: 'Count',
                    data: [${councillorCount}, ${userCount}],
                    backgroundColor: '#36A2EB',
                    borderColor: '#36A2EB',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw;
                            }
                        }
                    }
                }
            }
        });

        // Line Chart for Growth Over Time
        var ctxLine = document.getElementById('lineChart').getContext('2d');
        var lineChart = new Chart(ctxLine, {
            type: 'line',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June'],  // Example months
                datasets: [{
                    label: 'Councillors',
                    data: [10, 15, 20, 30, 40, 50],  // Example data for councillors
                    borderColor: '#36A2EB',
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    fill: true
                }, {
                    label: 'Users',
                    data: [100, 200, 250, 300, 400, 500],  // Example data for users
                    borderColor: '#FF6384',
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    fill: true
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw;
                            }
                        }
                    }
                }
            }
        });

        // Radar Chart for Councillor Categories
        var ctxRadar = document.getElementById('radarChart').getContext('2d');
        var radarChart = new Chart(ctxRadar, {
            type: 'radar',
            data: {
                labels: ['Category 1', 'Category 2', 'Category 3', 'Category 4'],  // Example categories
                datasets: [{
                    label: 'Councillor Categories',
                    data: [25, 40, 60, 50],  // Example category data
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: '#36A2EB',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true
            }
        });

        // Doughnut Chart for Councillor and User Distribution
        var ctxDoughnut = document.getElementById('doughnutChart').getContext('2d');
        var doughnutChart = new Chart(ctxDoughnut, {
            type: 'doughnut',
            data: {
                labels: ['Councillors', 'Users'],
                datasets: [{
                    label: 'Distribution',
                    data: [${councillorCount}, ${userCount}],
                    backgroundColor: ['#36A2EB', '#FF6384'],
                    borderColor: ['#36A2EB', '#FF6384'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true
            }
        });

        // Horizontal Bar Chart for Councillor vs User Count
        var ctxHBar = document.getElementById('horizontalBarChart').getContext('2d');
        var horizontalBarChart = new Chart(ctxHBar, {
            type: 'bar',
            data: {
                labels: ['Councillors', 'Users'],
                datasets: [{
                    label: 'Count',
                    data: [${councillorCount}, ${userCount}],
                    backgroundColor: '#36A2EB',
                    borderColor: '#36A2EB',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                indexAxis: 'y',  // Horizontal bar chart
                scales: {
                    x: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw;
                            }
                        }
                    }
                }
            }
        });
    </script>

</body>

</html>
