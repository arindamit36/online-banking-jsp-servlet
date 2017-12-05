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

<link rel="stylesheet" href="css/meanmenu.min.css">

<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.css">

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
<a href="index.html"><img src="image/logo.png" alt=""></a>
</div>
</div>
<div class="col-md-8">
<div class="main-menu">
<nav>
<ul id="nav">
<li><a href="index.jsp">Home</a>
</li>
<li><a href="about.jsp">About Us</a></li>
<li class="active"><a href='services.jsp'>Services</a></li>
<li><a href="#"><%=Contents.isLogin(request)?"Profile":"Login" %></a>
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
<li><a href="about.jsp">About Us</a></li>
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



<section class="banner-area banner">
<div class="container">
<div class="row m0 page-cover">
<div class="">
<h2 class="section-header">Services<span>.</span></h2>
</div>
<p>We’ve all heard how crucial it is to set intentions, goals and targets. Powerful goals electrify us. Clear intentions energize and pull us forward.</p>
</div>
</div>
</section>


<section class="services-area">
<div class="container">
<div class="row">
<div class="service row m0">
<div class="col-md-6 common">
<div class="service-img">
<div class="img">
<img class="img-responsive" src="image/services/1.jpg" alt="">
</div>
</div>
</div>
<div class="col-md-6 common">
<div class="services-item">
<span class="features-num">01</span>
<h2>investment</h2>
<p>To invest is to allocate money in the expectation of some benefit in the future.</p><p>In finance, the expected future benefit from investment is a return. The return may consist of capital gain and/or investment income, including dividends, interest, rental income etc.</p><p>Investment generally results in acquiring an asset, also called an investment. If the asset is available at a price worth investing, it is normally expected either to generate income, or to appreciate in value, so that it can be sold at a higher price.</p>
</div>
</div>
</div>
<div class="service services2 row m0">
<div class="col-md-6">
<div class="service-img">
<div class="img">
<img class="img-responsive" src="image/services/2.jpg" alt="">
</div>
</div>
</div>
<div class="col-md-6">
<div class="services-item">
<span class="features-num">02</span>
<h2>personal finance</h2>
<p>Personal finance is the financial management which an individual
or a family unit performs to budget, save, and spend monetary resources over time, taking into account various financial risks and future life events. When planning personal finances, the individual would consider
the suitability to his or her needs of a range of banking products
or investment private equity, (stock market, bonds, mutual funds)
and insurance (life insurance, health insurance, disability insurance) products or participation and monitoring of individual-or employer-sponsored retirement plans, social security benefits.</p>
</div>
</div>
</div>
<div class="service row m0">
<div class="col-md-6 common">
<div class="service-img">
<div class="img">
<img class="img-responsive" src="image/services/3.jpg" alt="">
</div>
</div>
</div>
<div class="col-md-6 common">
<div class="services-item">
<span class="features-num">03</span>
<h2>investment</h2>
<p>To invest is to allocate money in the expectation of some benefit in the future.</p><p>In finance, the expected future benefit from investment is a return. The return may consist of capital gain and/or investment income, including dividends, interest, rental income etc.</p><p>Investment generally results in acquiring an asset, also called an investment. If the asset is available at a price worth investing, it is normally expected either to generate income, or to appreciate in value, so that it can be sold at a higher price.</p>
</div>
</div>
</div>
<div class="service services2 row m0">
<div class="col-md-6">
<div class="service-img">
<div class="img">
<img class="img-responsive" src="image/services/4.jpg" alt="">
</div>
</div>
</div>
<div class="col-md-6">
<div class="services-item">
<span class="features-num">04</span>
<h2>personal finance</h2>
<p>Personal finance is the financial management which an individual
or a family unit performs to budget, save, and spend monetary resources over time, taking into account various financial risks and future life events. When planning personal finances, the individual would consider
the suitability to his or her needs of a range of banking products
or investment private equity, (stock market, bonds, mutual funds)
and insurance (life insurance, health insurance, disability insurance) products or participation and monitoring of individual-or employer-sponsored retirement plans, social security benefits.</p>
</div>
</div>
</div>
</div>
</div>
</section>


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
