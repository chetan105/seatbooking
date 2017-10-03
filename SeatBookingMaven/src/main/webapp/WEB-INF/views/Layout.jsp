<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
	width: 150px;
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
						<a href="index.html"> <img src="img/seat_logo.png" width="180"
							height="95" />
						</a>
					</div>
				</div>
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="index.html">Home</a>
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
	<br />
	<br>
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
						<button type="button" button
							class="btn btn-primary dropdown-toggle btn-lg custom"
							type="button" data-toggle="dropdown">
							Location <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">HTML</a></li>
							<li><a href="#">CSS</a></li>
							<li><a href="#">JavaScript</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="dropdown">
						<button type="button" button
							class="btn btn-primary dropdown-toggle btn-lg custom"
							type="button" data-toggle="dropdown">
							Office Name <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">HTML</a></li>
							<li><a href="#">CSS</a></li>
							<li><a href="#">JavaScript</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="dropdown">
						<button type="button" button
							class="btn btn-primary dropdown-toggle btn-lg custom"
							type="button" data-toggle="dropdown">
							Floor No <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">HTML</a></li>
							<li><a href="#">CSS</a></li>
							<li><a href="#">JavaScript</a></li>
						</ul>
					</div>
				</div>
		</div>
		</center>

		<br />
		<br />
		<div class="row">
			<button type="button" class="btn btn-info btn-block"
				data-toggle="collapse" data-target="#demo">View Layout</button>
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


				<div class="row" style="margin: 10px;">

					<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />101
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />102
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />103
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />104
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />105
						</a>
					</div>

					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />
							106
						</a>
					</div>

				</div>



				<div class="row" style="margin: 10px;">
					<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />107
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />108
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />109
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />110
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />111
						</a>
					</div>

					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />112
						</a>
					</div>

				</div>




				<div class="row" style="margin: 10px;">
					<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />113
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />114
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />115
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />116
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />117
						</a>
					</div>

					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />118

						</a>
					</div>

				</div>




				<div class="row" style="margin: 10px;">
					<div class="col-lg-2">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />119
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />120
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;color:<%=font_col%>;background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />121
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-square <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />122
						</a>
					</div>
					<div class="col-lg-2">
						<a href="#" class="btn  btn-squre <%=disable_flag%> margin-left"
							style="border-radius: 50px; color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />123
						</a>
					</div>

					<div class="col-lg-2" style="width: 50px; height: 50px;">
						<a href="#" class="btn btn-square <%=disable_flag%> margin-right"
							style="border-radius: 50px;  color:<%=font_col%>; background-color:<%=color%>">
							<img src="seat_icon.jpg" style="width: 50px; height: 50px;" />124

						</a>
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



</body>
</html>