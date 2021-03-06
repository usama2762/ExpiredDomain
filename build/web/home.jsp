<%-- 
    Document   : home
    Created on : Aug 10, 2016, 3:16:27 PM
    Author     : Usama Jamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String name = (String) session.getAttribute("username");%>

<%@page import="java.util.ArrayList"%>
<%@page import="controller.domains"%>
<jsp:useBean id="obj" class="model.domainsModel"/> 
<%@page import="java.util.*"%>
<% String st = "Hi! " + name; %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Expire-Domains</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
        <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
        <meta name="author" content="FREEHTML5.CO" />



        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

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
        <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <!-- Search  -->
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" href="css/table.css">


        
        

 
        <link rel="stylesheet" href="css/style.css">

        <link rel="stylesheet" id="theme-switch" href="css/style.css">
      


        <style>
           
           
            
        </style>
   
        <script src="js/modernizr-2.6.2.min.js"></script>
       

    </head>


   
    <body>

        <!-- Loader -->
        <div class="fh5co-loader"></div>

        <div id="fh5co-page">
            <section id="fh5co-header">
                <div class="container">
                    <nav role="navigation">
                        <ul class="pull-left left-menu">
                            <li><a href="about.jsp">About</a></li>
                            <li><a href="domains.jsp">Domains</a></li>
                            <li><a href="pricing.jsp">Pricing</a></li>
                            <%if(name!=null){%>
                            <li><a href="mydomains.jsp">My Domains</a></li>
                            <%}%>
                        </ul>
                        <h1 id="fh5co-logo"><a href="home.jsp">Home<span>.</span></a></h1>
                        <%if (name == null) {%>
                        <ul class="pull-right right-menu">
                            <li><a href="login.jsp">Login</a></li>
                            <li class="fh5co-cta-btn"><a href="signup.jsp">Sign up</a></li>
                        </ul>
                        <%} else {%>
                        <ul class="pull-right right-menu">
                            <li><a href="logout.jsp">LogOut</a></li>
                            <li class="fh5co-cta-btn"><a href="#">Hi! <%out.println(name);%></li>
                        </ul>
                        <%}%>
                    </nav>
                </div>
                </br>
                
            </section>
            <!-- #fh5co-header -->
            

            <section id="fh5co-hero" class="js-fullheight" style="background-image: url(images/hero_bg.jpg);" data-next="yes">
                <div class="fh5co-overlay"></div>
                <div class="container">
                    <div class="fh5co-intro js-fullheight">
                        <div class="fh5co-intro-text">
                            <!-- 
                                    INFO:
                                    Change the class to 'fh5co-right-position' or 'fh5co-center-position' to change the layout position
                                    Example:
                                    <div class="fh5co-right-position">
                            -->
                            <div class="fh5co-left-position">
                                <h2 class="animate-box">Buy Expired Domain at lowest Prices!</h2>
                                <p class="animate-box"> <a href="login.jsp" class="btn btn-primary">Browse Expired Domains</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="fh5co-learn-more animate-box">
                    <a href="#" class="scroll-btn">
                        <span class="text">Explore more about us</span>
                        <span class="arrow"><i class="icon-chevron-down"></i></span>
                    </a>
                </div>
            </section>
            <!-- END #fh5co-hero -->


            <section id="fh5co-projects">
                <div class="container">
                    <div class="row row-bottom-padded-md">
                        <div class="col-md-6 col-md-offset-3 text-center">
                            <h2 class="fh5co-lead animate-box">Our Products</h2>
                            <p class="fh5co-sub-lead animate-box">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_1.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_1.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>Beautiful Sunrise</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_2.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_2.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>Cute Little Dog</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_3.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_3.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>A Wooden Bridge</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_4.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_4.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>Puppy & I in the Farm</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_5.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_5.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>A Big Wave of the Blue Sea</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col-sm-6 col-xxs-12 animate-box">
                            <a href="images/img_6.jpg" class="fh5co-project-item image-popup">
                                <img src="images/img_6.jpg" alt="Image" class="img-responsive">
                                <div class="fh5co-text">
                                    <h2>Foggy Pine Trees</h2>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
                                </div>
                            </a>
                        </div>


                    </div>
                </div>
            </section>
            <!-- END #fh5co-projects -->



            <!-- END #fh5co-features -->



            <!-- END #fh5co-features-2 -->

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
                                    <a href="mailto:info@freehtml5.co">usamajamil77@gmail.com</a> <br>
                                    902-C C Block, <br>
                                    Faisal Town Lahore Pakistan <br>
                                    <a href="tel:+123456789">+92 344 725 3596</a>
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
            </footer>
            <!-- END #fh5co-footer -->
        </div>
        <!-- END #fh5co-page -->




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
        <script src="js/jquery.dataTables.min.js" ></script> 


        <!-- Main JS (Do not remove) -->
        <script src="js/main.js"></script>

        <!-- 
        INFO:
        jQuery Cookie for Demo Purposes Only. 
        The code below is to toggle the layout to boxed or wide 
        -->
        <script src="js/jquery.cookie.js"></script>
        <script>
            $(function () {

                if ($.cookie('layoutCookie') != '') {
                    $('body').addClass($.cookie('layoutCookie'));
                }

                $('a[data-layout="boxed"]').click(function (event) {
                    event.preventDefault();
                    $.cookie('layoutCookie', 'boxed', {expires: 7, path: '/'});
                    $('body').addClass($.cookie('layoutCookie')); // the value is boxed.
                });

                $('a[data-layout="wide"]').click(function (event) {
                    event.preventDefault();
                    $('body').removeClass($.cookie('layoutCookie')); // the value is boxed.
                    $.removeCookie('layoutCookie', {path: '/'}); // remove the value of our cookie 'layoutCookie'
                });

                 $('#example').DataTable();
            });
        </script>


    </body>
</html>
