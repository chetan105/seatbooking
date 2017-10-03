<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

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

 <header>
    <div class="container">
      <div class="row">
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <div class="navbar-header">
              <div class="navbar-brand">
                <a href="index.html">
                  <img src="${pageContext.request.contextPath}/resources/img/seat_logo.png" width="180" height="95"/>	
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

 <div class="container" >
           <form class="form-horizontal" action="addlocation.html">
           
           
       <div class="form-group">
      <label class="control-label col-sm-2" for="officeName">Office name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="officeName" placeholder="Enter office name" name="officeName" required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="locationName">Location name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="locationName" placeholder="Enter location Name" name="locationName" required>
      </div>
    </div>
    
    
	<div class="form-group">
      <label class="control-label col-xs-2" for="locationCode">Location code:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="locationCode" placeholder="Enter location code" name="locationCode" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="country">Country:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="country" placeholder="Enter country" name="country" required>
      </div>
    </div>
  	
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <a href="addlocation.html"><button type="submit" class="btn btn-default">Add</button></a>
      </div>
    </div>
  </form>
</div>

</body>
</html>
