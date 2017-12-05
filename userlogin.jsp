<%@page import="mycolls.Contents"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%=Contents.WP_TITLE %></title>

<link rel="shortcut icon" type="image/png" href="image/favicon.png">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/font-awesome.min.css">

<link rel="stylesheet" href="vendors/elegant-icon/style.css">

<link href='https://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Rufina:400,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.css">

<link rel="stylesheet" href="css/meanmenu.min.css">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/responsive.css">
</head>
<body>

<div class="loader">
<div class="loader-brand">
<div class="sk-folding-cube">
<div class="sk-cube1 sk-cube"></div>
<div class="sk-cube2 sk-cube"></div>
<div class="sk-cube4 sk-cube"></div>
<div class="sk-cube3 sk-cube"></div>
</div>
</div>
</div>


<header class="header-area">
<div class="container">
<div class="row">
<div class="col-md-2">
<div class="logo">
<a href="index.jsp"><img src="image/logo.png" alt=""></a>
</div>
</div>
<div class="col-md-8">
<div class="main-menu">
<nav>
<ul id="nav">
<li><a href="index.jsp">Home</a>
</li>
<li><a href="about.jsp">About Us</a></li>
<li><a href='services.jsp'>Services</a></li>
<li class="active"><a href="#"><%=Contents.isLogin(request)?"Profile":"Login" %></a>
<ul class="sub-menu">
<%
	if(!Contents.isLogin(request)){
		out.println("<li><a href=\"userlogin.jsp\">Users Login</a></li>");
		out.println("<li><a href=\"banklogin.jsp\">Bank Login</a></li>");
	}
	else{
		out.println("<li><a href=\"profile\">Profile</a></li>");
		out.println("<li><a href=\"logout\">Logout</a></li>");
	}
%>
</ul>
</li>
<li><a href="contact.jsp">Contacts</a></li>
</ul>
</nav>
</div>
</div>
<div class="col-md-2">
<div class="socia-icon">
<ul>
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</header>

<div class="mobile-menu-area">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="mobile-menu">
<div class="logo">
<a href="index.html"><img src="image/logo.png" alt=""/></a>
</div>
<nav id="dropdown">
<ul>
<li><a href="index.jsp">Home</a></li>
<li class="active"><a href="about.jsp">About Us</a></li>
<li><a href='services.jsp'>Services</a></li>
<li><a href="#"><%=Contents.isLogin(request)?"Profile":"Login" %></a>
<ul>
<%
	if(!Contents.isLogin(request)){
		out.println("<li><a href=\"userlogin.jsp\">Users Login</a></li>");
		out.println("<li><a href=\"banklogin.jsp\">Bank Login</a></li>");
	}
	else{
		out.println("<li><a href=\"profile\">Profile</a></li>");
		out.println("<li><a href=\"logout\">Logout</a></li>");
	}
%>
</ul>
</li>
<li><a href="contact.jsp">Contacts</a></li>
</ul>
</nav>
</div>
</div>
</div>
</div>
</div>



<section class="banner-area">
<div class="container">
<div class="row m0 page-cover">
<div class="">
<h2 class="section-header">User Login<span>.</span></h2>
</div>
<p>We’ve all heard how crucial it is to set intentions, goals and targets. Powerful goals electrify us. Clear intentions energize and pull us forward.</p>
</div>
</div>
</section>


<section class="about-text-area">
<div class="container">
<div class="row">
<div class="col-sm-7 col-xs-7">
<div class="about-text">
<h2>Safe Users Login</h2>
	<form action="userlogin" method="POST">
	<table>
	<tr>
		<td style="padding:5px;">UserID</td><td>:</td>
		<td width="350" style="padding:5px;">
			<input type="text" name="userid" placeholder="Your user id" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td style="padding:5px;">Password</td><td>:</td>
		<td style="padding:5px;">
			<input type="password" name="pass" placeholder="Your password" required="" class="form-control" />
		</td>
	</tr>
	<tr>
		<td colspan="3" align="right" style="padding:5px;">
			<button type="submit" class="btn submit">Login</button>
		</td>
	</tr>
	
	
	
	</table>
	</form>

