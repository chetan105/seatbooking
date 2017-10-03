<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
</head>





</head>

<body>

	<header>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a href="index.html"> <img
							src="${pageContext.request.contextPath}/resources/img/seat_logo.png"
							width="180" height="95" />
						</a>
					</div>
				</div>
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="home"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
						</li>

						<li role="presentation"><a href="contactus"><i class="fa fa-file-text" aria-hidden="true"></i> Contact us</a></li>
						<li role="presentation"><a href="team"><i class="fa fa-users" aria-hidden="true"></i> Team</a></li>
						<li><a href="logout.html">Logout <span
								class="glyphicon glyphicon-log-out"></span></a></li>
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

		<!-- /Header -->

		<!-- Main -->

		<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">

			<ul class="nav nav-pills nav-stacked"
				style="border-right: 1px solid black">
				<!--<li class="nav-header"></li>-->
				<li class="active"><a
					href="file:///C:/Users/Administrator/Desktop/proj/ownspace/adminpage.html"><i
						class="fa fa-dashboard" ></i> Dashboard</a></li>
				<li><a href="#"><i class="fa fa-tags"></i> View Layout </a></li>
				<li><a href="adminAddLocation.html"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Location</a></li>
				<li><a href="adminAddSeat.html"><i class="fa fa-plus-square-o" aria-hidden="true"></i>
						Add Seats</a></li>
				<li><a href="change.html"><i class="fa fa-exchange" aria-hidden="true"></i>
						Change Seats</a></li>
				

			</ul>
		</div>
		<!-- /span-3 -->
		<div class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
			<!-- Right -->

			<a href="#"><strong><span class="fa fa-dashboard"></span>
					My Dashboard</strong></a>
			<hr>
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">Total Number of Seats</div>
					<div class="panel-body">${totalseats}</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">Available Seats</div>
					<div class="panel-body">${totalseats - bookedseats}</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">Booked Seats</div>
					<div class="panel-body">${bookedseats}</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">Notifications</div>
					<div class="panel-body">
						
						<c:forEach items="${notify}" var="li">
						
						<div>
							${li.getPerson().getEmployeeId()} wants to cancel seat
							<a href="approve.html?id=${li.getBookingId()}"><button class="btn btn-success">Approve</button></a>
							<a href="decline.html?id=${li.getBookingId()}"><button class="btn btn-danger">Decline</button></a>
						</div>
						
						</c:forEach>
						
						
					</div>
				</div>


			</div>
		</div>

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