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
<script>
	var app=angular.module('myApp',[]);
	app.controller("test",function($scope)
	{
	$scope.roomNumber=/^[0-9]{3,3}$/;
	$scope.mobile=/^[0-9]{10,10}$/;
	$scope.password="";
	$scope.cpassword="";
	$scope.passvalidation=false;
	$scope.changepassword=function()
	{
		var regexp=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/;
		if(regexp.test($scope.password)==false)
		{
			$scope.passvalidation=false;
		}
		else
		{
			$scope.passvalidation=true;
		}
		console.log("Password: " , $scope.password , " is valid: ", $scope.passvalidation);
	};
	$scope.confirmPassword = function(){
		if($scope.password==$scope.cpassword){
			$scope.confirmPasswordMatches = true;
		} else 
		$scope.confirmPasswordMatches = false;
	}
	});
	
    </script>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a href="homepage.html"> <img
							src="${pageContext.request.contextPath}/resources/img/seat_logo.png"
							width="180" height="95" />
						</a>
					</div>
				</div>
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="homepage.html">Home</a></li>

						<li role="presentation"><a href="contactus">Contact us</a></li>
						<li role="presentation"><a href="team">Team</a></li>

						<!-- UNCOMMENT BELOW LINES TO SHOW LOGIN AND SIGNUP IN NAV BAR -->

						<li><a href="signUp.html"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li class="active"><a href="login.html"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	</header>
	<!-- HEADER ENDS -->
	<div>
		<div class="container">
			<div class="row main">
				<!--  <div class="panel-heading">
            -->
				<div class="panel-title text-center">
					<!-- ENTER YOUR TEXT -->
					<h1 class="title">SIGN IN</h1>
				</div>
			</div>
			<center>
				<h4 style="color: red">${message}</h4>
			</center>
			<div class="col-md-4 col-md-offset-4 main-login main-center">
				<form action="validate.html" class="form-horizontal" method="post">

					<!-- USERNAME DIV STARTS -->
					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Username</label>
						<div class="cols-sm-5">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span> <input type="text" class="form-control"
									name="userName" id="userName" placeholder="Enter your Username"
									required />
							</div>
						</div>
					</div>
					<!-- USERNAME DIV ENDS -->

					<!-- PASSWORD DIV STARTS -->
					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-5">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
									type="password" minlength="8" maxlength="12"
									class="form-control" name="password" id="password"
									placeholder="Enter your Password" required />
							</div>
						</div>
					</div>
					<!-- PASSWORD DIV ENDS -->

					<!-- LOGIN BUTTON STARTS -->
					<div class="form-group">
						<button type="submit" onclick="validate()"
							class="btn btn-primary btn-md col-md-offset-5 login-button" >Login</button>
					</div>
					<!-- LOGIN BUTTON ENDS -->

					<!-- FORGET PASSWORD LINK STARTS -->
					<center>
						<div class="login-register">
							<a href="forgotpassword.html"><u><h4 style="color: blue">Forget
										Password ?</h4></u></a>
						</div>
					</center>
					<!-- FORGET PASSWORD LINK ENDS -->


				</form>
			</div>
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