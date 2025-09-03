<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ include file="../common/sidebar.jsp" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/UserHome_Css.css">
        <style>
    body {
        background-image: url('<%= request.getContextPath() %>/images/<%= bgImage %>');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>
    
   </head>

    <body>
        <div class="main-content">
            <div class="header">
                <h1>Admin Dashboard</h1>
            </div>
            <div class="home">
                <p class="menu">
                    <a href="#">Home</a>
                </p>
            </div>

            <!-- View All Metro Routes -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/viewAllTrains">View All Metro Routes</a>
                </p>
            </div>

            <!-- Search Metro Route -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/searchTrainByNumberFwd">Search Metro Route</a>
                </p>
            </div>

            <!-- Add New Metro Route -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/addTrainFwd">Add New Metro Route</a>
                </p>
            </div>

            <!-- Delete Metro Route -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/deleteTrainFwd">Delete an Existing Metro</a>
                </p>
            </div>

            <!-- Logout Admin Hyperlink -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/updateTrainFwd">Update Metro Details</a>
                </p>
            </div>

            <!-- Add new Train -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/logout">Logout</a>
                </p>
            </div>

            <!--Welcome message for the admin-->
            <div class="tab">
                <p class="menu">
                    Hey, Admin ! Welcome to our new ITRTC Website
                </p>
            </div>

        </header>
    </body>

    </html>