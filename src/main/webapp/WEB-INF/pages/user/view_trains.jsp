<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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

	<!-- To display all trains details received from DB -->
	<div class="main">
		<p class="center-heading">${pageHeading}</p>
		<div class="tab">
			<table border="1">
				<tr>
					<th>Metro Name</th>
					<th>Metro No.</th>
					<th>From Station</th>
					<th>To Station</th>
					<th>Time</th>
					<th>Seats Available</th>
					<th>Fare (INR)</th>
					<th>Booking</th>
				</tr>

				<!-- checking if trainsList List is null or not before displying it -->
				<c:choose>
					<c:when test="${empty trainsList}">
						<tr>
							<td colspan="7">
								<h1>No Running metros available</h1>
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="train" items="${trainsList}">
							<!-- Generating Random Train Time -->
							<%
							// Generate random hours and minutes
							int hr = (int) (Math.random() * 24);
							int min = (int) (Math.random() * 60);

							// Construct the time string ,adding leading zero if hr or min < 10
							String trainTime = (hr < 10 ? "0" + hr : String.valueOf(hr)) + ":" + (min < 10 ? "0" + min : String.valueOf(min));
							%>

							<tr>
								<td>${train.trainName}</td>
								<td>${train.trainNo}</td>
								<td>${train.fromStation}</td>
								<td>${train.toStation}</td>
								<td><%=trainTime%></td>
								<td>${train.seats}</td>
								<td>${train.fare}</td>
								<td>
									<!-- Creating url for Booking trains-->
									<c:url var="bookNowLink" value="/user/showPreBookingFormForTrain">
										<!-- passing the trainNo in queryString -->
										<c:param name="trainNo" value="${train.trainNo}"/>
										<c:param name="fromStation" value="${train.fromStation}"/>
										<c:param name="toStation" value="${train.toStation}"/>
									</c:url>
									<!-- Hyperlink for Booking train -->
									<a href="${bookNowLink }" style="color: red;"> BookNow</a>
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>

</body>
</html>
