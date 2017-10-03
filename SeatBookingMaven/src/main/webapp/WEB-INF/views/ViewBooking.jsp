v<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="StyleSheet" type="text/css">

<!-- BootStrap Table CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.css"
	rel="StyleSheet" type="text/css">

<!-- BootStrap Validator CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrapValidator.css"
	rel="StyleSheet" type="text/css">

<!-- BootStrap Date Picker CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker/bootstrap-datepicker3.css"
	rel="StyleSheet" type="text/css">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="StyleSheet" type="text/css">

<!-- FontAwesome CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css"
	rel="StyleSheet" type="text/css">

<!-- Google Fonts for Material IO -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="StyleSheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">-->

<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker/bootstrap-datepicker.js"></script>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="${pageContext.request.contextPath}/resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="${pageContext.request.contextPath}/resources/js/ie-emulation-modes-warning.js"></script>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		  
		<![endif]-->

<style>
.vertical-menu {
	width: 200px; /* Set a width if you like */
}

.vertical-menu a {
	background-color: #eee; /* Grey background color */
	color: black; /* Black text color */
	display: block; /* Make the links appear below each other */
	padding: 12px; /* Add some padding */
	text-decoration: none; /* Remove underline from links */
}

.vertical-menu a:hover {
	background-color: #ccc; /* Dark grey background on mouse-over */
}

.vertical-menu a.active {
	background-color: #4CAF50;
	/* Add a green color to the "active/current" link */
	color: white;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
	width: 100%;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<div class="navbar-brand">
								<a href="homepage.html"> <img
									src="${pageContext.request.contextPath}/resources/img/seat_logo.png"
									width="180" height="95" float="left" />
								</a>
							</div>
						</div>
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="homepage.html">Home</a></li>
								<li role="presentation"><a href="feature.html">About us</a>
								</li>
								<li role="presentation"><a href="blog.html">Contact us</a>
								</li>
								<li role="presentation"><a href="portfolio.html">Team</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-user"></span>
										Sign Up</a></li>
								<li><a href="login.html"><span
										class="glyphicon glyphicon-log-in"></span> Log Out </a></li>
								<!-- 				<li>
				<a href="">
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-user"></span> login 
        </button></a></li>
 -->
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<div class="col-sm-4">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="vertical-menu">

						<a
							href="file:///C:/Users/Administrator/Desktop/Final%20MMA/mainpage.html">Personal
							Details</a> <a href="contactdetail.html">Contact Details</a> <a
							href="book.html" class="active">Book Seat</a> <a
							href="swapSeat.html">Swap Seat</a> <a href="cancelSeat.html">Cancel
							Seat</a> <a href="deleteAccount.html">Delete Account</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- select seat form -->
	<div class="col-sm-8">
		<br />
		<div class="col-sm-12" style="border: 1px solid #000">
			<c:forEach items="${data.get(3)}" var="seat">

				<c:if test="${seat.getSeatStatus() == 'available' }">
					<a href="viewbooking.html?id=${seat.seatNo}"><button
							style="width: 20%">${seat.seatNo }Available</button></a>
				</c:if>
				<c:if test="${seat.getSeatStatus() == 'booked' }">
					<button style="width: 20%; background: red;" disabled style="">${seat.seatNo }
						Booked</button>
				</c:if>
			</c:forEach>

		</div>
	</div>



	<!-- select seat form end -->



	<!--start footer-->

	<div class="sub-footer footer navbar-fixed-bottom">
		<div class="copyright">
			<p>
				<span>Ownspace</span>
			</p>
		</div>
	</div>

	<!--end footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.1.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/responsive-slider.js"></script>
	<script src="js/wow.min.js"></script>
	<script>
		wow = new WOW({

		}).init();
	</script>
</body>
</html>