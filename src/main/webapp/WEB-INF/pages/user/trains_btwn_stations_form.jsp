<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
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

	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>

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

		<header>
			<h1 class="hd">Indore Metro Ticket Booking Portal</h1>

			<!-- Home Hyperlik -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/home">Home</a>
				</p>
			</div>

			<!-- View All Metro Routes -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/viewAllTrains">View All Metro Routes</a>
				</p>
			</div>

			<!-- Find Metro Routes between Stations -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/findTrainsbetweenStaionsFwd">Metro Routes between Stations</a>
				</p>
			</div>

			<!-- Display Booking History -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/showTicketBookingHistory">Ticket Booking History</a>
				</p>
			</div>

			<!-- Fare Enquiry -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/trainFairEnqueryFwd">Fare Enquiry</a>
				</p>
			</div>

			<!-- Check Seats Availability Hyperlink -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/trainSeatsAvailablityCheckFwd">Check Seats
						Availability</a>
				</p>
			</div>
			
			<!-- Search Metro Route by Number -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/user/searchTrainByNumberFwd">Search Metro Route</a>
                </p>
            </div>

			<!-- display user profile Hyperlink -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/userProfile/view">Profile</a>
				</p>
			</div>
			
			<!-- user Logout Hyperlink -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/logout">Logout</a>
				</p>
			</div>

		</header>

		<section>
			<h1>Search Metro Routes Between Stations</h1>
			<form action="${pageContext.request.contextPath}/user/findTrainsbetweenStaions" class="tab red" method="get">
				From Station : <input type="text" name="fromStation" placeholder="Enter origin station"> <br>
				To Station   : <input type="text" name="toStation" placeholder="Enter destination station"> <br>
				<input type="submit" value="Search Metro Routes">
			</form>
		</section>
	</body>

	</html>