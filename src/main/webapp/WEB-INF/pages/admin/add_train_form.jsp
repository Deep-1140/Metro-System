<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ include file="../components/sidebar.jsp" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

      <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/UserHome_Css.css">
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
                    <a href="${pageContext.request.contextPath}/admin/addTrainFwd">Add New Route</a>
                </p>
            </div>

            <!-- Delete Metro Route -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/deleteTrainFwd">Delete an Existing Train</a>
                </p>
            </div>

            <!-- Logout Admin Hyperlink -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/admin/updateTrainFwd">Update Train Details</a>
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

        <div class="main">
            <p class="center-heading"> Add New Train Form</p>
        </div>

        <!-- Form to add new train-->
        <div>
            <form action="${pageContext.request.contextPath}/admin/saveOrUpdateTrain" method="post" class="tab">
                Metro Name: <input type="text" name="trainName"> <br>
                From Station: <input type="text" name="fromStation"> <br>
                To Station: <input type="text" name="toStation"> <br>
                Seats Available: <input type="number" name="seats"> <br>
                Fare (INR): <input type="number" name="fare"> <br>   
                <input  type="submit" value="ADD TRAIN">
            </form>
        </div>
    </body>
    
    </html>