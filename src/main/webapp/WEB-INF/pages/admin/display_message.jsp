<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String[] images = {
        "homepage.jpg",
        "metro.jpg",
        "Metro2.jpg",
        "platform.jpg"
    };
    int idx = (int) (Math.random() * images.length);
    String bgImage = images[idx];
%>
<html>
<head>
    <title>Admin Message</title>
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

        <header>
            <h1 class="hd">Indore Metro Administration Portal</h1>

            <!-- Home Hyperlik -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/home">Home</a>
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
                    <a href="${pageContext.request.contextPath}/admin/deleteTrainFwd">Delete an Existing Metro Train</a>
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
                    Hey, Admin ! Welcome to our new IMC Website
                </p>
            </div>

            <div>
                <h1 class="hd">${message}</h1>
            </div>


        </header>
    </body>

    </html>