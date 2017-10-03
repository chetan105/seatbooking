<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

 
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

 <body>

<body ng-app="myApp" ng-controller="test">
    <header>
    <div class="container">
      <div class="row">
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <div class="navbar-header">
              <div class="navbar-brand">
                <a href="index.html">
                  <img src="img/seat_logo.png" width="180" height="95"/>	
                </a>
              </div>
            </div>
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                  <a href="home">Home</a>
                </li>
                <li role="presentation">
                  <a href="contactus">Contact us</a>
                </li>
                <li role="presentation">
                  <a href="team">Team</a>
                </li>
				
		<li><a href="person"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
<!-- 				<li>
				<a href="">
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-user"></span> login 
        </button></a></li>
 -->              </ul>
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
            <form class="form-horizontal" action="updatecontactdetail.html" method="post" name="myForm" >
			
                <h2><center>Contact Details</center></h2>
				
				<div class="form-group">
                    <label for="user_type" class="col-sm-3 control-label">Contact Type</label>
                    <div class="col-sm-6">
                        <select name="userType" id="country" class="form-control">
                            <option>Office</option>
                            <option>Personal</option>
                        </select>
						 </div>
                 </div>
					
					
                <div class="form-group" >
                    <label for="roomNo" class="col-sm-3 control-label">Room Number</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
						
                        <input name="roomNo" type="text" id="roomno" ng-model="roomno" required size="65"  placeholder="Room Number" class="form-control"  autofocus>
						<div><span ng-show="myForm.roomno.$touched && myForm.roomno.$invalid"> Room Number is required.</span></div>
                        </div>
                    </div>
                </div>
				
               
				<div class="form-group">
                    <label for="street" class="col-sm-3 control-label">Street</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" id="street" placeholder="Street"  name="street" ng-model="street"   required class="form-control" autofocus/>
						 <span ng-show="myForm.street.$touched && myForm.street.$invalid"> Street is required.</span>
                     </div>
                    </div>
                </div>
				<div class="form-group">
                    <label for="city" class="col-sm-3 control-label">city</label>
					
                    <div class="col-sm-6">
                        
						<div class="input-group">
						
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<input type="text"  name="city" id="city" required 
						placeholder="city"  ng-model="city"   class="form-control" autofocus />
						
					
						<span ng-show="myForm.city.$touched && myForm.city.$invalid ">City is Required</span>
						
						</div>
						</div><br><br>
				
				<div class="form-group">
                    <label for="state" class="col-sm-3 control-label">state</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" id="state" placeholder="State" input name="state" ng-model="state" required class="form-control">
						<span ng-show="myForm.state.$touched && myForm.state.$invalid">State is required.</span>
                    </div>
					</div>
                </div>
                
                <div class="form-group">
                    <label for="mobile" class="col-sm-3 control-label">Contact Number</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" id="mobile" placeholder="Contact Number" input name="mobile" ng-model="mobile" required class="form-control">
						<span ng-show="myForm.mobile.$touched && myForm.mobile.$invalid">Mobile Number is required.</span>
                    </div>
					</div>
                </div>
				
			
	
	<br>
  <center>
  <button type="submit" class="btn btn-default">Update</button></center>
				  
				 </div>
       
         </form>			
	</div>
		
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