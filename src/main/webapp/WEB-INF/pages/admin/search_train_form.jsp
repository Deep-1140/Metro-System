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
				<a href="${pageContext.request.contextPath}/admin/viewAllTrains">View
					All Metro Routes</a>
			</p>
		</div>

		<!-- Search Metro Route -->
		<div class="home">
			<p class="menu">
				<a
					href="${pageContext.request.contextPath}/admin/searchTrainByNumberFwd">Search
					Metro Route</a>
			</p>
		</div>

		<!-- Add New Metro Route -->
		<div class="home">
			<p class="menu">
				<a href="${pageContext.request.contextPath}/admin/addTrainFwd">Add
					New Route</a>
			</p>
		</div>

		<!-- Delete a train Hyperlink -->
		<div class="home">
			<p class="menu">
				<a href="${pageContext.request.contextPath}/admin/deleteTrainFwd">Delete
					an Existing Train</a>
			</p>
		</div>

		<!-- Logout Admin Hyperlink -->
		<div class="home">
			<p class="menu">
				<a href="${pageContext.request.contextPath}/admin/updateTrainFwd">Update
					Train Details</a>
			</p>
		</div>

		<!-- Add new Train -->
		<div class="home">
			<p class="menu">
				<a href="${pageContext.request.contextPath}/logout">Logout</a>
			</p>
		</div>
	</header>
		<!--Welcome message for the admin-->
		<div class="tab">
			<p class="menu">Hey, Admin ! Welcome to our new IMC Website</p>
		</div>
	
	<div class="main">
		<p class="menu"> Search Metro By Number </p>
	</div>

	<div>
		<!-- Search Trains by Number - form-->
		<form
			action="${pageContext.request.contextPath}/admin/searchTrainByNumber"
			class="tab red" method="get">
			TrainNumber: <input type="number" name="trainNo"> <br>
			<input type="submit" value="SEARCH Metro">
		</form>
	</div>
</body>

</html>