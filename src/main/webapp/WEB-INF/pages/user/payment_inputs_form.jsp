<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
    body {
        background-image: url('<%= request.getContextPath() %>/images/<%= bgImage %>');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
.inlineimage {
	max-width: 470px;
	margin-right: 8px;
	margin-left: 10px
}

.images {
	display: inline-block;
	max-width: 98%;
	height: auto;
	width: 22%;
	margin: 1%;
	left: 20px;
	text-align: center
}
</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/UserHome_Css.css">

</head>
<body>

	<div class="hd">
		<h1>Indore Metro Payment Gateway</h1>
	</div>
	
		<header>
			<h1 class="hd">Indore Metro Ticket Booking Portal</h1>

			<!-- Home Hyperlik -->
			<div class="home">
				<p class="menu">
					<a href="#">Home</a>
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
					<a href="${pageContext.request.contextPath}/user/findTrainsbetweenStaionsFwd">Routes between Stations</a>
				</p>
			</div>

			<!-- Diplay train booking History Hyperlink -->
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
			
			<!-- Search by Route Number -->
			<div class="home">
				<p class="menu">
                    <a href="${pageContext.request.contextPath}/user/searchTrainByNumberFwd">Search by Route Number</a>
				</p>
			</div>			<!-- display user profile Hyperlink -->
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
		
	<!-- Credit Card Payment Form - START -->
	<div class="container-fluid" style="position: fixed;">
		<div class="row">
			<div class="col-xs-12 col-md-5 col-md-offset-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="inlineimage">
								<img class="img-responsive images"
									src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Mastercard-Curved.png">
								<img class="img-responsive images"
									src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Discover-Curved.png">
								<img class="img-responsive images"
									src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Paypal-Curved.png">
								<img class="img-responsive images"
									src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/American-Express-Curved.png">
							</div>
						</div>
					</div>
					<form role="form" action="${pageContext.request.contextPath}/user/confirmTrainBooking" method="post">

					<!--  form data will be mapped directly to the respective TrainDTO and TicketDTO objects without any nesting, and you should be able to access the values correctly in your controller method. -->
					<input type="hidden" name="trainNo" value="${trainDTO.trainNo}" />
					<input type="hidden" name="fromStation" value="${trainDTO.fromStation}" />
					<input type="hidden" name="toStation" value="${trainDTO.toStation}" />
					
					<input type="hidden" name="journeyDate" value="${ticketDTO.journeyDate}" />
					<input type="hidden" name="seatsRequired" value="${ticketDTO.seatsRequired}" />
					<input type="hidden" name="seatType" value="${ticketDTO.seatType}" />

						
						
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label>CARD NUMBER</label>
										<div class="input-group">
											<input type="tel" class="form-control"
												placeholder="Valid Card Number" required/> <span
												class="input-group-addon"><span
												class="fa fa-credit-card"></span></span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label><span class="hidden-xs">EXPIRATION</span><span
											class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
											class="form-control" placeholder="MM / YY" required/>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label>CV CODE</label> <input type="tel" class="form-control"
											placeholder="CVC" required/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label>CARD OWNER</label> <input type="text"
											class="form-control" placeholder="Card Owner Name" required/>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-xs-12">
									<input type="submit" value="Confirm Payment"
										class="btn btn-success btn-lg btn-block" />
								</div>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>



</body>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</html>