</div>
</div>
<div class="col-sm-5 col-xs-5">
<div class="about-img">
<img class="img-responsive" src="image/1.jpg" alt="">
</div>
</div>
</div>
</div>
</section>


<div class="team-area">
<div class="container">
<h2 class="section-title">our experts</h2>
<div class="row teams">
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="team">
<div class="team-img">
<img src="image/team/1.png" alt="">
<ul class="social-icon">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
<h2><a href="#">nick gerrard</a></h2>
<p>– CEO of Metropol</p>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="team">
<div class="team-img">
<img src="image/team/2.png" alt="">
<ul class="social-icon">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
<h2><a href="#">nick gerrard</a></h2>
<p>– CEO of Metropol</p>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="team">
<div class="team-img">
<img src="image/team/3.png" alt="">
<ul class="social-icon">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
<h2><a href="#">nick gerrard</a></h2>
<p>– CEO of Metropol</p>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="team">
<div class="team-img">
<img src="image/team/4.png" alt="">
<ul class="social-icon">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
<h2><a href="#">nick gerrard</a></h2>
<p>– CEO of Metropol</p>
</div>
</div>
</div>
</div>
</div>


<footer class="footer-area">
<div class="footer-top">
<div class="container">
<div class="row footer">
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="widget about-widget">
<h2 class="widget-tittle">About Us</h2>
<p>This is a popular question people ask me. How do you know if I am mastering the art of Deliberate Attraction? Is there an advanced course I can take? My answer is always the same, “The application of this material into</p>
<a href="#" class="logo">
<img src="image/footer-logo.png" alt="">
</a>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="widget widget-link">
<h2 class="widget-tittle">services</h2>
<ul>
<li><a href="#">Investment</a></li>
<li><a href="#">Personal Finance</a></li>
<li><a href="#">Trust Management</a></li>
<li><a href="#">Consulting</a></li>
</ul>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6 widget recent-widget">
<h2 class="widget-tittle">Recent Posts</h2>
<div class="widget-inner row m0">
<ul>
<li>
<img src="image/clients-about-us1.jpg" alt="">
<div class="recent-post-text">
<h5><a>Where to invest in 2016?</a></h5>
<a href="#">Apr. 28, 2016</a>
</div>
</li>
<li>
<img src="image/clients-about-us1.jpg" alt="">
<div class="recent-post-text">
<h5><a>Bank deposit. What to choose?</a></h5>
<a href="#">Apr. 28, 2016</a>
</div>
</li>
</ul>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-6">
<div class="widget widget-news">
<h2 class="widget-tittle">newsletter</h2>
<div class="widget-inner row m0">
<form action="#" class="search-form" method="get">
<div class="input-group">
<input type="search" class="form-control" placeholder="Email">
<span class="input-group-addon">
<button type="submit"><i class="arrow_right"></i></button>
</span>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="footer-bottom">
<div class="container">
<div class="row">
<div class="col-md-3 col-sm-4">
<span>© <a href="index.jsp"><%=Contents.WP_TITLE %></a> 2017. All Rights Reserved.</span>
</div>
<div class="col-md-7 col-sm-6">
<ul class="nav footer-nav">
<li><a href="#">Login</a></li>
<li><a href="#">Privacy Policy </a></li>
<li><a href="#">Terms of Use</a></li>
<li><a href="#">Contacts</a></li>
</ul>
</div>
<div class="col-md-2 col-sm-2">
<div class="social-nav">
<ul class="nav">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</footer>


<script src="js/jquery-2.2.0.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.meanmenu.js"></script>

<script src="vendors/waypoint/waypoints.min.js"></script>
<script src="vendors/couterup/jquery.counterup.min.js"></script>
<script src="vendors/circle-progress/circle-progress.js"></script>

<script src="vendors/owl-carousel/owl.carousel.min.js"></script>

<script src="js/main.js"></script>
</body>
</html>