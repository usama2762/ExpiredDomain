<%-- 
    Document   : tour
    Created on : Aug 10, 2016, 3:23:41 PM
    Author     : Usama Jamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Guide &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

 

	
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- 
	Default Theme Style 
	You can change the style.css (default color purple) to one of these styles
	-->
	<link rel="stylesheet" href="css/style.css">

	<!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->
	<link rel="stylesheet" id="theme-switch" href="css/style.css">
	<!-- End demo purposes only -->


	<style>
	/* For demo purpose only */

	/*
	GREEN
	8dc63f
	RED
	FA5555
	TURQUOISE
	27E1CE
	BLUE 
	2772DB
	ORANGE
	FF7844
	YELLOW
	FCDA05
	PINK
	F64662
	PURPLE
	7045FF

	*/
	
	/* For Demo Purposes Only ( You can delete this anytime :-) */
	#colour-variations {
		padding: 10px;
		-webkit-transition: 0.5s;
	  	-o-transition: 0.5s;
	  	transition: 0.5s;
		width: 140px;
		position: fixed;
		left: 0;
		top: 100px;
		z-index: 999999;
		background: #fff;
		/*border-radius: 4px;*/
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	#colour-variations.sleep {
		margin-left: -140px;
	}
	#colour-variations h3 {
		text-align: center;;
		font-size: 11px;
		letter-spacing: 2px;
		text-transform: uppercase;
		color: #777;
		margin: 0 0 10px 0;
		padding: 0;;
	}

	#colour-variations ul,
	#colour-variations ul li {
		padding: 0;
		margin: 0;
	}
	#colour-variations ul {
		margin-bottom: 20px;
		float: left;	
	}
	#colour-variations li {
		list-style: none;
		display: inline;
	}
	#colour-variations li a {
		width: 20px;
		height: 20px;
		position: relative;
		float: left;
		margin: 5px;
	}



	#colour-variations li a[data-theme="style"] {
		background: #8dc63f;
	}
	#colour-variations li a[data-theme="red"] {
		background: #FA5555;
	}
	#colour-variations li a[data-theme="turquoise"] {
		background: #27E1CE;
	}
	#colour-variations li a[data-theme="blue"] {
		background: #2772DB;
	}
	#colour-variations li a[data-theme="orange"] {
		background: #FF7844;
	}
	#colour-variations li a[data-theme="yellow"] {
		background: #FCDA05;
	}
	#colour-variations li a[data-theme="pink"] {
		background: #F64662;
	}
	#colour-variations li a[data-theme="purple"] {
		background: #7045FF;
	}

	#colour-variations a[data-layout="boxed"],
	#colour-variations a[data-layout="wide"] {
		padding: 2px 0;
		width: 48%;
		border: 1px solid #ededed;
		text-align: center;
		color: #777;
		display: block;
	}
	#colour-variations a[data-layout="boxed"]:hover,
	#colour-variations a[data-layout="wide"]:hover {
		border: 1px solid #777;
	}
	#colour-variations a[data-layout="boxed"] {
		float: left;
	}
	#colour-variations a[data-layout="wide"] {
		float: right;
	}

	.option-toggle {
		position: absolute;
		right: 0;
		top: 0;
		margin-top: 5px;
		margin-right: -30px;
		width: 30px;
		height: 30px;
		background: #8dc63f;
		text-align: center;
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		color: #fff;
		cursor: pointer;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	.option-toggle i {
		top: 2px;
		position: relative;
	}
	.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
		color:  #fff;
		text-decoration: none;
		outline: none;
	}
	</style>
	<!-- End demo purposes only -->


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>


	<!-- 
		INFO:
		Add 'boxed' class to body element to make the layout as boxed style.
		Example: 
		<body class="boxed">	
	-->
	<body>
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<section id="fh5co-header">
			<div class="container">
				<nav role="navigation">
					<ul class="pull-left left-menu">
						<li><a href="about.jsp">About</a></li>
						<li class="active"><a href="tour.jsp">Tour</a></li>
						<li><a href="pricing.jsp">Pricing</a></li>
					</ul>
					<h1 id="fh5co-logo"><a href="home.jsp">guide<span>.</span></a></h1>
					<ul class="pull-right right-menu">
						<li><a href="login.jsp">Login</a></li>
						<li class="fh5co-cta-btn"><a href="signup.jsp">Sign up</a></li>
					</ul>
				</nav>
			</div>
		</section>
		<!-- #fh5co-header -->

		<section id="fh5co-hero" class="no-js-fullheight" style="background-image: url(images/full_image_2.jpg);" data-next="yes">
			<div class="fh5co-overlay"></div>
			<div class="container">
				<div class="fh5co-intro no-js-fullheight">
					<div class="fh5co-intro-text">
						<!-- 
							INFO:
							Change the class to 'fh5co-right-position' or 'fh5co-center-position' to change the layout position
							Example:
							<div class="fh5co-right-position">
						-->
						<div class="fh5co-center-position">
							<h2 class="animate-box">Tour Our Products</h2>
							<h3 class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-learn-more animate-box">
				<a href="#" class="scroll-btn">
					<span class="text">See our products</span>
					<span class="arrow"><i class="icon-chevron-down"></i></span>
				</a>
			</div>
		</section>
		<!-- END #fh5co-hero -->

		<section id="fh5co-features">
			<div class="container">
				<div class="row text-center row-bottom-padded-md">
					<div class="col-md-8 col-md-offset-2">
						<figure class="fh5co-devices animate-box"><img src="images/img_devices.png" alt="Free HTML5 Bootstrap Template" class="img-responsive"></figure>
						<h2 class="fh5co-lead animate-box">Perfect Display in All Devices</h2>
						<p class="fh5co-sub-lead animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-power"></i>
							</div>
							<h3 class="animate-box">Best For Startup</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-flag2"></i>
							</div>
							<h3 class="animate-box">Easy To Use</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-anchor"></i>
							</div>
							<h3 class="animate-box">Robust In Mind</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-paragraph"></i>
							</div>
							<h3 class="animate-box">Beautiful Typography</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-umbrella"></i>
							</div>
							<h3 class="animate-box">Eco Friendly</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="fh5co-feature">
							<div class="fh5co-icon animate-box">
								<i class="icon-toggle"></i>
							</div>
							<h3 class="animate-box">Wide and Boxed</h3>
							<p class="animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
				</div>
			</div>
		</section>	

		<!-- END #fh5co-features -->


		<section id="fh5co-features-2">
			<div class="container">
				<div class="col-md-6 col-md-push-6">
					<figure class="fh5co-feature-image animate-box">
						<img src="images/macbook.png" alt="Free HTML5 Bootstrap Template by FREEHTML5.co">
					</figure>
				</div>
				<div class="col-md-6 col-md-pull-6">
					<span class="fh5co-label animate-box">See Features</span>
					<h2 class="fh5co-lead animate-box">Superb Features</h2>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box"><i class="icon-check2"></i></div>
						<div class="fh5co-text animate-box">
							<h3>Beautiful Typography</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box"><i class="icon-check2"></i></div>
						<div class="fh5co-text animate-box">
							<h3>Eco Friendly</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box"><i class="icon-check2"></i></div>
						<div class="fh5co-text animate-box">
							<h3>Wide and Boxed</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>

					<div class="fh5co-btn-action animate-box">
						<a href="#" class="btn btn-primary btn-cta">More Features</a>
					</div>

				</div>
			</div>
		</section>
		<!-- END #fh5co-features-2 -->


		<section id="fh5co-features-3">
			<div class="container">
				<div class="col-md-6 col-md-pull-8">
					<figure class="fh5co-feature-image animate-box">
						<img src="images/macbook.png" alt="Free HTML5 Bootstrap Template by FREEHTML5.co">
					</figure>
				</div>
				<div class="col-md-6">
					<span class="fh5co-label animate-box">More Features</span>
					<h2 class="fh5co-lead animate-box">Let's take your business to the next level</h2>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-paragraph"></i></div>
						<div class="fh5co-text">
							<h3>Beautiful Typography</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-umbrella"></i></div>
						<div class="fh5co-text">
							<h3>Eco Friendly</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-toggle"></i></div>
						<div class="fh5co-text">
							<h3>Wide and Boxed</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>

					<div class="fh5co-btn-action animate-box">
						<a href="#" class="btn btn-primary btn-cta">More Features</a>
					</div>

				</div>
			</div>
		</section>
		<!-- END #fh5co-features-3 -->


		<section id="fh5co-features-4">
			<div class="container">
				<div class="col-md-6 col-md-push-6">
					<figure class="fh5co-feature-image animate-box">
						<img src="images/macbook.png" alt="Free HTML5 Bootstrap Template by FREEHTML5.co">
					</figure>
				</div>
				<div class="col-md-6 col-md-pull-6">
					<span class="fh5co-label animate-box">See Features</span>
					<h2 class="fh5co-lead animate-box">Superb Features</h2>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-check2"></i></div>
						<div class="fh5co-text">
							<h3>Beautiful Typography</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-check2"></i></div>
						<div class="fh5co-text">
							<h3>Eco Friendly</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>
					<div class="fh5co-feature animate-box">
						<div class="fh5co-icon"><i class="icon-check2"></i></div>
						<div class="fh5co-text">
							<h3>Wide and Boxed</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
						</div>
					</div>

					<div class="fh5co-btn-action animate-box">
						<a href="#" class="btn btn-primary btn-cta">More Features</a>
					</div>

				</div>
			</div>
		</section>
		<!-- END #fh5co-features-4 -->
		
		<section id="fh5co-testimonials">
			<div class="container">
				<div class="row row-bottom-padded-sm">
					<div class="col-md-6 col-md-offset-3 text-center">
						<div class="fh5co-label animate-box">Testimonials</div>
						<h2 class="fh5co-lead animate-box">Join the 1 Million Users using Our Products </h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center animate-box">
						<div class="flexslider">
					  		<ul class="slides">
							   <li>
							      <blockquote>
							      	<p>&ldquo;Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn’t really do it, they just saw something. It seemed obvious to them after a while.&rdquo;</p>
							      	<p><cite>&mdash; Steve Jobs</cite></p>
							      </blockquote>
							   </li>
							   <li>
							    	<blockquote>
							      	<p>&ldquo;I think design would be better if designers were much more skeptical about its applications. If you believe in the potency of your craft, where you choose to dole it out is not something to take lightly.&rdquo;</p>
							      	<p><cite>&mdash; Frank Chimero</cite></p>
							      </blockquote>
							   </li>
							   <li>
							    	<blockquote>
							      	<p>&ldquo;Design must be functional and functionality must be translated into visual aesthetics, without any reliance on gimmicks that have to be explained.&rdquo;</p>
							      	<p><cite>&mdash; Ferdinand A. Porsche</cite></p>
							      </blockquote>
							   </li>
							</ul>
						</div>
						<div class="flexslider-controls">
						   <ol class="flex-control-nav">
						      <li class="animate-box"><img src="images/person4.jpg" alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
						      <li class="animate-box"><img src="images/person2.jpg" alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
						      <li class="animate-box"><img src="images/person3.jpg" alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
						   </ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- END #fh5co-testimonials -->

		<section id="fh5co-subscribe">
			<div class="container">
		
				<h3 class="animate-box"><label for="email">Subscribe to our newsletter</label></h3>
				<form action="#" method="post" class="animate-box">
					<i class="fh5co-icon icon-paper-plane"></i>
					<input type="email" class="form-control" placeholder="Enter your email" id="email" name="email">
					<input type="submit" value="Send" class="btn btn-primary">
				</form>

			</div>
		</section>
		<!-- END #fh5co-subscribe -->

		<footer id="fh5co-footer">
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Company</h3>
							<ul class="fh5co-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Feature Tour</a></li>
								<li><a href="#">Pricing</a></li>
								<li><a href="#">Team</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Support</h3>
							<ul class="fh5co-links">
								<li><a href="#">Knowledge Base</a></li>
								<li><a href="#">24/7 Call Support</a></li>
								<li><a href="#">Video Demos</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Contact Us</h3>
							<p>
								<a href="mailto:info@freehtml5.co">info@freehtml5.co</a> <br>
								198 West 21th Street, <br>
								Suite 721 New York NY 10016 <br>
								<a href="tel:+123456789">+12 34  5677 89</a>
							</p>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Follow Us</h3>
							<ul class="fh5co-social">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-google-plus"></i></a></li>
								<li><a href="#"><i class="icon-instagram"></i></a></li>
								<li><a href="#"><i class="icon-youtube-play"></i></a></li>
							</ul>
						</div>
					</div>

				</div>
				
			</div>
			<div class="fh5co-copyright animate-box">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="fh5co-left"><small>&copy; 2016 <a href="index.html">Guide</a> free html5. All Rights Reserved.</small></p>
							<p class="fh5co-right"><small class="fh5co-right">Designed by <a href="http://freehtml5.co" target="_blank">FREEHTML5.co</a> Demo Images: <a href="http://unsplash.com" target="_blank">Unsplash</a></small></p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- END #fh5co-footer -->
	</div>
	<!-- END #fh5co-page -->
	
	<!-- For demo purposes Only ( You may delete this anytime :-) -->
	<div id="colour-variations">
		<a class="option-toggle"><i class="icon-gear"></i></a>
		<h3>Preset Colors</h3>
		<ul>
			<li><a href="javascript: void(0);" data-theme="style"></a></li>
			<li><a href="javascript: void(0);" data-theme="red"></a></li>
			<li><a href="javascript: void(0);" data-theme="turquoise"></a></li>
			<li><a href="javascript: void(0);" data-theme="blue"></a></li>
			<li><a href="javascript: void(0);" data-theme="orange"></a></li>
			<li><a href="javascript: void(0);" data-theme="yellow"></a></li>
			<li><a href="javascript: void(0);" data-theme="pink"></a></li>
			<li><a href="javascript: void(0);" data-theme="purple"></a></li>
		</ul>
		<a href="#" data-layout="boxed">Boxed</a>
		<a href="#" data-layout="wide">Wide</a>
	</div>
	<!-- End demo purposes only -->

	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>

	<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
	<script src="js/jquery.style.switcher.js"></script>
	<script>
		$(function(){
			$('#colour-variations ul').styleSwitcher({
				defaultThemeId: 'theme-switch',
				hasPreview: false,
				cookie: {
		          	expires: 30,
		          	isManagingLoad: true
		      	}
			});	
			$('.option-toggle').click(function() {
				$('#colour-variations').toggleClass('sleep');
			});
		});
	</script>
	<!-- End demo purposes only -->

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	<!-- 
	INFO:
	jQuery Cookie for Demo Purposes Only. 
	The code below is to toggle the layout to boxed or wide 
	-->
	<script src="js/jquery.cookie.js"></script>
	<script>
		$(function(){

			if ( $.cookie('layoutCookie') != '' ) {
				$('body').addClass($.cookie('layoutCookie'));
			}

			$('a[data-layout="boxed"]').click(function(event){
				event.preventDefault();
				$.cookie('layoutCookie', 'boxed', { expires: 7, path: '/'});
				$('body').addClass($.cookie('layoutCookie')); // the value is boxed.
			});

			$('a[data-layout="wide"]').click(function(event){
				event.preventDefault();
				$('body').removeClass($.cookie('layoutCookie')); // the value is boxed.
				$.removeCookie('layoutCookie', { path: '/' }); // remove the value of our cookie 'layoutCookie'
			});
		});
	</script>

	</body>
</html>


