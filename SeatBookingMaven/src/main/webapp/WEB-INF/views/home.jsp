<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
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
<!-- body begins -->
<body>
<body>
	<header>
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-default navbar" role="navigation">
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
								<li role="presentation" class="active"><a
									href="homepage.html">Home</a></li>
								<li role="presentation"><a href="contactus">Contact us</a>
								</li>
								<li role="presentation"><a href="team">Team</a></li>
								<li><a href="signUp.html"><span
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<!-- 	<li data-target="#myCarousel" data-slide-to="3"></li> -->
		</ol>

		<!--<h3 style="top:70%;left:42%;position:absolutel;z-index:99999">A Desk to Call Your Own – Anywhere & Anytime.</h3>
        <p class="h3-paragraph-inslider" style="top:70%;left:42%;position:absolutel;z-index:99999">Hot, fixed or flexible. However you like your desks, Ownspace can organise them and reduce your real estate costs. 
 In one powerful tool, easily and instantly schedule desks, manage bookings, and find colleagues.</p>
  <button role="tablist" class="menu nav nav-tabs button_on_image" style="top:70%;left:42%;position:absolutel;z-index:99999">Sign in</button>
    <button class="menu nav nav-tabs button_on_image" style="top:70%;left:53%;position:absolutel;z-index:99999">Login</button>

	  <!--<button role="presentation" class="button_on_image" style="top:70%;left:53%;position:absolutel;z-index:99999">Button</button>-->
		<div class="carousel-caption d-none d-md-block text-left ">
			<div class="p-paragraph-inslider">
				<h3 style="color: white; font-size: 36.32px">A Desk to Call
					Your Own - Anywhere & Anytime.</h3>
			</div>
			<p style="color: white; font-size: 22px">
				Fixed or flexible. However you like your desks, Ownspace can
				organise them and reduce your real estate costs.<br /> In one
				powerful tool, easily and instantly schedule desks, manage bookings,
				and find colleagues.
			</p>

		</div>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active img-wrapper">
				<img
					src="${pageContext.request.contextPath}/resources/img/seat1.jpg"
					alt="Los Angeles">
			</div>

			<!-- <div class="item">
      <img src="img/seat2.jpg" alt="Chicago">
    </div> -->

			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/img/seat5.jpg"
					alt="Chicago">
			</div>

			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/img/seat6.jpg"
					alt="Chicago">
			</div>
		</div>
		<!--slider left right arrow-->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>


	<div class="breadcrumb">
		<h4>Benefits for You</h4>
	</div>
	<div class="container">
		<div class="row">
			<div class="boxs">

				<div class="col-md-3 col-md-3-features">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
						<div class="align-center">
							<div class="icon">
								<img
									src="${pageContext.request.contextPath}/resources/img1/1.png">
							</div>
							<h4>Enable More Flexibility</h4>
							<p>However you set up your desks, we help you organize,
								manage and make them bookable to create a more dynamic work
								environment.</p>
							<!--               <div class="ficon">
                <a href="" alt="">Learn more</a>
              </div> -->
						</div>
					</div>
				</div>


				<div class="col-md-3 col-md-3-features">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
						<div class="align-center">
							<div class="icon">
								<img
									src="${pageContext.request.contextPath}/resources/img1/2.png">
							</div>
							<h4>Reduce Your Carbon Footprint</h4>
							<p>Our desk booking solution ensures you maximize the use of
								your real estate – helping you reduce your energy bill and
								saving you money.</p>
							<!--  <div class="ficon">
                <a href="" alt="">Learn more</a>
              </div> -->
						</div>
					</div>
				</div>

				<div class="col-md-3 col-md-3-features">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
						<div class="align-center">
							<div class="icon">
								<img
									src="${pageContext.request.contextPath}/resources/img1/3.png">
							</div>
							<h4>Maximize Desk Usage and Minimize Costs</h4>
							<p>With the average office utilization at only 39%, we help
								you allocate the desks you really need to cut real estate costs.</p>
							<!--  <div class="ficon">
                <a href="" alt="">Learn more</a>
              </div> -->
						</div>
					</div>
				</div>
				<div class="col-md-3 col-md-3-features">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.3s">
						<div class="align-center">
							<div class="icon">
								<img
									src="${pageContext.request.contextPath}/resources/img1/4.png">
							</div>
							<h4>Know Your Space Down to the Last Inch</h4>
							<p>Comprehensive reporting provides data on how often desks
								are booked and if they were actually used.</p>
							<!-- <div class="ficon">
                <a href="" alt="">Learn more</a>
              </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--footer-->
	<div class="sub-footer">
		<div class="copyright">
			<p>
				<span>Ownspace</span>
			</p>

		</div>
	</div>


	<script src="js/jquery-2.1.1.min.js"></script>


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