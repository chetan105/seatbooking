<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 --%><%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Google Fonts for Material IO -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="StyleSheet">

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
<body>
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
						<li role="presentation"><a href="home">Home</a></li>

						<li role="presentation"><a href="contactus">Contact us</a></li>
						<li role="presentation"><a href="team">Team</a></li>

						<!-- UNCOMMENT BELOW LINES TO SHOW LOGIN AND SIGNUP IN NAV BAR -->

						<!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	</header>
	<!-- HEADER ENDS -->

	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<!-- ENTER YOUR TEXT -->
					<h1 class="title">Forgot Password</h1>
				</div>
			</div>
			<div class="main-login main-center">
				<form action="reset.html" class="form-horizontal" method="post"
					name="MyForm">

					<!-- EMAIL DIV STARTS -->
					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <input type="text" class="form-control"
									ng-model="myEmail" name="email" id="email"
									placeholder="Enter your email id" />
								<!-- <span ng-show="myForm.myEmail.$touched && myForm.myEmail.$invalid"> Email is required.</span> -->
							</div>
						</div>
					</div>
					<!-- EMAIL DIV ENDS -->


					<!-- SUBMIT BUTTON STARTS -->
					<div class="form-group ">
						<button type="submit" onclick="validate()"
							class="btn btn-primary btn-lg btn-block login-button">Submit</button>
					</div>
					<!-- SUBMIT BUTTON ENDS -->


				</form>
			</div>
		</div>
	</div>

	<!-- FOOTER STARTS -->
	<div class="sub-footer footer navbar-fixed-bottom">
		<div class="copyright">
			<p>
				<span>Ownspace</span>
			</p>
		</div>
	</div>
	<script src="./js/login.js"></script>

</body>
</html>