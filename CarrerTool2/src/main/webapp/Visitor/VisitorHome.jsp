<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="VisitorNavbar.jsp" %> <!-- Include the Navbar -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAAHAS - Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="Visitor/VisitorHome.css"> <!-- Your custom styles -->
</head>
<body>

<!-- Main Content -->
<div class="container mt-5">
    <header class="text-center mb-4">
        <h1>Welcome to SAAHAS</h1>
        <p>Select a role to continue</p>
    </header>

    <!-- Role Tiles -->
    <section class="tile-container">
        <!-- Admin Tile -->
        <div class="tile" onclick="location.href='adminlogin'">
            <h2>Admin</h2>
            <p>Manage users and oversee the system</p>
        </div>

        <!-- Counselor Tile -->
        <div class="tile" onclick="location.href='councillorlogin'">
            <h2>Counselor</h2>
            <p>Guide users in reloading life</p>
        </div>

        <!-- User Tile -->
        <div class="tile" onclick="location.href='userlogin'">
            <h2>User</h2>
            <p>Access support resources</p>
        </div>
    </section>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 mt-5">
    <p>&copy; 2024 SAAHAS. All rights reserved.</p>
</footer>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
