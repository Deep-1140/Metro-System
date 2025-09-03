<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/UserHome_Css.css">
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
					<a href="${pageContext.request.contextPath}/user/trainFairEnqueryFwd">Fair Enquery</a>
				</p>
			</div>

			<!-- Check Seats Availability Hyperlink -->
			<div class="home">
				<p class="menu">
					<a href="${pageContext.request.contextPath}/user/trainSeatsAvailablityCheckFwd">Check Seats
						Availability</a>
				</p>
			</div>
			
			<!-- Search a train using train Number Hyperlink -->
            <div class="home">
                <p class="menu">
                    <a href="${pageContext.request.contextPath}/user/searchTrainByNumberFwd">Search Metro By Number</a>
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

	<!-- Displaying the train search result to User -->
	<div class="main">
		<p class="menu">Train Details</p>
		<div class="tab">
			<table border="1">
				<tr>
					<th>Metro Name</th>
					<th>Metro No.</th>
					<th>From Station</th>
					<th>To Station</th>
					<th>Seats Available</th>
					<th>Fare (INR)</th>
					<th>Action</th>
				</tr>
				<tr>
					<td>${train.trainName}</td>
					<td>${train.trainNo}</td>
					<td>${train.fromStation}</td>
					<td>${train.toStation}</td>
					<td>${train.seats}</td>
					<td>${train.fare}</td>
				</tr>

			</table>
		</div>
	</div>

</body>
</html>
