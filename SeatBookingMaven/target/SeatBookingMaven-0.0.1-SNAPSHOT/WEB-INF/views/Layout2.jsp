<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BootStrap</title>
<meta name="viewport" content="width=device-width,intitial-scale=1.0">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/bootstrap.min.css">
	
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link href="css/style.css" rel="stylesheet">
 
<style>
.custom {
    width: 150px ;
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
                <a href="index.html">
                  <img src="img/seat_logo.png" width="180" height="95"/>	
                </a>
              </div>
            </div>
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                  <a href="index.html">Home</a>
                </li>
                <li role="presentation">
                  <a href="feature.html">About us</a>
                </li>
                <li role="presentation">
                  <a href="blog.html">Contact us</a>
                </li>
                <li role="presentation">
                  <a href="portfolio.html">Team</a>
                </li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
  </header> <br/><br>
  <div class="container">
  
  
	<%
		String color = null;
		String font_col = null;
		String disable_flag = null;
	%>
	
		<div class="row">

	<center>
			<div class="col-sm-4">
			 <div class="dropdown">
    <button type="button" button class="btn btn-primary dropdown-toggle btn-lg custom" type="button"  data-toggle="dropdown">Location
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li ><a   href="#">HTML</a></li>
      <li ><a  href="#">CSS</a></li>
      <li ><a href="#">JavaScript</a></li>
      </ul>
  </div>
  </div>
  <div class="col-sm-4">
  <div class="dropdown">
    <button type="button"  button class="btn btn-primary dropdown-toggle btn-lg custom" type="button"  data-toggle="dropdown">Office Name
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li ><a   href="#">HTML</a></li>
      <li ><a  href="#">CSS</a></li>
      <li ><a href="#">JavaScript</a></li>
      </ul>
  </div></div>
  <div class="col-sm-4">
  <div class="dropdown">
    <button type="button" button class="btn btn-primary dropdown-toggle btn-lg custom" type="button"  data-toggle="dropdown">Floor No
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li ><a   href="#">HTML</a></li>
      <li ><a  href="#">CSS</a></li>
      <li ><a href="#">JavaScript</a></li>
      </ul>
  </div>
  </div>			 
</div></center>

<br/><br/>
<div class="row" >			
		<button type="button" class="btn btn-info btn-block" data-toggle="collapse" data-target="#demo">View Layout</button>
  <div id="demo" class="collapse">
  		
			
				<%--  <%
					//right now this is static value it should be chnaged accourding to database
					String status = "Available";

					switch (status) {
					case "Available":
						color = "green";
						font_col = "white";
						disable_flag = "active";
						break;
					case "Booked":
						color = "grey";
						font_col = "black";
						disable_flag = "disabled";
						break;
					}
				%>  --%> 
				
				
				<div class="row" style="margin:10px;">

					<div class="col-lg-2">
				<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
name="201" id="201"		style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />201
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
	name="202" id="202"		style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />202
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
	name="203" id="203"	style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />203
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
	name="204" id="204"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />204
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
	name="205" id="205"						style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />205
						</a>
					</div>
					
					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
		name="206" id="206"	style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />
							206
						</a>
					</div>

				</div>

			
		
				<div class="row" style="margin:10px;">
		<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
		name="207" id="207"	style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />207
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
	name="208" id="208"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />208
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
		name="209" id="209"		style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />209
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
name="224" id="224"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />210
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
name="211" id="211"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />211
						</a>
					</div>
					
					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
name="212" id="212"	style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />212
					</a>
					</div>

				</div>
		
		


																<div class="row" style="margin:10px;">
			<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
name="213" id="213"	style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />213
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
name="214" id="214" style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />214
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
name="215" id="215"	style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />215
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
name="216" id="216"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />216
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
name="217" id="217"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />217
						</a>
					</div>
					
					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
name="218" id="218"	style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />218
						
						</a>
					</div>

				</div>
		
				


		<div class="row" style="margin:10px;">
			<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
	name="219" id="219"	style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />219
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
	name="220" id="220"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />220
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
				name="221" id="221"	style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />221
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
						name="222" id="222"		style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />222
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
						name="223" id="223"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />223
						</a>
					</div>
					
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
						name="224" id="224"	style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />224
						
						</a>
					</div>

				</div>
				

				
		
			</div>
		</div>
		

	</div>
	
	
	<!--start footer-->
	
	<div class="sub-footer footer navbar-fixed-bottom">
  <div class="copyright">
    <p> <span>Ownspace</span> </p>
  </div>
  </div>

	<!--end footer-->



</body>
</html>