<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

    <script>
	var app=angular.module('myApp',[]);
	app.controller("test",function($scope)
	{
	$scope.password="";
	$scope.cpassword="";
	$scope.passvalidation=false;
	$scope.changepassword=function()
	{
		var regexp=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,12}$/;
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


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		  
		<![endif]-->

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script></head>
    

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
                <a href="homepage.html">
                  <img src="${pageContext.request.contextPath}/resources/img/seat_logo.png" width="180" height="95"/>	
                </a>
              </div>
            </div>
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation">
                  <a href="homepage.html">Home</a>
                </li>
                <li role="presentation">
                  <a href="contactus">Contact us</a>
                </li>
                <li role="presentation">
                  <a href="team">Team</a>
                </li>
		<li class="active"><a href="signUp.html"><span class="glyphicon glyphicon-user" ></span> Sign Up</a></li>
		<li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>		
		
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header> 

	<div class="container">
	</div>				
	<!--slider left right arrow-->
     	

	<div class="container" >
            <form class="form-horizontal" action="register.html" method="post" name="myForm" >
			
                <h2><center>SIGN UP</center></h2>
                <div class="form-group" >
                    <label for="fullname" class="col-sm-3 control-label">Employee Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
						
                        <input name="employeeName" type="text" id="fullname" ng-model="myName" required size="65"  placeholder="Full Name" class="form-control"  autofocus>
						<div><span ng-show="myForm.myName.$touched && myForm.myName.$invalid"> Full Name is required.</span></div>
                        </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="user_type" class="col-sm-3 control-label">User Type</label>
                    <div class="col-sm-6">
					
                        <select name="userType" id="userType" class="form-control">
                            <option>Admin</option>
                            <option>Employee</option>
                        </select>
                        </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="user_name" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span>
                        <input type="text" id="username" placeholder="User Name"  name="userName" ng-model="myUserName"   required class="form-control" autofocus/>
						 <span ng-show="myForm.myUserName.$touched && myForm.myUserName.$invalid"> UserName is required.</span>
                     </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
					
                    <div class="col-sm-6">
                        <!-- <div class="input-group">
						
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="password"  name="password" id="password" required ng-init="password_error_show=0"
						ng-focus="password_error_show=1" ng-pattern=""
						ng-change="password_error_show=passowrd_error_show + 1 ; changepassword()"
						placeholder="Password"  input name="myPassword" ng-model="myPassword"   class="form-control" autofocus />
						<div ng-show="myForm.password.pattern.$error || !passvalidation && password_error_show > 0">
					
						<span ng-show="myForm.password.$dirty && myForm.password.$invalid ">please enter valid password</span>
						</div></div> -->
						<div class="input-group">
						
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="password" ng-minlength="8" ng-maxlength="10" name="password" id="password" required ng-init="password_error_show=0"
						
						ng-change="changepassword()"
						placeholder="Password"  ng-model="password"   class="form-control" autofocus />
						<div ng-show="!passvalidation">
					
						<span ng-show="myForm.password.$dirty && myForm.password.$invalid ">please enter valid password</span>
						</div>
						</div>
						</div>
				</div>
					<div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Confirm Password</label>
                    <div class="col-sm-6">
					<div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                     <input type="password" name="cpassword" id="cpassword" ng-change="confirmPassword()" ng-model="cpassword"
						placeholder="Confirm Password" class="form-control" autofocus />
						
						<span ng-show="myForm.cpassword.$touched && !confirmPasswordMatches ">Password Mismatch</span>
						<!-- <span ng-show="cpassword_error_show > 0 && password == cpassword">password matched</span> -->
						
					</div>
                </div>
				</div>
				<div class="form-group">
                    <label for="designation" class="col-sm-3 control-label">Designation</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" id="designation" placeholder="Designation" input name="designation" ng-model="myDesignation" required class="form-control">
						<span ng-show="myForm.myDesignation.$touched && myForm.myDesignation.$invalid">Designation  is required.</span>
                    </div>
					</div>
                </div>
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span>
                        <input type="text" id="email" placeholder="email" input name="email" ng-model="myEmail" required class="form-control">
						<span ng-show="myForm.myEmail.$touched && myForm.myEmail.$invalid">Email is required.</span>
                    </div>
					</div>
                </div>
				
			<!-- 	<div class="form-group">
                    <label for="contact_type" class="col-sm-3 control-label">Contact Type</label>
                    <div class="col-sm-6">
					
                        <select name="contactType" id="contact_type" class="form-control">
                            <option>Office</option>
                            <option>Personal</option>
                            </div>
                        </select>
                    </div>
                </div>
					
  
        
     
		
		<div class="form-group">
                    <label for="Room_no" class="col-sm-3 control-label">Room Number</label>
                    <div class="col-sm-6">
					<div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-address-card-o  fa-lg" aria-hidden="true"></i></span>
                        <input type="text" id="roomno" placeholder="Room Number" name="roomNo" ng-model="myRoomNumber1" required class="form-control" autofocus>
						<span ng-show="myForm.myRoomNumber1.$touched && myForm.myRoomNumber1.$invalid"> RoomNumber is required.</span>
                        </div>
                    </div>
                </div>
	            <div class="form-group">
                    <label for="street" class="col-sm-3 control-label">Street</label>
                    <div class="col-sm-6">
					<div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-street-view " aria-hidden="true"></i></span>
                        <input type="text" id="street" placeholder="Street" name="street" ng-model="myStreet1" required class="form-control" autofocus>
						<span ng-show="myForm.myStreet1.$touched && myForm.myStreet1.$invalid"> Street is required.</span>
                        </div>
                    </div>
                </div>
	            <div class="form-group">
                    <label for="city" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-6">
					<div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i></span>
					
                        <input type="text" id="city" placeholder="City"  name="city" ng-model="myCity1" required class="form-control" autofocus>
						<span ng-show="myForm.myCity1.$touched && myForm.myCity1.$invalid"> City is required.</span>
                      </div>  
                    </div>
                </div>
				<div class="form-group">
                    <label for="state" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-6">
					<div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-map-marker fa-lg" aria-hidden="true"></i></span>
					
                        <input type="text" id="state" placeholder="State"  name="state" ng-model="myState1" required class="form-control" autofocus>
						<span ng-show="myForm.myState1.$touched && myForm.myState1.$invalid">State is required.</span>
                        </div>
                    </div>
					</div>
					<div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-6">
					<div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-globe fa-lg" aria-hidden="true"></i></span>
					
                        <input type="text" id="country" placeholder="Country"  name="country" ng-model="myCountry1" required class="form-control" autofocus>
						<span ng-show="myForm.country.$touched && myForm.country.$invalid">Country is required.</span>
                       </div> 
                    </div>
                </div>
				<div class="form-group">
                    <label for="contact_no" class="col-sm-3 control-label">Contact Number</label>
                    <div class="col-sm-6">
					<div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-mobile " aria-hidden="true"></i></span>
					
                        <input type="text" id="contactnumber" placeholder="Contact Number" name="mobile" ng-model="myContact1" required class="form-control" autofocus>
						<span ng-show="myForm.mobile.$touched && myForm.mobile.$invalid"> Contact is required.</span>
                      </div>  
					</div>
                </div> -->
	
	<br>
  <center>
  <button type="submit" class="btn btn-default">Register</button></center>
				  
				 </div>
         </div>
         </div>
         </form>			

	
	
<!--start footer-->
	
	<div class="sub-footer footer navbar-fixed-bottom">
  <div class="copyright">
    <p> <span>Ownspace</span> </p>
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
  
</body>
    </html>