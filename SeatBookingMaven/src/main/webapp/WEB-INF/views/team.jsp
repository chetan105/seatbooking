<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
							<li role="presentation" class="active"><a href="home">Home</a>
							</li>
							<li role="presentation"><a href="contact">Contact us</a></li>
							<li role="presentation"><a href="team">Team</a></li>
							<li><a href="register"><span
									class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<li><a href="person"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
	<div class="row">
		<div class="heading-title text-center">
			<h3 class="text-uppercase">Our Team</h3>
			<p class="p-top-30 half-txt">Nam pulvinar vitae neque et
				porttitor. Praesent sed nisi eleifend. Nam pulvinar vitae neque et
				porttitor. Praesent sed nisi eleifend.</p>
		</div>

		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/man-standing-with-a-black-t-shirt_1187-1045.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Chetan</h4>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/elegant-man-with-thumbs-up_1149-1595.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Shraddha</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/well-dressed-executive-with-crossed-arms_1098-3930.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Deva</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/elegant-man-with-thumbs-up_1149-1595.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Sandeep</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/well-dressed-executive-with-crossed-arms_1098-3930.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Shraddha</h4>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/man-standing-with-a-black-t-shirt_1187-1045.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Simmah</h4>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/man-standing-with-a-black-t-shirt_1187-1045.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Karishma</h4>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/elegant-man-with-thumbs-up_1149-1595.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Siddhikha</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/well-dressed-executive-with-crossed-arms_1098-3930.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Aarti</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">
		<div class="col-md-4 col-sm-4">
			<div class="team-member">
				<div class="team-img">
					<img
						src="https://image.freepik.com/free-photo/man-standing-with-a-black-t-shirt_1187-1045.jpg"
						alt="team member" class="img-responsive">
				</div>
				<div class="team-hover">
					<div class="desk">
						<h4>Shivani</h4>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>

<!--start footer-->

<div class="sub-footer footer">
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