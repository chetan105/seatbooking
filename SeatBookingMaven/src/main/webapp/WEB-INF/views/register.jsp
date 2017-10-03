<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<script>
	var app = angular.module('myApp', []);
	app
			.controller(
					"test",
					function($scope) {
						$scope.roomNumber = /^[0-9]{3,3}$/;
						$scope.mobile = /^[0-9]{10,10}$/;
						$scope.password = "";
						$scope.cpassword = "";
						$scope.passvalidation = false;
						$scope.changepassword = function() {
							var regexp = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/;
							if (regexp.test($scope.password) == false) {
								$scope.passvalidation = false;
							} else {
								$scope.passvalidation = true;
							}
							console.log("Password: ", $scope.password,
									" is valid: ", $scope.passvalidation);
						};
						$scope.confirmPassword = function() {
							if ($scope.password == $scope.cpassword) {
								$scope.confirmPasswordMatches = true;
							} else
								$scope.confirmPasswordMatches = false;
						}
					});
		var app = angular.module('app', []);
	app.directive('validPasswordC', function() {
	  return {
	    require: 'ngModel',
	    scope: {

	      reference: '=validPasswordC'

	    },
	    link: function(scope, elm, attrs, ctrl) {
	      ctrl.$parsers.unshift(function(viewValue, $scope) {

	        var noMatch = viewValue != scope.reference
	        ctrl.$setValidity('noMatch', !noMatch);
	        return (noMatch)?noMatch:!noMatch;
	      });

	      scope.$watch("reference", function(value) {;
	        ctrl.$setValidity('noMatch', value === ctrl.$viewValue);

	      });
	    }
	  }
	});
	app.controller('homeCtrl', function($scope) {

	});
		
		app.directive('disallowSpaces', function() {
	  return {
	    restrict: 'A',

	    link: function($scope, $element) {
	      $element.bind('input', function() {
	        $(this).val($(this).val().replace(/ /g, ''));
	      });
	    }
	  };
	});
</script>
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


<title>Register</title>
</head>
<body>
<body ng-app="myApp" ng-controller="test">
	<header>
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
						<li class="active"><a href="signUp.html"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="login.html"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>

					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	</header>

	<div class="container">
		  <form action="register.html" class="form-horizontal" role="form" name="myForm" method="post" >
			
                <h2><center>SIGN UP</center></h2>
                <div class="form-group " >
                    <label for="fullname" class="col-sm-3 control-label m">Full Name</label>
                    <div class="col-sm-6">
					<div class="input-group m">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
						
                        <input name="employeeName" type="text" id="employeeName" ng-model="employeeName" required size="65"  placeholder="Full Name" class="form-control"  autofocus>
						<div><span style="color:red"ng-show="myForm.employeeName.$touched && myForm.employeeName.$invalid"> Full Name is required.</span></div>
                        </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="user_type" class="col-sm-3 control-label m">User Type</label>
                    <div class="col-sm-6">
					
                        <select id="country" class="form-control">
                            <option>Admin</option>
                            <option>Employee</option>
                            </span>
							</div>
                        </select>
                    </div>
                </div>
				<div class="form-group">
                    <label for="user_name" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
					<div class="input-group m">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" disallow-spaces id="userName" placeholder="UserName"  name="userName" ng-model="userName"   required class="form-control" autofocus/>
						 <span style="color:red"ng-show="myForm.userName.$touched && myForm.userName.$invalid"> UserName is required.</span>
                     </div>
                    </div>
                </div>
				
				<div class="form-group" ng-class="{'has-error':formData.password.$invalid && !formData.password.$pristine}">
                    <label for="Password" class="col-sm-3 control-label">Password</label>
                         <div class="col-sm-6">
                         <div class="input-group m">
                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                            <input type="password"  disallow-spaces id="password" minlength="8" maxlength="20" name="password" class="form-control"ng-model="formData.password" required size="71" width="1"
                             ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/"  placeholder="password" autofocus ng-maxlength="15" ng-minlenth="15">
                              <span ng-show="myForm.password.$touched && myForm.password.$invalid"><font color="red">*required.</font></span>

                             <span ng-show="myForm.password.$dirty && myForm.password.$error.minlength">
                                            Passwords must be between 8 and 20 characters.</span>
                              <p ng-show="myForm.password.$error.pattern" class="error">Must contain one lower & uppercase letter, and one non-alpha character(a number or a symbol.)</p>
  
                        </div>
                    </div>
                </div>
				<div class="form-group" ng-class="{'has-error':formData.rpassword.$invalid && !formData.rpassword.$pristine}">
                    <label for="Password" class="col-sm-3 control-label">Re-enter Password</label>
                    <div class="col-sm-6">
          <div class="input-group m">
          
          
        
           <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                      <input type="password" id="password_c" maxlength="15" name="password_c"  class="form-control" ng-model="formData.password_c" 
    placeholder="confirm password" valid-password-c="formData.password" required size="65" />

        <p ng-show="myForm.password_c.$touched && myForm.password_c.$error.noMatch" class="error">Password do not match.</span>
          <p ng-show="myForm.password_c.$touched && myForm.password_c.$error.required" class="error">please re-enter your password</p>
                        </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="designation" class="col-sm-3 control-label">Designation</label>
                    <div class="col-sm-6">
					<div class="input-group m">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" id="designation" placeholder="Designation" input name="designation" ng-model="designation" required class="form-control">
						<span style="color:red"ng-show="myForm.designation.$touched && myForm.designation.$invalid">Designation  is required.</span>
                    </div>
					</div>
                </div>
				
				
				<div class="form-group">
                    <label for="email" class="col-sm-3 control-label">email</label>
                    <div class="col-sm-6">
        <div class="input-group m">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input name="email" class="form-control" type="email" ng-model="email" required size="65" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/"placeholder="sample123@gmail.com" required autofocus>
            <span ng-show="myForm.email.$touched && myForm.email.$invalid"><font color="red">*required.</font></span>
			 <span ng-show="myForm.email.$touched && myForm.email.$error.pattern">please enter valid email Address</span>
           
                        </div>
                  
                  
			
	<br>	
	  <center><button type="submit" class="btn btn-default">Register</button></center>		  
				  
            </form> <!-- /form -->
           
			  
 </div>



</body>

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
  
  </script>

</html>