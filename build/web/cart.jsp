<%-- 
    Document   : cart
    Created on : Aug 10, 2016, 3:16:27 PM
    Author     : Usama Jamil
--%>

<%@page import="javax.mail.Session"%>
<%@page import="controller.edomains"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String name = (String) session.getAttribute("username");%>
<% String stm  = (String) request.getParameter("id");%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.domains"%>
<jsp:useBean id="obj1" class="model.edomainsmodel"/>
<jsp:useBean id="obj" class="model.getuserdomain"/>
<%@page import="java.util.*"%>
<% String st = "Hi! " + name; %>
<% boolean sess=false;
 if(name!=null)
 {
     sess=true;
 }
 else
 {
     sess=false;
 }
%>
<%
    String[] parts = stm.split(",");
    int len=parts.length;
    int i=0;
    List<edomains> domainlist=new ArrayList();
    while(i<len)
    {
        domainlist.add(obj.getDomainbyID(Integer.parseInt(parts[i++].trim())));
    }
    float total=0;
    i=0;
    while(i<len)
    {
        total=total + domainlist.get(i++).price;
    }
%>
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

        <!-- 
        Default Theme Style 
        You can change the style.css (default color purple) to one of these styles
        
        

        -->
        <link rel="stylesheet" href="css/style.css">

        <!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->

        <!-- End demo purposes only -->


        <style>
           #simple { font-size: 1.2em; }
   img:hover {
       cursor: pointer;
   }
   input[type=submit] {
       display: none;
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
        <div id="demo"></div>
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
            
             <div class="container" align="right">
                    
                            <div class="fh5co-left-position">
                                <p class="animate-box"> <a href="#" id="btnCart" class="btn btn-primary">Pay <%=total%>$</a></p>
                            </div>
            </div>
            <!-- END #fh5co-subscribe -->
            <%
            String age=request.getParameter("age");
            String gender=request.getParameter("gender");
            String type=request.getParameter("sortby");
            
        
           int j=0;

            %>
            <div class="container" id = "domains">
<table id="example" class="display" cellspacing="0" width="100%">
        <thead  id="simple">
            <tr>
                <th>Id</th>
                <th>url</th>
                <th>Linked</th>
                <th>Alexa</th>
                <th>DA</th>
                <th>MR</th>
                <th>ML</th>
                <th>FB</th>
                <th>Google</th>
                <th>Linked In</th>
                <th>Pinterest</th>
                <th>WayBack</th>
                <th>Dmoz</th>
                <th>Price</th>
            </tr>
        </thead>
      <tfoot id="simple">
            <tr>
                 <th>Id</th>
                <th>url</th>
                <th>Linked</th>
                <th>Alexa</th>
                <th>DA</th>
                <th>MR</th>
                <th>ML</th>
                <th>FB</th>
                <th>Google</th>
                <th>Linked In</th>
                <th>Pinterest</th>
                <th>WayBack</th>
                <th>Dmoz</th>
                <th>Price</th>
            </tr>
        </tfoot>
        <tbody id="simple">

            <% j=0;
            while(j<domainlist.size())
           {
            %>
        <tr>
            <td data-search="<%=domainlist.get(j).id %>">
               
                    <% 
                    out.println( domainlist.get(j).id ); 
                    %>
               
            </td>
            <td data-search="<%=domainlist.get(j).url %>">

                    <%out.println( domainlist.get(j).url );%>

            </td>
            <td data-search="<%=domainlist.get(j).linked %>">

                    <% 
                    out.println( domainlist.get(j).alexa ); 
                    %>
            </td>
            <td>
                    <% 
                    out.println( domainlist.get(j).DA ); 
                    %>
            </td>
            <td>
                    <% 
                    out.println( domainlist.get(j).MR ); 
                    %>
            </td>
            <td>
                    <% 
                    out.println( domainlist.get(j).ML ); 
                    %>
            </td>
            <td>
                    <% 
                    out.println( domainlist.get(j).FB ); 
                    %>
            </td>
            <td>
                    <% 
                    out.println( domainlist.get(j).google ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).linkedin %>">
                    <% 
                    out.println( domainlist.get(j).linkedin ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).pinterest %>">
                    <% 
                    out.println( domainlist.get(j).pinterest ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).pinterest %>">
                    <% 
                    out.println( domainlist.get(j).pinterest ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).wayback %>">
                    <% 
                    out.println( domainlist.get(j).wayback ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).Dmoz %>">
                    <% 
                    out.println( domainlist.get(j).Dmoz ); 
                    %>
            </td>
            <td data-search="<%=domainlist.get(j).price %>">
                    <% 
                    out.println( domainlist.get(j).price ); 
                    %>
            </td>
            </tr>
            <% j++;} %>
                    
            

            
        </tbody>
    </table>                
            </div>


          
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
            var arr = [];
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
