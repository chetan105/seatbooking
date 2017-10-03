<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cancelseat</title>

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="StyleSheet" type="text/css">

<!-- BootStrap Table CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.css" rel="StyleSheet" type="text/css">

<!-- BootStrap Validator CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrapValidator.css" rel="StyleSheet" type="text/css">

<!-- BootStrap Date Picker CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker/bootstrap-datepicker3.css" rel="StyleSheet" type="text/css">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="StyleSheet" type="text/css">

<!-- FontAwesome CSS -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="StyleSheet" type="text/css">

<!-- Google Fonts for Material IO -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="StyleSheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">-->

<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker/bootstrap-datepicker.js"></script>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="${pageContext.request.contextPath}/resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${pageContext.request.contextPath}/resources/js/ie-emulation-modes-warning.js"></script>


<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
</head>

<body>
	<header>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a href="homepage.html"> <img src="${pageContext.request.contextPath}/resources/img/seat_logo.png" width="180"
							height="95" float="left" />
						</a>
					</div>
				</div>
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="homepage.html">Home</a>
						</li>
						<li role="presentation"><a href="feature.html">About us</a></li>
						<li role="presentation"><a href="blog.html">Contact us</a></li>
						<li role="presentation"><a href="portfolio.html">Team</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Sign Up</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
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

	<div class="container">
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

.container {
	padding: 16px;
}

.textbox {
	border: 1px solid #848484;
	-moz-border-radius-topleft: 30px;
	-webkit-border-top-left-radius: 30px;
	border-top-left-radius: 30px;
	-moz-border-radius-topright: 30px;
	-webkit-border-top-right-radius: 30px;
	border-top-right-radius: 30px;
	border: 1px solid #848484;
	outline: 0;
	height: 25px;
	width: 275px;
	padding-left: 20px;
	padding-right: 20px;
	display: block;
}
</style>


		<br>
		<!-- main body starts-->
		<div class="row">
			<div class="col-md-3">
				<div class="vertical-menu">
					<a
						href="file:///C:/Users/Administrator/Desktop/Final%20MMA/mainpage.html">Personal
						Details</a> <a
						href="file:///C:/Users/Administrator/Desktop/Final%20MMA/contactdetails.html">Contact
						Details</a> <a href="#">Book Seat</a> <a
						href="file:///C:/Users/Administrator/Desktop/Final%20MMA/swapseat.html"">Swap
						Seat</a> <a
						href="file:///C:/Users/Administrator/Desktop/Final%20MMA/cancelseat.html"
						class="active">Cancel Seat</a> <a
						href="file:///C:/Users/Administrator/Desktop/Final%20MMA/deleteaccount.html">Delete
						Account</a>
				</div>
			</div>
			<div class="col-md-9">
				<div class="col-md-12" style="border: 1px solid #000">

					<br>
					<div class="panel panel-info" style="margin: 1em;">
						<div class="panel-heading">
							<h3 class="panel-title">Cancel Booking</h3>
						</div>
						<div class="panel-body">
							Do you really want to cancel booking ? <br> 
							<a href="cancelseatYes" class="label label-danger"
								onclick="event.preventDefault();
 									document.getElementById('logout-form').submit();">

								<span>   Yes   </span>
							</a>     <a href="cancelseatNo.html" class="label label-success"> <span>  No   </span></a> 

						</div>


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
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
</body>
</html>